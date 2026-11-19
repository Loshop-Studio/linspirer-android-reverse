package com.huawei.hms.availableupdate;

import android.app.AlertDialog;
import android.content.DialogInterface;

/* compiled from: ConfirmDialogs.java */
/* renamed from: com.huawei.hms.availableupdate.s */
/* loaded from: classes.dex */
public abstract class AbstractC1514s extends AbstractC1510o {

    /* compiled from: ConfirmDialogs.java */
    /* renamed from: com.huawei.hms.availableupdate.s$a */
    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AbstractC1514s.this.m3346d();
        }
    }

    /* compiled from: ConfirmDialogs.java */
    /* renamed from: com.huawei.hms.availableupdate.s$b */
    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AbstractC1514s.this.m3342a();
        }
    }

    public AbstractC1514s() {
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1510o
    /* renamed from: g */
    public AlertDialog mo3269g() {
        AlertDialog.Builder builder = new AlertDialog.Builder(m3347e(), m3348f());
        builder.setMessage(mo3352h());
        builder.setPositiveButton(mo3354j(), new a());
        builder.setNegativeButton(mo3353i(), new b());
        return builder.create();
    }

    /* renamed from: h */
    public abstract int mo3352h();

    /* renamed from: i */
    public abstract int mo3353i();

    /* renamed from: j */
    public abstract int mo3354j();
}
