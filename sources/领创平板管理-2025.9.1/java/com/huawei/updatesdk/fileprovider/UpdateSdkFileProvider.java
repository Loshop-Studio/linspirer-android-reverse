package com.huawei.updatesdk.fileprovider;

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
import com.huawei.hms.framework.network.grs.GrsManager;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import java.io.File;

/* loaded from: classes.dex */
public class UpdateSdkFileProvider extends ContentProvider {
    public static final String AUTHORITIES_SUFFIX = ".updateSdk.fileProvider";
    public static final String[] COLUMNS = {"_display_name", "_size"};
    public static final String TAG = "UpdateSdkFileProvider";
    public static InterfaceC1645a mWStrategy;
    public String authority;

    public static File buildPath(File file, String... strArr) {
        for (String str : strArr) {
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    public static Object[] copyOf(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    public static String[] copyOf(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    public static synchronized InterfaceC1645a createWiseDistPathStrategy(Context context, String str) {
        if (mWStrategy == null) {
            mWStrategy = new C1646b(str);
            if (context.getFilesDir() != null) {
                mWStrategy.mo3800a("updatesdkapk", buildPath(context.getFilesDir(), GrsManager.SEPARATOR));
            }
        }
        return mWStrategy;
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        createWiseDistPathStrategy(context, str);
        return mWStrategy.mo3798a(file);
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("WiseDist Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("WiseDist Provider must grant uri permissions");
        }
        String str = providerInfo.authority;
        this.authority = str;
        createWiseDistPathStrategy(context, str);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String mimeTypeFromExtension;
        return (uri == null || TextUtils.isEmpty(uri.toString()) || !uri.toString().endsWith("apk") || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension("apk")) == null) ? "application/octet-stream" : mimeTypeFromExtension;
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
        if (uri == null || uri.getAuthority() == null || !uri.getAuthority().equals(this.authority)) {
            return null;
        }
        File fileMo3799a = mWStrategy.mo3799a(uri);
        if (fileMo3799a.getName().endsWith("apk")) {
            return ParcelFileDescriptor.open(fileMo3799a, Label.FORWARD_REFERENCE_TYPE_SHORT);
        }
        C1584a.m3516b(TAG, "can not open this file.");
        return null;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        File fileMo3799a = mWStrategy.mo3799a(uri);
        if (strArr == null) {
            strArr = COLUMNS;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i2 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i2] = "_display_name";
                i = i2 + 1;
                objArr[i2] = fileMo3799a.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i2] = "_size";
                i = i2 + 1;
                objArr[i2] = Long.valueOf(fileMo3799a.length());
            }
            i2 = i;
        }
        String[] strArrCopyOf = copyOf(strArr3, i2);
        Object[] objArrCopyOf = copyOf(objArr, i2);
        MatrixCursor matrixCursor = new MatrixCursor(strArrCopyOf, 1);
        matrixCursor.addRow(objArrCopyOf);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
