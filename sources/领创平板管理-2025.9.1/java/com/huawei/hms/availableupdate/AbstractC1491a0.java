package com.huawei.hms.availableupdate;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.huawei.hms.utils.ResourceLoaderUtil;

/* compiled from: PromptDialogs.java */
/* renamed from: com.huawei.hms.availableupdate.a0 */
/* loaded from: classes.dex */
public abstract class AbstractC1491a0 extends AbstractC1510o {

    /* compiled from: PromptDialogs.java */
    /* renamed from: com.huawei.hms.availableupdate.a0$a */
    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AbstractC1491a0.this.m3346d();
        }
    }

    public AbstractC1491a0() {
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1510o
    /* renamed from: g */
    public AlertDialog mo3269g() {
        AlertDialog.Builder builder = new AlertDialog.Builder(m3347e(), m3348f());
        builder.setMessage(mo3270h());
        builder.setPositiveButton(m3271i(), new a());
        return builder.create();
    }

    /* renamed from: h */
    public abstract int mo3270h();

    /* renamed from: i */
    public int m3271i() {
        return ResourceLoaderUtil.getStringId("hms_confirm");
    }
}
