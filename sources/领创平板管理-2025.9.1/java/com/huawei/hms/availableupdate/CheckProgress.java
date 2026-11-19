package com.huawei.hms.availableupdate;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import com.huawei.hms.utils.ResourceLoaderUtil;

/* compiled from: CheckProgress.java */
/* renamed from: com.huawei.hms.availableupdate.q */
/* loaded from: classes.dex */
public class CheckProgress extends AbstractC1510o {
    @Override // com.huawei.hms.availableupdate.AbstractC1510o
    /* renamed from: g */
    public AlertDialog mo3269g() {
        ProgressDialog progressDialog = new ProgressDialog(m3347e(), m3348f());
        progressDialog.setMessage(ResourceLoaderUtil.getString("hms_checking"));
        progressDialog.setCanceledOnTouchOutside(false);
        return progressDialog;
    }
}
