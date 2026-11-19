package com.tdtech.devicemanager;

import android.mdm.IMdmManager;
import android.os.ServiceManager;
import android.util.Log;
import com.huawei.hem.CompilerOutline;

/* loaded from: classes.dex */
public final class EmmUtil {
    public static final String TAG = "EmmUtil";
    public static IMdmManager mMdmManager;

    public static IMdmManager mdmIF() {
        if (mMdmManager == null) {
            mMdmManager = IMdmManager.Stub.asInterface(ServiceManager.getService("mdm"));
            StringBuilder sbM1765j = CompilerOutline.m1765j("mMdmManager=");
            sbM1765j.append(mMdmManager);
            Log.v(TAG, sbM1765j.toString());
        }
        return mMdmManager;
    }
}
