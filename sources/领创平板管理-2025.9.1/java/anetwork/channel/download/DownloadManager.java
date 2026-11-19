package anetwork.channel.download;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpHelper;
import anet.channel.util.StringUtils;
import anetwork.channel.Header;
import anetwork.channel.aidl.Connection;
import anetwork.channel.http.NetworkSdkSetting;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class DownloadManager {
    public static final int ERROR_DOWNLOAD_CANCELLED = -105;
    public static final int ERROR_EXCEPTION_HAPPEN = -104;
    public static final int ERROR_FILE_FOLDER_INVALID = -101;
    public static final int ERROR_FILE_RENAME_FAILED = -106;
    public static final int ERROR_IO_EXCEPTION = -103;
    public static final int ERROR_REQUEST_FAIL = -102;
    public static final int ERROR_URL_INVALID = -100;
    public static final String TAG = "anet.DownloadManager";

    /* renamed from: a */
    public SparseArray<RunnableC0449b> f688a;

    /* renamed from: b */
    public AtomicInteger f689b;

    /* renamed from: c */
    public ThreadPoolExecutor f690c;

    /* renamed from: d */
    public Context f691d;

    /* compiled from: Taobao */
    public interface DownloadListener {
        void onFail(int i, int i2, String str);

        void onProgress(int i, long j, long j2);

        void onSuccess(int i, String str);
    }

    /* compiled from: Taobao */
    /* renamed from: anetwork.channel.download.DownloadManager$a */
    public static class C0448a {

        /* renamed from: a */
        public static DownloadManager f692a = new DownloadManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public String m404b(String str) {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f691d.getExternalFilesDir(null));
        sb.append(GrsManager.SEPARATOR);
        sb.append("downloads");
        return C0948f6.m1762g(sb, GrsManager.SEPARATOR, str);
    }

    public static DownloadManager getInstance() {
        return C0448a.f692a;
    }

    public void cancel(int i) {
        synchronized (this.f688a) {
            RunnableC0449b runnableC0449b = this.f688a.get(i);
            if (runnableC0449b != null) {
                if (ALog.isPrintLog(2)) {
                    ALog.m340i(TAG, "try cancel task" + i + " url=" + runnableC0449b.f694b.toString(), null, new Object[0]);
                }
                this.f688a.remove(i);
                runnableC0449b.m411a();
            }
        }
    }

    public int enqueue(String str, String str2, DownloadListener downloadListener) {
        return enqueue(str, null, str2, downloadListener);
    }

    /* compiled from: Taobao */
    /* renamed from: anetwork.channel.download.DownloadManager$b */
    public class RunnableC0449b implements Runnable {

        /* renamed from: a */
        public final int f693a;

        /* renamed from: b */
        public final URL f694b;

        /* renamed from: d */
        public final String f696d;

        /* renamed from: e */
        public final CopyOnWriteArrayList<DownloadListener> f697e;

        /* renamed from: f */
        public final AtomicBoolean f698f = new AtomicBoolean(false);

        /* renamed from: g */
        public final AtomicBoolean f699g = new AtomicBoolean(false);

        /* renamed from: h */
        public volatile Connection f700h = null;

        /* renamed from: i */
        public boolean f701i;

        public RunnableC0449b(URL url, String str, String str2, DownloadListener downloadListener) {
            this.f701i = true;
            this.f693a = DownloadManager.this.f689b.getAndIncrement();
            this.f694b = url;
            str2 = TextUtils.isEmpty(str2) ? m406a(url) : str2;
            if (TextUtils.isEmpty(str)) {
                this.f696d = DownloadManager.this.m404b(str2);
            } else {
                if (str.endsWith(GrsManager.SEPARATOR)) {
                    this.f696d = C0948f6.m1760e(str, str2);
                } else {
                    this.f696d = str + '/' + str2;
                }
                if (str.startsWith("/data/user") || str.startsWith("/data/data")) {
                    this.f701i = false;
                }
            }
            CopyOnWriteArrayList<DownloadListener> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f697e = copyOnWriteArrayList;
            copyOnWriteArrayList.add(downloadListener);
        }

        /* renamed from: a */
        public boolean m412a(DownloadListener downloadListener) {
            if (this.f699g.get()) {
                return false;
            }
            this.f697e.add(downloadListener);
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:191:0x0266 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:196:0x025c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:198:0x026e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:202:0x0261 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:218:0x023d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:224:0x024a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:226:0x0238 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:237:0x0242 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 636
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: anetwork.channel.download.DownloadManager.RunnableC0449b.run():void");
        }

        /* renamed from: a */
        public void m411a() {
            this.f698f.set(true);
            m407a(-105, "download canceled.");
            if (this.f700h != null) {
                try {
                    this.f700h.cancel();
                } catch (RemoteException unused) {
                }
            }
        }

        /* renamed from: a */
        private void m409a(String str) {
            if (this.f699g.compareAndSet(false, true)) {
                Iterator<DownloadListener> it = this.f697e.iterator();
                while (it.hasNext()) {
                    it.next().onSuccess(this.f693a, str);
                }
            }
        }

        /* renamed from: a */
        private void m407a(int i, String str) {
            if (this.f699g.compareAndSet(false, true)) {
                Iterator<DownloadListener> it = this.f697e.iterator();
                while (it.hasNext()) {
                    it.next().onFail(this.f693a, i, str);
                }
            }
        }

        /* renamed from: a */
        private void m408a(long j, long j2) {
            if (this.f699g.get()) {
                return;
            }
            Iterator<DownloadListener> it = this.f697e.iterator();
            while (it.hasNext()) {
                it.next().onProgress(this.f693a, j, j2);
            }
        }

        /* renamed from: a */
        private long m405a(int i, Map<String, List<String>> map, long j) {
            int iLastIndexOf;
            try {
                if (i == 200) {
                    return Long.parseLong(HttpHelper.getSingleHeaderFieldByKey(map, HttpConstant.CONTENT_LENGTH));
                }
                if (i != 206) {
                    return 0L;
                }
                String singleHeaderFieldByKey = HttpHelper.getSingleHeaderFieldByKey(map, "Content-Range");
                long j2 = (singleHeaderFieldByKey == null || (iLastIndexOf = singleHeaderFieldByKey.lastIndexOf(47)) == -1) ? 0L : Long.parseLong(singleHeaderFieldByKey.substring(iLastIndexOf + 1));
                if (j2 == 0) {
                    try {
                        return Long.parseLong(HttpHelper.getSingleHeaderFieldByKey(map, HttpConstant.CONTENT_LENGTH)) + j;
                    } catch (Exception unused) {
                    }
                }
                return j2;
            } catch (Exception unused2) {
                return 0L;
            }
        }

        /* renamed from: a */
        private void m410a(List<Header> list) {
            if (list != null) {
                ListIterator<Header> listIterator = list.listIterator();
                while (listIterator.hasNext()) {
                    if ("Range".equalsIgnoreCase(listIterator.next().getName())) {
                        listIterator.remove();
                        return;
                    }
                }
            }
        }

        /* renamed from: a */
        private String m406a(URL url) {
            String path = url.getPath();
            int iLastIndexOf = path.lastIndexOf(47);
            String strSubstring = iLastIndexOf != -1 ? path.substring(iLastIndexOf + 1, path.length()) : null;
            if (!TextUtils.isEmpty(strSubstring)) {
                return strSubstring;
            }
            String strMd5ToHex = StringUtils.md5ToHex(url.toString());
            return strMd5ToHex == null ? url.getFile() : strMd5ToHex;
        }
    }

    public DownloadManager() {
        this.f688a = new SparseArray<>(6);
        this.f689b = new AtomicInteger(0);
        this.f690c = new ThreadPoolExecutor(2, 2, 30L, TimeUnit.SECONDS, new LinkedBlockingDeque());
        this.f691d = null;
        this.f691d = NetworkSdkSetting.getContext();
        this.f690c.allowCoreThreadTimeOut(true);
        m402a();
    }

    public int enqueue(String str, String str2, String str3, DownloadListener downloadListener) {
        int i = 0;
        if (ALog.isPrintLog(2)) {
            ALog.m340i(TAG, "enqueue", null, "folder", str2, "filename", str3, AgooConstants.OPEN_URL, str);
        }
        if (this.f691d == null) {
            ALog.m339e(TAG, "network sdk not initialized.", null, new Object[0]);
            return -1;
        }
        try {
            URL url = new URL(str);
            if (!TextUtils.isEmpty(str2) && !m403a(str2)) {
                ALog.m339e(TAG, "file folder invalid.", null, new Object[0]);
                if (downloadListener != null) {
                    downloadListener.onFail(-1, -101, "file folder path invalid");
                }
                return -1;
            }
            synchronized (this.f688a) {
                int size = this.f688a.size();
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    RunnableC0449b runnableC0449bValueAt = this.f688a.valueAt(i);
                    if (!url.equals(runnableC0449bValueAt.f694b)) {
                        i++;
                    } else if (runnableC0449bValueAt.m412a(downloadListener)) {
                        return runnableC0449bValueAt.f693a;
                    }
                }
                RunnableC0449b runnableC0449b = new RunnableC0449b(url, str2, str3, downloadListener);
                this.f688a.put(runnableC0449b.f693a, runnableC0449b);
                this.f690c.submit(runnableC0449b);
                return runnableC0449b.f693a;
            }
        } catch (MalformedURLException e) {
            ALog.m338e(TAG, "url invalid.", null, e, new Object[0]);
            if (downloadListener != null) {
                downloadListener.onFail(-1, -100, "url invalid");
            }
            return -1;
        }
    }

    /* renamed from: a */
    private void m402a() {
        if (this.f691d != null) {
            File file = new File(this.f691d.getExternalFilesDir(null), "downloads");
            if (file.exists()) {
                return;
            }
            file.mkdir();
        }
    }

    /* renamed from: a */
    private boolean m403a(String str) {
        if (this.f691d != null) {
            try {
                File file = new File(str);
                if (file.exists()) {
                    return true;
                }
                return file.mkdir();
            } catch (Exception unused) {
                ALog.m339e(TAG, "create folder failed", null, "folder", str);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public File m400a(String str, boolean z) {
        String strMd5ToHex = StringUtils.md5ToHex(str);
        if (strMd5ToHex != null) {
            str = strMd5ToHex;
        }
        if (z) {
            return new File(this.f691d.getExternalCacheDir(), str);
        }
        return new File(this.f691d.getCacheDir(), str);
    }
}
