package com.huawei.hms.activity;

import android.app.Activity;
import android.os.Bundle;
import com.huawei.hms.base.p031ui.HmsBaseUiResources;

/* loaded from: classes.dex */
public class EnableServiceActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(HmsBaseUiResources.layout.activity_endisable_service);
    }
}
