package com.huawei.updatesdk.p048b.p059i;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.UpdateDeviceInfoUtil;
import com.huawei.updatesdk.p048b.p058h.EmuiSupportInfo;
import com.huawei.updatesdk.p048b.p058h.UpdateResourceLookup;

/* renamed from: com.huawei.updatesdk.b.i.a */
/* loaded from: classes.dex */
public class UpdateAlertDialogPresenter {

    /* renamed from: a */
    public UpdateDialogActions f4728a;

    /* renamed from: b */
    public Context f4729b;

    /* renamed from: c */
    public String f4730c;

    /* renamed from: d */
    public CharSequence f4731d;

    /* renamed from: e */
    public AlertDialog f4732e;

    /* renamed from: f */
    public AlertDialog.Builder f4733f;

    /* renamed from: g */
    public DialogInterface.OnShowListener f4734g;

    /* renamed from: h */
    public DialogInterface.OnDismissListener f4735h;

    /* renamed from: com.huawei.updatesdk.b.i.a$a */
    public class a implements DialogInterface.OnShowListener {

        /* renamed from: com.huawei.updatesdk.b.i.a$a$a, reason: collision with other inner class name */
        public class UpdateDialogButtonClick implements View.OnClickListener {
            public UpdateDialogButtonClick() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UpdateAlertDialogPresenter.this.f4728a != null) {
                    UpdateAlertDialogPresenter.this.f4728a.mo3796a();
                }
            }
        }

        /* renamed from: com.huawei.updatesdk.b.i.a$a$b */
        public class b implements View.OnClickListener {
            public b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UpdateAlertDialogPresenter.this.f4728a != null) {
                    UpdateAlertDialogPresenter.this.f4728a.mo3797b();
                }
            }
        }

        public a() {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            AlertDialog alertDialog = (AlertDialog) dialogInterface;
            alertDialog.getButton(-1).setOnClickListener(new UpdateDialogButtonClick());
            Button button = alertDialog.getButton(-2);
            if (button != null) {
                button.setOnClickListener(new b());
            }
            if (UpdateAlertDialogPresenter.this.f4734g != null) {
                UpdateAlertDialogPresenter.this.f4734g.onShow(dialogInterface);
            }
        }
    }

    /* renamed from: com.huawei.updatesdk.b.i.a$b */
    public class b implements DialogInterface.OnDismissListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (UpdateAlertDialogPresenter.this.f4735h != null) {
                UpdateAlertDialogPresenter.this.f4735h.onDismiss(dialogInterface);
            }
        }
    }

    /* renamed from: com.huawei.updatesdk.b.i.a$c */
    public enum c {
        CONFIRM,
        CANCEL
    }

    /* renamed from: com.huawei.updatesdk.b.i.a$d */
    public interface d {
        /* renamed from: a */
        void mo3795a();
    }

    public UpdateAlertDialogPresenter(Context context, String str, CharSequence charSequence) {
        this.f4729b = context;
        this.f4730c = str;
        this.f4731d = charSequence;
        this.f4733f = UpdateDeviceInfoUtil.m3578i() ? new AlertDialog.Builder(context) : ((context.getResources().getConfiguration().uiMode & 48) != 32 || Build.VERSION.SDK_INT < 29) ? new AlertDialog.Builder(context, R.style.Theme.DeviceDefault.Light.Dialog.Alert) : new AlertDialog.Builder(context, R.style.Theme.DeviceDefault.Dialog.Alert);
        this.f4733f.setTitle(this.f4730c);
        this.f4733f.setPositiveButton(UpdateResourceLookup.m3774c(context, "upsdk_third_app_dl_sure_cancel_download"), (DialogInterface.OnClickListener) null);
        this.f4733f.setNegativeButton(UpdateResourceLookup.m3774c(context, "upsdk_cancel"), (DialogInterface.OnClickListener) null);
        this.f4733f.setMessage(this.f4731d);
    }

    /* renamed from: a */
    public static UpdateAlertDialogPresenter m3780a(Context context, String str, CharSequence charSequence) {
        return new UpdateAlertDialogPresenter(context, str, charSequence);
    }

    /* renamed from: a */
    public void m3784a() {
        try {
            if (this.f4732e != null) {
                this.f4732e.dismiss();
                this.f4732e = null;
            }
        } catch (IllegalArgumentException unused) {
            UpdateSdkLog.m3501b("BaseAlertDialog", "dialog dismiss IllegalArgumentException");
        }
    }

    /* renamed from: a */
    public void m3785a(DialogInterface.OnDismissListener onDismissListener) {
        this.f4735h = onDismissListener;
    }

    /* renamed from: a */
    public void m3786a(DialogInterface.OnKeyListener onKeyListener) {
        AlertDialog alertDialog = this.f4732e;
        if (alertDialog != null) {
            alertDialog.setOnKeyListener(onKeyListener);
        }
    }

    /* renamed from: a */
    public void m3787a(DialogInterface.OnShowListener onShowListener) {
        this.f4734g = onShowListener;
    }

    /* renamed from: a */
    public void m3788a(View view) {
        ImageView imageView;
        if (this.f4733f != null) {
            if (EmuiSupportInfo.m3756d().m3757a() >= 17 && (imageView = (ImageView) view.findViewById(UpdateResourceLookup.m3770a(view.getContext(), "divider"))) != null) {
                imageView.setVisibility(8);
            }
            this.f4733f.setMessage((CharSequence) null);
            this.f4733f.setView(view);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0018 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0019  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3789a(com.huawei.updatesdk.p048b.p059i.UpdateAlertDialogPresenter.c r3, java.lang.String r4) {
        /*
            r2 = this;
            android.app.AlertDialog r0 = r2.f4732e
            if (r0 != 0) goto L5
            return
        L5:
            com.huawei.updatesdk.b.i.a$c r1 = com.huawei.updatesdk.p048b.p059i.C1643a.c.CONFIRM
            if (r3 != r1) goto Lf
            r3 = -1
        La:
            android.widget.Button r3 = r0.getButton(r3)
            goto L16
        Lf:
            com.huawei.updatesdk.b.i.a$c r1 = com.huawei.updatesdk.p048b.p059i.C1643a.c.CANCEL
            if (r3 != r1) goto L15
            r3 = -2
            goto La
        L15:
            r3 = 0
        L16:
            if (r3 != 0) goto L19
            return
        L19:
            r3.setText(r4)
            r4 = 1
            r3.setAllCaps(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p048b.p059i.C1643a.m3789a(com.huawei.updatesdk.b.i.a$c, java.lang.String):void");
    }

    /* renamed from: a */
    public void m3790a(d dVar) {
        StringBuilder sbM1765j;
        Context context = this.f4729b;
        if (context == null || ((Activity) context).isFinishing()) {
            UpdateSdkLog.m3501b("BaseAlertDialog", "context == null or activity isFinishing");
            if (dVar != null) {
                dVar.mo3795a();
                return;
            }
            return;
        }
        if (m3793b()) {
            sbM1765j = CompilerOutline.m1765j("show dlg error, mContext = ");
            sbM1765j.append(this.f4729b);
            sbM1765j.append(", mContext.isFinishing is ");
            Context context2 = this.f4729b;
            sbM1765j.append(context2 == null ? "mContext == null" : Boolean.valueOf(((Activity) context2).isFinishing()));
        } else {
            try {
                AlertDialog alertDialogCreate = this.f4733f.create();
                this.f4732e = alertDialogCreate;
                alertDialogCreate.setCanceledOnTouchOutside(false);
                this.f4732e.setOnShowListener(new a());
                this.f4732e.setOnDismissListener(new b());
                this.f4732e.show();
                this.f4732e.getButton(-1).requestFocus();
                return;
            } catch (Exception e) {
                if (dVar != null) {
                    dVar.mo3795a();
                }
                sbM1765j = CompilerOutline.m1765j("show dlg error, e: ");
                sbM1765j.append(e.toString());
            }
        }
        UpdateSdkLog.m3500a("BaseAlertDialog", sbM1765j.toString());
    }

    /* renamed from: a */
    public void m3791a(UpdateDialogActions interfaceC1644b) {
        this.f4728a = interfaceC1644b;
    }

    /* renamed from: a */
    public void m3792a(boolean z) {
        AlertDialog alertDialog = this.f4732e;
        if (alertDialog != null) {
            alertDialog.setCancelable(z);
        }
    }

    /* renamed from: b */
    public boolean m3793b() {
        AlertDialog alertDialog = this.f4732e;
        return alertDialog != null && alertDialog.isShowing();
    }

    /* renamed from: c */
    public void m3794c() {
        AlertDialog.Builder builder = this.f4733f;
        if (builder == null) {
            return;
        }
        builder.setNegativeButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
