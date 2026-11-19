package com.huawei.hem;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;

/* compiled from: CommonCallBack.java */
/* renamed from: com.huawei.hem.xb */
/* loaded from: classes.dex */
public class CommonCallBack implements OkHttpCallback {

    /* renamed from: a */
    public IResponseHandler f4062a;

    /* renamed from: b */
    public boolean f4063b;

    /* compiled from: CommonCallBack.java */
    /* renamed from: com.huawei.hem.xb$a */
    public class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ IOException f4064a;

        public a(IOException iOException) {
            this.f4064a = iOException;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonCallBack.this.f4062a.onFailure(new OkHttpException(-100, this.f4064a));
        }
    }

    /* compiled from: CommonCallBack.java */
    /* renamed from: com.huawei.hem.xb$b */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonCallBack.this.f4062a.onFailure(new OkHttpException(-100, ""));
        }
    }

    /* compiled from: CommonCallBack.java */
    /* renamed from: com.huawei.hem.xb$c */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonCallBack.this.f4062a.onFailure(new OkHttpException(-300, ""));
        }
    }

    /* compiled from: CommonCallBack.java */
    /* renamed from: com.huawei.hem.xb$d */
    public class d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f4068a;

        public d(String str) {
            this.f4068a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonCallBack.this.f4062a.onSucess(this.f4068a);
        }
    }

    /* compiled from: CommonCallBack.java */
    /* renamed from: com.huawei.hem.xb$e */
    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonCallBack.this.f4062a.onFailure(new OkHttpException(-100, ""));
        }
    }

    public CommonCallBack(IResponseHandler interfaceC1430yb, boolean z) {
        this.f4062a = interfaceC1430yb;
        this.f4063b = z;
    }

    /* renamed from: a */
    public final void m2941a(OkHttpResponse c1088kk) throws Exception {
        if (c1088kk == null) {
            Log.e("LTKLog2", "response null");
            HttpCore.f3618a.post(new b());
        }
        try {
            String strM2395h = c1088kk.f3097g.m2395h();
            if (TextUtils.isEmpty(strM2395h)) {
                Log.e("LTKLog2", "response body null");
                HttpCore.f3618a.post(new c());
            }
            HttpCore.f3618a.post(new d(strM2395h));
        } catch (IOException e2) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("io exception ");
            sbM1765j.append(e2.getMessage());
            Log.e("LTKLog2", sbM1765j.toString());
            HttpCore.f3618a.post(new e());
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    public void m2942b(Call interfaceC1087kj, IOException iOException) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("exception:");
        sbM1765j.append(iOException.getMessage());
        Log.e("LTKLog2", sbM1765j.toString());
        iOException.printStackTrace();
        IResponseHandler interfaceC1430yb = this.f4062a;
        if (interfaceC1430yb == null) {
            Log.e("LTKLog2", "exception and call back empty");
        } else if (this.f4063b) {
            interfaceC1430yb.onFailure(new OkHttpException(-100, iOException));
        } else {
            HttpCore.f3618a.post(new a(iOException));
        }
    }
}
