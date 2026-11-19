package com.huawei.hms.p032ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import com.huawei.hms.support.log.HMSLog;

/* loaded from: classes.dex */
public abstract class AbstractDialog {

    /* renamed from: a */
    public Activity f4572a;

    /* renamed from: b */
    public AlertDialog f4573b;

    /* renamed from: c */
    public Callback f4574c;

    public interface Callback {
        void onCancel(AbstractDialog abstractDialog);

        void onDoWork(AbstractDialog abstractDialog);
    }

    /* renamed from: com.huawei.hms.ui.AbstractDialog$a */
    public class HmsDialogPositiveClick implements DialogInterface.OnClickListener {
        public HmsDialogPositiveClick() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AbstractDialog.this.fireDoWork();
        }
    }

    /* renamed from: com.huawei.hms.ui.AbstractDialog$b */
    public class HmsDialogNegativeClick implements DialogInterface.OnClickListener {
        public HmsDialogNegativeClick() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AbstractDialog.this.cancel();
        }
    }

    /* renamed from: com.huawei.hms.ui.AbstractDialog$c */
    public class HmsDialogCancelListener implements DialogInterface.OnCancelListener {
        public HmsDialogCancelListener() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractDialog.this.fireCancel();
        }
    }

    /* renamed from: com.huawei.hms.ui.AbstractDialog$d */
    public class HmsDialogBackKeyListener implements DialogInterface.OnKeyListener {
        public HmsDialogBackKeyListener() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (4 != i || keyEvent.getAction() != 1) {
                return false;
            }
            AbstractDialog.this.cancel();
            return true;
        }
    }

    /* renamed from: a */
    public static int m3466a(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier("androidhwext:style/Theme.Emui", null, null);
    }

    public void cancel() {
        AlertDialog alertDialog = this.f4573b;
        if (alertDialog != null) {
            alertDialog.cancel();
        }
    }

    public void dismiss() {
        AlertDialog alertDialog = this.f4573b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    public void fireCancel() {
        Callback callback = this.f4574c;
        if (callback != null) {
            callback.onCancel(this);
        }
    }

    public void fireDoWork() {
        Callback callback = this.f4574c;
        if (callback != null) {
            callback.onDoWork(this);
        }
    }

    public Activity getActivity() {
        return this.f4572a;
    }

    public int getDialogThemeId() {
        return m3466a(this.f4572a) != 0 ? 0 : 3;
    }

    public AlertDialog onCreateDialog(Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity(), getDialogThemeId());
        String strOnGetTitleString = onGetTitleString(activity);
        if (strOnGetTitleString != null) {
            builder.setTitle(strOnGetTitleString);
        }
        String strOnGetMessageString = onGetMessageString(activity);
        if (strOnGetMessageString != null) {
            builder.setMessage(strOnGetMessageString);
        }
        String strOnGetPositiveButtonString = onGetPositiveButtonString(activity);
        if (strOnGetPositiveButtonString != null) {
            builder.setPositiveButton(strOnGetPositiveButtonString, new HmsDialogPositiveClick());
        }
        String strOnGetNegativeButtonString = onGetNegativeButtonString(activity);
        if (strOnGetNegativeButtonString != null) {
            builder.setNegativeButton(strOnGetNegativeButtonString, new HmsDialogNegativeClick());
        }
        return builder.create();
    }

    public abstract String onGetMessageString(Context context);

    public abstract String onGetNegativeButtonString(Context context);

    public abstract String onGetPositiveButtonString(Context context);

    public abstract String onGetTitleString(Context context);

    public void setMessage(CharSequence charSequence) {
        AlertDialog alertDialog = this.f4573b;
        if (alertDialog != null) {
            alertDialog.setMessage(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        AlertDialog alertDialog = this.f4573b;
        if (alertDialog != null) {
            alertDialog.setTitle(charSequence);
        }
    }

    public void show(Activity activity, Callback callback) {
        this.f4572a = activity;
        this.f4574c = callback;
        if (activity == null || activity.isFinishing()) {
            HMSLog.m3461e("AbstractDialog", "In show, The activity is null or finishing.");
            return;
        }
        AlertDialog alertDialogOnCreateDialog = onCreateDialog(this.f4572a);
        this.f4573b = alertDialogOnCreateDialog;
        alertDialogOnCreateDialog.setCanceledOnTouchOutside(false);
        this.f4573b.setOnCancelListener(new HmsDialogCancelListener());
        this.f4573b.setOnKeyListener(new HmsDialogBackKeyListener());
        this.f4573b.show();
    }
}
