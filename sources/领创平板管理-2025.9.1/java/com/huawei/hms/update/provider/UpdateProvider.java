package com.huawei.hms.update.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.alibaba.fastjson.asm.Label;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.availableupdate.ContentUriHelper;
import java.io.File;

/* loaded from: classes.dex */
public class UpdateProvider extends ContentProvider {
    public static final String AUTHORITIES_SUFFIX = ".hms.update.provider";

    /* renamed from: a */
    public static final String[] f4580a = {"_display_name", "_size"};

    /* renamed from: b */
    public static ContentUriHelper f4581b = new ContentUriHelper();

    /* renamed from: a */
    public static int m3476a(String str) {
        if ("r".equals(str)) {
            return Label.FORWARD_REFERENCE_TYPE_SHORT;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException(CompilerOutline.m1760e("Invalid mode: ", str));
    }

    public static File getLocalFile(Context context, String str) {
        f4581b.m3328a(context.getApplicationContext());
        return f4581b.m3326a(str);
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        f4581b.m3328a(context.getApplicationContext());
        return f4581b.m3324a(file, str);
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        f4581b.m3328a(getContext().getApplicationContext());
        return f4581b.m3325a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        if (getContext() == null) {
            return "application/octet-stream";
        }
        f4581b.m3328a(getContext().getApplicationContext());
        String name = f4581b.m3325a(uri).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(iLastIndexOf + 1));
            if (!TextUtils.isEmpty(mimeTypeFromExtension)) {
                return mimeTypeFromExtension;
            }
        }
        return "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        f4581b.m3328a(getContext().getApplicationContext());
        return ParcelFileDescriptor.open(f4581b.m3325a(uri), m3476a(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        f4581b.m3328a(getContext().getApplicationContext());
        File fileM3325a = f4581b.m3325a(uri);
        if (strArr == null) {
            strArr = f4580a;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i2 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i2] = "_display_name";
                i = i2 + 1;
                objArr[i2] = fileM3325a.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i2] = "_size";
                i = i2 + 1;
                objArr[i2] = Long.valueOf(fileM3325a.length());
            }
            i2 = i;
        }
        String[] strArrM3478a = m3478a(strArr3, i2);
        Object[] objArrM3477a = m3477a(objArr, i2);
        MatrixCursor matrixCursor = new MatrixCursor(strArrM3478a, 1);
        matrixCursor.addRow(objArrM3477a);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    /* renamed from: a */
    public static String[] m3478a(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    /* renamed from: a */
    public static Object[] m3477a(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }
}
