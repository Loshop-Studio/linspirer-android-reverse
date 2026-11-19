package com.android.launcher3.activity;

// RE note 本类字节码直接引用的读写或显示接口包括WebView。

import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.C0902dc;

/* loaded from: classes.dex */
public class PrivacyAgreementActivity extends BaseActivity {

    /* renamed from: com.android.launcher3.activity.PrivacyAgreementActivity$a */
    public class C0640a extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ String f1770a;

        public C0640a(PrivacyAgreementActivity privacyAgreementActivity, String str) {
            this.f1770a = str;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return super.shouldOverrideUrlLoading(webView, this.f1770a);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_privacy_agreement;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).statusBarColor(R.color.general_theme_bg_color).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        WebView webView = (WebView) findViewById(R.id.webview);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        webView.loadUrl("file:///android_asset/protocal.html");
        webView.setWebViewClient(new C0640a(this, "file:///android_asset/protocal.html"));
    }

    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        finish();
    }
}
