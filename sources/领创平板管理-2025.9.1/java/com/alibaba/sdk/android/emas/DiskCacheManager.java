package com.alibaba.sdk.android.emas;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.sdk.android.tbrest.utils.AppUtils;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import com.alibaba.sdk.android.tbrest.utils.MD5Utils;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: DiskCacheManager.java */
/* renamed from: com.alibaba.sdk.android.emas.e */
/* loaded from: classes.dex */
public class DiskCacheManager implements Cache<EmasLog> {

    /* renamed from: a */
    public long f935a;

    /* renamed from: a */
    public final String f936a;

    /* renamed from: a */
    public Set<String> f937a;

    /* renamed from: b */
    public final String f938b;
    public int diskCacheLimitCapacity;
    public int diskCacheLimitCount;

    public DiskCacheManager(Context context, String str, String str2, String str3) {
        this.f938b = str2;
        String strM1761f = CompilerOutline.m1761f(str, "_", str2);
        str3 = TextUtils.isEmpty(str3) ? "common" : str3;
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir());
        sb.append(File.separator);
        sb.append("emas-rest-log");
        sb.append(File.separator);
        sb.append(strM1761f);
        this.f936a = CompilerOutline.m1762g(sb, File.separator, str3);
        File file = new File(this.f936a);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    /* renamed from: a */
    public void m629a(int i, int i2, int i3) {
        this.diskCacheLimitCount = i;
        this.diskCacheLimitCapacity = i2;
        this.f935a = i3 * Constants.CLIENT_FLUSH_INTERVAL;
    }

    /* renamed from: b */
    public synchronized void m632b(EmasLog c0527f) {
        if (this.f937a != null && !this.f937a.isEmpty()) {
            if (TextUtils.isEmpty(c0527f.getLocation())) {
                return;
            }
            this.f937a.remove(c0527f.getLocation());
        }
    }

    @Override // com.alibaba.sdk.android.emas.Cache
    public synchronized void clear() {
        File file = new File(this.f936a);
        if (file.exists()) {
            if (!file.isDirectory()) {
                file.delete();
                return;
            }
            List<File> listM626a = m626a(file, new ArrayList());
            LogUtil.m996d("DiskCacheManager num: " + listM626a.size());
            if (listM626a.size() > 0) {
                Collections.sort(listM626a, new Comparator<File>() { // from class: com.alibaba.sdk.android.emas.e.2
                    @Override // java.util.Comparator
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        if (file2 == null && file3 == null) {
                            return 0;
                        }
                        if (file2 == null) {
                            return -1;
                        }
                        if (file3 == null) {
                            return 1;
                        }
                        if (file2 == file3) {
                            return 0;
                        }
                        if (file2.lastModified() < file3.lastModified()) {
                            return -1;
                        }
                        return file2.lastModified() == file3.lastModified() ? 0 : 1;
                    }
                });
                long jCurrentTimeMillis = System.currentTimeMillis();
                long length = 0;
                Iterator<File> it = listM626a.iterator();
                int i = 0;
                int i2 = 0;
                while (it.hasNext()) {
                    File next = it.next();
                    if (jCurrentTimeMillis - next.lastModified() >= this.f935a) {
                        it.remove();
                        next.delete();
                    } else {
                        i2++;
                        length += next.length();
                    }
                }
                if (i2 > this.diskCacheLimitCount || length > this.diskCacheLimitCapacity) {
                    LogUtil.m996d("DiskCacheManager exceed limit. start clear.");
                    int i3 = (int) (this.diskCacheLimitCount * 0.8d);
                    int i4 = (int) (this.diskCacheLimitCapacity * 0.8d);
                    while (true) {
                        if ((i2 <= i3 && length <= i4) || i >= listM626a.size()) {
                            break;
                        }
                        File file2 = listM626a.get(i);
                        if (file2.delete()) {
                            i2--;
                            length -= file2.length();
                        }
                        i++;
                    }
                }
            }
        }
    }

    @Override // com.alibaba.sdk.android.emas.Cache
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void add(EmasLog c0527f) {
        if (c0527f != null) {
            if (c0527f.m635a() != CacheType.DISK_CACHE) {
                List<EmasSingleLog> listM636a = c0527f.m636a();
                if (listM636a != null && !listM636a.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i != listM636a.size(); i++) {
                        JSONObject jSONObjectM638a = listM636a.get(i).m638a();
                        if (jSONObjectM638a != null) {
                            jSONArray.put(jSONObjectM638a);
                        }
                    }
                    String strAesEncrypt = EncrytUtils.aesEncrypt(this.f938b, jSONArray.toString());
                    if (!TextUtils.isEmpty(strAesEncrypt)) {
                        LogUtil.m996d("DiskCacheManager putting into cache.");
                        File file = new File(this.f936a, MD5Utils.getMd5Hex(strAesEncrypt.getBytes(Charset.forName("UTF-8"))) + "_" + System.currentTimeMillis() + ".log");
                        if (file.exists()) {
                            file.delete();
                        }
                        m627a(file, strAesEncrypt);
                        LogUtil.m996d("DiskCacheManager success put into " + file.getAbsolutePath());
                    } else {
                        LogUtil.m996d("DiskCacheManager failed put into cache.");
                    }
                }
                return;
            }
        }
        if (c0527f == null) {
            LogUtil.m996d("DiskCacheManager add failed. data is null");
        } else {
            LogUtil.m996d("DiskCacheManager add failed. cache type: " + c0527f.m635a().name());
        }
    }

    @Override // com.alibaba.sdk.android.emas.Cache
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized EmasLog get() {
        File file;
        File file2 = new File(this.f936a);
        if (!file2.exists()) {
            return null;
        }
        if (!file2.isDirectory()) {
            file2.delete();
            return null;
        }
        List<File> listM626a = m626a(file2, new ArrayList());
        if (listM626a.size() <= 0) {
            return null;
        }
        Collections.sort(listM626a, new Comparator<File>() { // from class: com.alibaba.sdk.android.emas.e.1
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(File file3, File file4) {
                if (file3 == null && file4 == null) {
                    return 0;
                }
                if (file3 == null) {
                    return -1;
                }
                if (file4 == null) {
                    return 1;
                }
                if (file3 == file4) {
                    return 0;
                }
                if (file3.lastModified() < file4.lastModified()) {
                    return -1;
                }
                return file3.lastModified() == file4.lastModified() ? 0 : 1;
            }
        });
        if (this.f937a == null || this.f937a.isEmpty()) {
            file = listM626a.get(0);
        } else {
            int i = 0;
            while (true) {
                if (i == listM626a.size()) {
                    file = null;
                    break;
                }
                if (!this.f937a.contains(listM626a.get(i).getAbsolutePath())) {
                    file = listM626a.get(i);
                    break;
                }
                LogUtil.m996d("DiskCacheManager disk cache is in the Sending Queue. skip location: " + listM626a.get(i).getAbsolutePath());
                i++;
            }
        }
        if (file == null) {
            return null;
        }
        String strAesDecrypt = EncrytUtils.aesDecrypt(this.f938b, m625a(file));
        if (TextUtils.isEmpty(strAesDecrypt)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(strAesDecrypt);
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 != jSONArray.length(); i2++) {
                EmasSingleLog c0528gM637a = EmasSingleLog.m637a(jSONArray.getJSONObject(i2));
                if (c0528gM637a != null) {
                    arrayList.add(c0528gM637a);
                }
            }
            if (this.f937a == null) {
                this.f937a = new HashSet();
            }
            this.f937a.add(file.getAbsolutePath());
            return new EmasLog(arrayList, CacheType.DISK_CACHE, file.getAbsolutePath());
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.alibaba.sdk.android.emas.Cache
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized boolean remove(EmasLog c0527f) {
        if (c0527f != null) {
            if (c0527f.m635a() == CacheType.DISK_CACHE && !TextUtils.isEmpty(c0527f.getLocation())) {
                LogUtil.m996d("DiskCacheManager removing. cache type: " + c0527f.m635a().name());
                if (this.f937a != null) {
                    this.f937a.remove(c0527f.getLocation());
                }
                File file = new File(c0527f.getLocation());
                if (!file.exists()) {
                    return false;
                }
                return file.delete();
            }
        }
        if (c0527f == null) {
            LogUtil.m996d("DiskCacheManager remove failed. data is null");
        } else {
            LogUtil.m996d("DiskCacheManager remove failed. cache type: " + c0527f.m635a().name());
        }
        return false;
    }

    /* renamed from: a */
    private List<File> m626a(File file, List<File> list) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    m626a(file2, list);
                } else if (!list.contains(file2)) {
                    list.add(file2);
                }
            }
        }
        return list;
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0043: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:25:0x0043 */
    /* renamed from: a */
    private String m625a(File file) throws Throwable {
        BufferedInputStream bufferedInputStream;
        Closeable closeable;
        StringBuilder sb = new StringBuilder();
        byte[] bArr = new byte[4096];
        Closeable closeable2 = null;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                while (true) {
                    try {
                        int i = bufferedInputStream.read(bArr);
                        if (i != -1) {
                            sb.append(new String(bArr, 0, i));
                        } else {
                            String string = sb.toString();
                            AppUtils.closeQuietly(bufferedInputStream);
                            return string;
                        }
                    } catch (FileNotFoundException e) {
                        e = e;
                        e.printStackTrace();
                        AppUtils.closeQuietly(bufferedInputStream);
                        return null;
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                        AppUtils.closeQuietly(bufferedInputStream);
                        return null;
                    }
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                AppUtils.closeQuietly(closeable2);
                throw th;
            }
        } catch (FileNotFoundException e3) {
            e = e3;
            bufferedInputStream = null;
        } catch (IOException e4) {
            e = e4;
            bufferedInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            AppUtils.closeQuietly(closeable2);
            throw th;
        }
    }

    /* renamed from: a */
    private void m627a(File file, String str) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e) {
            e = e;
        } catch (UnsupportedEncodingException e2) {
            e = e2;
        } catch (IOException e3) {
            e = e3;
        }
        try {
            bufferedOutputStream.write(str.getBytes("utf-8"));
            AppUtils.closeQuietly(bufferedOutputStream);
        } catch (FileNotFoundException e4) {
            e = e4;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            AppUtils.closeQuietly(bufferedOutputStream2);
        } catch (UnsupportedEncodingException e5) {
            e = e5;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            AppUtils.closeQuietly(bufferedOutputStream2);
        } catch (IOException e6) {
            e = e6;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            AppUtils.closeQuietly(bufferedOutputStream2);
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            AppUtils.closeQuietly(bufferedOutputStream2);
            throw th;
        }
    }
}
