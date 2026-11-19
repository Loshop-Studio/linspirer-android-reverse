package com.android.launcher3.view;

import android.content.Context;
import android.text.method.BaseMovementMethod;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.widget.EditText;

/* loaded from: classes.dex */
public class LTKEditText extends EditText {
    public LTKEditText(Context context) {
        super(context);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public MovementMethod getDefaultMovementMethod() {
        return new BaseMovementMethod();
    }

    public LTKEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LTKEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public LTKEditText(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
