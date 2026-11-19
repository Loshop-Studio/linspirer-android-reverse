package com.android.launcher3.view;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.R;

/* loaded from: classes.dex */
public class DialogUtil {
    public static Dialog progressDialog;
    public static AlertDialog promptDialog;

    public static void hideDialog() {
        Dialog dialog = progressDialog;
        if (dialog != null && dialog.isShowing()) {
            try {
                progressDialog.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        progressDialog = null;
    }

    public static void showDialog(Context context) {
        showDialog(context, context.getString(R.string.logining));
    }

    public static void showDialog(Context context, String str) {
        try {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.progress_dialog, (ViewGroup) null);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_progress);
            ((TextView) viewInflate.findViewById(R.id.txt_progress)).setText(str);
            if (imageView.getBackground() instanceof AnimationDrawable) {
                ((AnimationDrawable) imageView.getBackground()).start();
                if (progressDialog != null) {
                    progressDialog.show();
                    return;
                }
                Dialog dialog = new Dialog(context, R.style.CustomProgressDialog);
                progressDialog = dialog;
                dialog.setContentView(viewInflate);
                progressDialog.getWindow().getAttributes().gravity = 17;
                progressDialog.setTitle((CharSequence) null);
                progressDialog.setCanceledOnTouchOutside(false);
                progressDialog.setCancelable(false);
                progressDialog.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
