package com.huawei.hms.availableupdate;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.huawei.hms.utils.ResourceLoaderUtil;

/* compiled from: InstallConfirm.java */
/* renamed from: com.huawei.hms.availableupdate.y */
/* loaded from: classes.dex */
public class InstallConfirm extends UpdateAlertDialog {

    /* renamed from: c */
    public String f4506c = ResourceLoaderUtil.getString("hms_update_title");

    /* compiled from: InstallConfirm.java */
    /* renamed from: com.huawei.hms.availableupdate.y$a */
    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            InstallConfirm.this.m3346d();
        }
    }

    /* compiled from: InstallConfirm.java */
    /* renamed from: com.huawei.hms.availableupdate.y$b */
    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            InstallConfirm.this.m3342a();
        }
    }

    /* renamed from: a */
    public void m3360a(String str) {
        this.f4506c = str;
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1510o
    /* renamed from: g */
    public AlertDialog mo3269g() {
        int stringId = ResourceLoaderUtil.getStringId("hms_update_message_new");
        int stringId2 = ResourceLoaderUtil.getStringId("hms_install");
        AlertDialog.Builder builder = new AlertDialog.Builder(m3347e(), m3348f());
        builder.setMessage(m3347e().getString(stringId, new Object[]{this.f4506c}));
        builder.setPositiveButton(stringId2, new a());
        builder.setNegativeButton(ResourceLoaderUtil.getStringId("hms_cancel"), new b());
        return builder.create();
    }
}
