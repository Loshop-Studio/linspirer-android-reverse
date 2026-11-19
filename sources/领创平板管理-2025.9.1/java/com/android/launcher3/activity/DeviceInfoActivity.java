package com.android.launcher3.activity;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.C0902dc;

/* loaded from: classes.dex */
public class DeviceInfoActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public TextView f1715b;

    /* renamed from: c */
    public TextView f1716c;

    /* renamed from: d */
    public TextView f1717d;

    /* renamed from: e */
    public TextView f1718e;

    /* renamed from: f */
    public TextView f1719f;

    /* renamed from: g */
    public TextView f1720g;

    /* renamed from: h */
    public TextView f1721h;

    /* renamed from: i */
    public TextView f1722i;

    /* renamed from: j */
    public TextView f1723j;

    /* renamed from: k */
    public TextView f1724k;

    /* renamed from: l */
    public TextView f1725l;

    /* renamed from: m */
    public TextView f1726m;

    /* renamed from: n */
    public RelativeLayout f1727n;

    /* renamed from: o */
    public View f1728o;

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        getWindow().setSoftInputMode(16);
        return R.layout.device_info_activity;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).statusBarColor(R.color.general_theme_bg_color).navigationBarColor(R.color.color_343F50).init();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:31)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:60)
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0320 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d3 A[PHI: r2
      0x00d3: PHI (r2v1 int) = (r2v47 int), (r2v48 int), (r2v49 int), (r2v50 int), (r2v51 int) binds: [B:3:0x00a7, B:15:0x00cf, B:12:0x00c5, B:9:0x00bb, B:6:0x00b1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x024b  */
    /* JADX WARN: Type inference failed for: r10v0, types: [android.app.Activity, android.content.Context, android.view.View$OnClickListener, com.android.launcher3.activity.DeviceInfoActivity] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v41, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1172e() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.activity.DeviceInfoActivity.mo1172e():void"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/activity/DeviceInfoActivity.smali:97
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!C0902dc.m1583a(view) && view.getId() == R.id.device_info_back) {
            finish();
        }
    }
}
