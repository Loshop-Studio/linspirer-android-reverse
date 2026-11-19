package org.greenrobot.eventbus.util;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

/* loaded from: classes.dex */
public class ErrorDialogFragments {

    @TargetApi(11)
    public static class Honeycomb extends DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Activity activity = getActivity();
            if (!getArguments().getBoolean("de.greenrobot.eventbus.errordialog.finish_after_dialog", false) || activity == null) {
                return;
            }
            activity.finish();
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.m5857a(getActivity(), getArguments(), this);
        }
    }

    public static class Support extends android.support.v4.app.DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FragmentActivity activity = getActivity();
            if (!getArguments().getBoolean("de.greenrobot.eventbus.errordialog.finish_after_dialog", false) || activity == null) {
                return;
            }
            activity.finish();
        }

        @Override // android.support.v4.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.m5857a(getActivity(), getArguments(), this);
        }
    }

    /* renamed from: a */
    public static Dialog m5857a(Context context, Bundle bundle, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(bundle.getString("de.greenrobot.eventbus.errordialog.title"));
        builder.setMessage(bundle.getString("de.greenrobot.eventbus.errordialog.message"));
        builder.setPositiveButton(R.string.ok, onClickListener);
        return builder.create();
    }
}
