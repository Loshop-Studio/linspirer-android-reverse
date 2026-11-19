package com.huawei.updatesdk.fileprovider;

import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.fileprovider.b */
/* loaded from: classes.dex */
public class C1646b implements InterfaceC1645a {

    /* renamed from: a */
    public final String f4743a;

    /* renamed from: b */
    public final HashMap<String, File> f4744b = new HashMap<>();

    public C1646b(String str) {
        this.f4743a = str;
    }

    @Override // com.huawei.updatesdk.fileprovider.InterfaceC1645a
    /* renamed from: a */
    public Uri mo3798a(File file) throws IOException {
        try {
            String canonicalPath = file.getCanonicalPath();
            Map.Entry<String, File> entry = null;
            for (Map.Entry<String, File> entry2 : this.f4744b.entrySet()) {
                String path = entry2.getValue().getPath();
                if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                    entry = entry2;
                }
            }
            if (entry == null) {
                throw new IllegalArgumentException("wisedist: Failed to find configured root that contains");
            }
            String path2 = entry.getValue().getPath();
            boolean zEndsWith = path2.endsWith(GrsManager.SEPARATOR);
            int length = path2.length();
            if (!zEndsWith) {
                length++;
            }
            return new Uri.Builder().scheme("content").authority(this.f4743a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(canonicalPath.substring(length), GrsManager.SEPARATOR)).build();
        } catch (Exception unused) {
            throw new IllegalArgumentException("Failed to resolve canonical path for wisedist");
        }
    }

    @Override // com.huawei.updatesdk.fileprovider.InterfaceC1645a
    /* renamed from: a */
    public File mo3799a(Uri uri) throws IOException {
        try {
            String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            String strDecode = Uri.decode(encodedPath.substring(1, iIndexOf));
            String strDecode2 = Uri.decode(encodedPath.substring(iIndexOf + 1));
            File file = this.f4744b.get(strDecode);
            if (file == null) {
                throw new IllegalArgumentException("wisedist: Unable to find configured root for");
            }
            if (TextUtils.isEmpty(strDecode2) || strDecode2.contains("../") || strDecode2.contains("..") || strDecode2.contains("%00") || strDecode2.contains(".\\.\\") || strDecode2.contains("./")) {
                throw new IllegalArgumentException("wisedist: Not a standard path");
            }
            try {
                File canonicalFile = new File(file, strDecode2).getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getPath())) {
                    return canonicalFile;
                }
                throw new SecurityException("wisedist: Resolved path jumped beyond configured root");
            } catch (IOException unused) {
                throw new IllegalArgumentException("wisedist: Failed to resolve canonical path for");
            }
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("UpdateSDKFileProvider error: ");
            sbM1765j.append(e.toString());
            throw new IllegalArgumentException(sbM1765j.toString());
        }
    }

    @Override // com.huawei.updatesdk.fileprovider.InterfaceC1645a
    /* renamed from: a */
    public void mo3800a(String str, File file) throws IOException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("wisedist Name must not be empty");
        }
        try {
            this.f4744b.put(str, file.getCanonicalFile());
        } catch (Exception unused) {
            throw new IllegalArgumentException("Failed to resolve canonical path for root");
        }
    }
}
