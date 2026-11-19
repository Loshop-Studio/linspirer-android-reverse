package com.android.launcher3.activity;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置。

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.android.launcher3.R;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.AndroidImpl;
import com.huawei.hem.UserInfoUtil;

/* loaded from: classes.dex */
public class DeviceRotatingActivity extends Activity implements View.OnClickListener {

    /* renamed from: a */
    public RadioGroup f1729a;

    /* renamed from: b */
    public UserInfoUtil f1730b;

    /* renamed from: c */
    public RadioButton f1731c;

    /* renamed from: d */
    public RadioButton f1732d;

    /* renamed from: e */
    public RadioButton f1733e;

    /* renamed from: f */
    public ImageView f1734f;

    /* renamed from: a */
    public /* synthetic */ void m1191a(RadioGroup radioGroup, int i) {
        if (i == R.id.open_remote_tv) {
            this.f1733e.setChecked(true);
            m1193c(1);
        } else if (i == R.id.horizontal_locked_tv) {
            this.f1732d.setChecked(true);
            m1193c(2);
        } else {
            this.f1731c.setChecked(true);
            m1193c(3);
        }
    }

    /* renamed from: b */
    public final void m1192b() {
        LTKDateUtil.m1403m("DeviceRotatingActivity====saveData");
        if (this.f1733e.isChecked()) {
            this.f1730b.m3059n0(1);
            ((AndroidImpl) LTKDateUtil.f2294f).m2127R0(this);
        } else if (this.f1732d.isChecked()) {
            this.f1730b.m3059n0(2);
            ((AndroidImpl) LTKDateUtil.f2294f).m2131b(this);
            ((AndroidImpl) LTKDateUtil.f2294f).m2130U0(this, 1);
        } else if (this.f1731c.isChecked()) {
            ((AndroidImpl) LTKDateUtil.f2294f).m2131b(this);
            this.f1730b.m3059n0(3);
            ((AndroidImpl) LTKDateUtil.f2294f).m2130U0(this, 0);
        }
    }

    /* renamed from: c */
    public final void m1193c(int i) {
        LTKDateUtil.m1403m("DeviceRotatingActivity status :  " + i);
        m1192b();
        if (i == 1) {
            this.f1733e.setChecked(true);
            this.f1731c.setChecked(false);
            this.f1732d.setChecked(false);
        } else if (i == 2) {
            this.f1733e.setChecked(false);
            this.f1731c.setChecked(false);
            this.f1732d.setChecked(true);
        } else {
            if (i != 3) {
                return;
            }
            this.f1733e.setChecked(false);
            this.f1731c.setChecked(true);
            this.f1732d.setChecked(false);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.closed) {
            return;
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_device_rotating);
        this.f1729a = (RadioGroup) findViewById(R.id.radiogroup);
        this.f1731c = (RadioButton) findViewById(R.id.vertical_locked_tv);
        this.f1732d = (RadioButton) findViewById(R.id.horizontal_locked_tv);
        RadioButton radioButton = (RadioButton) findViewById(R.id.open_remote_tv);
        this.f1733e = radioButton;
        radioButton.setOnClickListener(this);
        this.f1732d.setOnClickListener(this);
        this.f1731c.setOnClickListener(this);
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        this.f1730b = c1424y5;
        int i = c1424y5.f4130D.f2199a.getInt("rotating_status", 1);
        ImageView imageView = (ImageView) findViewById(R.id.closed);
        this.f1734f = imageView;
        imageView.setOnClickListener(this);
        m1193c(i);
        this.f1729a.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.huawei.hem.z1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
                this.f4257a.m1191a(radioGroup, i2);
            }
        });
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        LTKDateUtil.m1403m("DeviceRotatingActivity==== onPause");
        m1192b();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        LTKDateUtil.m1403m("DeviceRotatingActivity==== onStop");
        m1192b();
    }
}
