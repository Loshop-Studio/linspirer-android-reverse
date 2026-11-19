package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.huawei.hms.support.log.HMSLog;

/* compiled from: AbstractDialog.java */
/* renamed from: com.huawei.hms.availableupdate.o */
/* loaded from: classes.dex */
public abstract class AbstractC1510o {

    /* renamed from: a */
    public AlertDialog f4497a;

    /* renamed from: b */
    public AbstractC1509n f4498b;

    /* compiled from: AbstractDialog.java */
    /* renamed from: com.huawei.hms.availableupdate.o$a */
    public class a implements DialogInterface.OnCancelListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractC1510o.this.m3345c();
        }
    }

    /* renamed from: a */
    public static int m3341a(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier("androidhwext:style/Theme.Emui", null, null);
    }

    /* renamed from: b */
    public void m3344b() {
        AlertDialog alertDialog = this.f4497a;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* renamed from: c */
    public void m3345c() {
        AbstractC1509n abstractC1509n = this.f4498b;
        if (abstractC1509n != null) {
            abstractC1509n.mo3307a(this);
        }
    }

    /* renamed from: d */
    public void m3346d() {
        AbstractC1509n abstractC1509n = this.f4498b;
        if (abstractC1509n != null) {
            abstractC1509n.mo3310b(this);
        }
    }

    /* renamed from: e */
    public Activity m3347e() {
        AbstractC1509n abstractC1509n = this.f4498b;
        if (abstractC1509n != null) {
            return abstractC1509n.m3338b();
        }
        return null;
    }

    /* renamed from: f */
    public int m3348f() {
        return m3341a(m3347e()) != 0 ? 0 : 3;
    }

    /* renamed from: g */
    public abstract AlertDialog mo3269g();

    /* renamed from: a */
    public void m3343a(AbstractC1509n abstractC1509n) {
        this.f4498b = abstractC1509n;
        if (m3347e() == null || m3347e().isFinishing()) {
            HMSLog.m3461e("AbstractDialog", "In show, The activity is null or finishing.");
            return;
        }
        AlertDialog alertDialogMo3269g = mo3269g();
        this.f4497a = alertDialogMo3269g;
        alertDialogMo3269g.setCanceledOnTouchOutside(false);
        this.f4497a.setOnCancelListener(new a());
        this.f4497a.show();
    }

    /* renamed from: a */
    public void m3342a() {
        AlertDialog alertDialog = this.f4497a;
        if (alertDialog != null) {
            alertDialog.cancel();
        }
    }
}
