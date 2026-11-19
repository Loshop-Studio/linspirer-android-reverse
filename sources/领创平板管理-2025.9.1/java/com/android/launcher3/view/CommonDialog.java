package com.android.launcher3.view;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.android.launcher3.R;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0902dc;

/* loaded from: classes.dex */
public class CommonDialog {
    public static final String TAG = "CommonDialog";
    public DialogButtonOnClickListener onClickListener;

    public interface DialogButtonOnClickListener {
        void clickCancelButton(View view);

        void clickConfirmButton(View view, String str);
    }

    public void initDialog(Context context, int i, int i2, int i3, double d, double d2, boolean z) {
        C0850bc.m1403m("CommonDialog -- initDialog -- ");
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_dialog, (ViewGroup) null);
        Button button = (Button) viewInflate.findViewById(R.id.btn_positive);
        Button button2 = (Button) viewInflate.findViewById(R.id.btn_negative);
        TextView textView = (TextView) viewInflate.findViewById(R.id.dialog_text_content);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.edit_pwd);
        if (z) {
            editText.setVisibility(0);
        }
        button.setText(i2);
        button2.setText(i3);
        textView.setText(i);
        final Dialog dialog = new Dialog(context, R.style.MyDialogStyle);
        dialog.setContentView(viewInflate);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.view.CommonDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C0902dc.m1583a(view)) {
                    return;
                }
                dialog.dismiss();
                if (CommonDialog.this.onClickListener != null) {
                    CommonDialog.this.onClickListener.clickConfirmButton(view, editText.getText().toString().trim());
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.view.CommonDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C0902dc.m1583a(view)) {
                    return;
                }
                dialog.dismiss();
                if (CommonDialog.this.onClickListener != null) {
                    CommonDialog.this.onClickListener.clickCancelButton(view);
                }
            }
        });
        dialog.show();
        dialog.setCanceledOnTouchOutside(false);
    }

    public void setDialogOnClickEvent(DialogButtonOnClickListener dialogButtonOnClickListener) {
        this.onClickListener = dialogButtonOnClickListener;
    }
}
