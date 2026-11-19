package com.huawei.hms.availableupdate;

import android.content.Context;
import android.net.Uri;
import com.huawei.hms.framework.network.grs.GrsManager;
import com.huawei.hms.utils.Checker;
import java.io.File;
import java.io.IOException;

/* compiled from: ContentUriHelper.java */
/* renamed from: com.huawei.hms.availableupdate.l */
/* loaded from: classes.dex */
public class ContentUriHelper {

    /* renamed from: a */
    public Context f4485a;

    /* renamed from: b */
    public String f4486b;

    /* renamed from: a */
    public static File m3322a(File file) {
        if (file == null) {
            return null;
        }
        try {
            return file.getCanonicalFile();
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static String m3323b(File file) {
        if (file == null) {
            return null;
        }
        try {
            return file.getCanonicalPath();
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: c */
    public final String m3330c(String str) {
        int iIndexOf;
        String strM3323b;
        String strM3327a = m3327a();
        if (strM3327a != null && (iIndexOf = str.indexOf(47, 1)) >= 0 && "ContentUriHelper".equals(Uri.decode(str.substring(1, iIndexOf))) && (strM3323b = m3323b(new File(strM3327a, Uri.decode(str.substring(iIndexOf + 1))))) != null && strM3323b.startsWith(strM3327a)) {
            return strM3323b;
        }
        return null;
    }

    /* renamed from: a */
    public void m3328a(Context context) {
        if (this.f4485a == null) {
            Checker.checkNonNull(context, "context must not be null.");
            this.f4485a = context;
        }
    }

    /* renamed from: b */
    public final String m3329b(String str) {
        String strM3327a = m3327a();
        if (strM3327a == null || !str.startsWith(strM3327a)) {
            return null;
        }
        return Uri.encode("ContentUriHelper") + '/' + str.substring(strM3327a.endsWith(GrsManager.SEPARATOR) ? strM3327a.length() : strM3327a.length() + 1);
    }

    /* renamed from: a */
    public File m3326a(String str) {
        String strM3327a = m3327a();
        if (strM3327a == null) {
            return null;
        }
        return m3322a(new File(strM3327a, str));
    }

    /* renamed from: a */
    public final String m3327a() {
        String str;
        Context context = (Context) Checker.assertNonNull(this.f4485a, "mContext is null, call setContext first.");
        synchronized (this) {
            if (this.f4486b == null) {
                if (context.getExternalCacheDir() != null) {
                    this.f4486b = m3323b(context.getExternalCacheDir());
                } else {
                    this.f4486b = m3323b(context.getFilesDir());
                }
            }
            str = this.f4486b;
        }
        return str;
    }

    /* renamed from: a */
    public Uri m3324a(File file, String str) {
        String strM3329b;
        String strM3323b = m3323b(file);
        if (strM3323b == null || (strM3329b = m3329b(strM3323b)) == null) {
            return null;
        }
        return new Uri.Builder().scheme("content").authority(str).encodedPath(strM3329b).build();
    }

    /* renamed from: a */
    public File m3325a(Uri uri) {
        String strM3330c;
        String encodedPath = uri.getEncodedPath();
        if (encodedPath == null || (strM3330c = m3330c(encodedPath)) == null) {
            return null;
        }
        return m3322a(new File(strM3330c));
    }
}
