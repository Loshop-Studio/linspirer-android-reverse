package com.alibaba.sdk.android.push.p016b;

import android.content.Context;
import android.graphics.Bitmap;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.p008b.AmsCommonProviders;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.push.CommonCallback;
import com.alibaba.sdk.android.push.common.p018a.PushNotificationPreferences;
import com.alibaba.sdk.android.push.common.p018a.PushErrorCatalog;
import com.alibaba.sdk.android.push.notification.CPushMessage;
import com.alibaba.sdk.android.push.p025g.VipRequestManager;
import com.huawei.hem.AgooResultListener;
import com.p076ut.device.UTDevice;
import com.taobao.agoo.ICallback;
import com.taobao.agoo.TaobaoRegister;

/* renamed from: com.alibaba.sdk.android.push.b.a */
/* loaded from: classes.dex */
public class CloudPushOperations {

    /* renamed from: b */
    public static AmsLogger f1002b = AmsLogger.getLogger("MPS:CloudPushService");

    /* renamed from: a */
    public Context f1003a;

    /* renamed from: com.alibaba.sdk.android.push.b.a$2, reason: invalid class name */
    public class AnonymousClass2 implements CommonCallback {

        /* renamed from: a */
        public final /* synthetic */ CommonCallback f1006a;

        /* renamed from: com.alibaba.sdk.android.push.b.a$2$1, reason: invalid class name */
        public class AnonymousClass1 extends ICallback {
            public AnonymousClass1() {
            }

            @Override // com.taobao.agoo.ICallback
            public void onFailure(String str, String str2) {
                ErrorCode errorCodeBuild = PushErrorCatalog.m762a(str, str2).detail("turnOffPushChannel unbindAgoo").build();
                CommonCallback commonCallback = AnonymousClass2.this.f1006a;
                if (commonCallback != null) {
                    commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
                }
            }

            @Override // com.taobao.agoo.ICallback
            public void onSuccess() {
                VipRequestManager.m831a().m863d(new CommonCallback() { // from class: com.alibaba.sdk.android.push.b.a.2.1.1
                    @Override // com.alibaba.sdk.android.push.CommonCallback
                    public void onFailed(final String str, final String str2) {
                        TaobaoRegister.bindAgoo(CloudPushOperations.this.f1003a, new ICallback() { // from class: com.alibaba.sdk.android.push.b.a.2.1.1.1
                            @Override // com.taobao.agoo.ICallback
                            public void onFailure(String str3, String str4) {
                                ErrorCode errorCodeBuild = PushErrorCatalog.m762a(str3, str4).detail("turnOffPushChannel bindAgoo").build();
                                CommonCallback commonCallback = AnonymousClass2.this.f1006a;
                                if (commonCallback != null) {
                                    commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
                                }
                            }

                            @Override // com.taobao.agoo.ICallback
                            public void onSuccess() {
                                CommonCallback commonCallback = AnonymousClass2.this.f1006a;
                                if (commonCallback != null) {
                                    commonCallback.onFailed(str, str2);
                                }
                            }
                        });
                    }

                    @Override // com.alibaba.sdk.android.push.CommonCallback
                    public void onSuccess(String str) {
                        CommonCallback commonCallback = AnonymousClass2.this.f1006a;
                        if (commonCallback != null) {
                            commonCallback.onSuccess(str);
                        }
                    }
                });
            }
        }

        public AnonymousClass2(CommonCallback commonCallback) {
            this.f1006a = commonCallback;
        }

        @Override // com.alibaba.sdk.android.push.CommonCallback
        public void onFailed(String str, String str2) {
            CommonCallback commonCallback = this.f1006a;
            if (commonCallback != null) {
                commonCallback.onFailed(str, str2);
            }
        }

        @Override // com.alibaba.sdk.android.push.CommonCallback
        public void onSuccess(String str) {
            if (!str.equals("off")) {
                TaobaoRegister.unbindAgoo(CloudPushOperations.this.f1003a, new AnonymousClass1());
                return;
            }
            CloudPushOperations.f1002b.m498d("already off. return");
            CommonCallback commonCallback = this.f1006a;
            if (commonCallback != null) {
                commonCallback.onSuccess(str);
            }
        }
    }

    /* renamed from: com.alibaba.sdk.android.push.b.a$3, reason: invalid class name */
    public class AnonymousClass3 implements CommonCallback {

        /* renamed from: a */
        public final /* synthetic */ CommonCallback f1013a;

        /* renamed from: com.alibaba.sdk.android.push.b.a$3$1, reason: invalid class name */
        public class AnonymousClass1 extends ICallback {
            public AnonymousClass1() {
            }

            @Override // com.taobao.agoo.ICallback
            public void onFailure(String str, String str2) {
                ErrorCode errorCodeBuild = PushErrorCatalog.m762a(str, str2).detail("turnOnPushChannel bindAgoo").build();
                CommonCallback commonCallback = AnonymousClass3.this.f1013a;
                if (commonCallback != null) {
                    commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
                }
            }

            @Override // com.taobao.agoo.ICallback
            public void onSuccess() {
                VipRequestManager.m831a().m865e(new CommonCallback() { // from class: com.alibaba.sdk.android.push.b.a.3.1.1
                    @Override // com.alibaba.sdk.android.push.CommonCallback
                    public void onFailed(final String str, final String str2) {
                        TaobaoRegister.unbindAgoo(CloudPushOperations.this.f1003a, new ICallback() { // from class: com.alibaba.sdk.android.push.b.a.3.1.1.1
                            @Override // com.taobao.agoo.ICallback
                            public void onFailure(String str3, String str4) {
                                ErrorCode errorCodeBuild = PushErrorCatalog.m762a(str3, str4).detail("turnOnPushChannel unbindAgoo").build();
                                CommonCallback commonCallback = AnonymousClass3.this.f1013a;
                                if (commonCallback != null) {
                                    commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
                                }
                            }

                            @Override // com.taobao.agoo.ICallback
                            public void onSuccess() {
                                CommonCallback commonCallback = AnonymousClass3.this.f1013a;
                                if (commonCallback != null) {
                                    commonCallback.onFailed(str, str2);
                                }
                            }
                        });
                    }

                    @Override // com.alibaba.sdk.android.push.CommonCallback
                    public void onSuccess(String str) {
                        CommonCallback commonCallback = AnonymousClass3.this.f1013a;
                        if (commonCallback != null) {
                            commonCallback.onSuccess(str);
                        }
                    }
                });
            }
        }

        public AnonymousClass3(CommonCallback commonCallback) {
            this.f1013a = commonCallback;
        }

        @Override // com.alibaba.sdk.android.push.CommonCallback
        public void onFailed(String str, String str2) {
            CommonCallback commonCallback = this.f1013a;
            if (commonCallback != null) {
                commonCallback.onFailed(str, str2);
            }
        }

        @Override // com.alibaba.sdk.android.push.CommonCallback
        public void onSuccess(String str) {
            if (!str.equals("on")) {
                TaobaoRegister.bindAgoo(CloudPushOperations.this.f1003a, new AnonymousClass1());
                return;
            }
            CloudPushOperations.f1002b.m498d("already on. return");
            CommonCallback commonCallback = this.f1013a;
            if (commonCallback != null) {
                commonCallback.onSuccess(str);
            }
        }
    }

    public CloudPushOperations(Context context) {
        this.f1003a = context;
        VipRequestManager.m835a(context);
    }

    /* renamed from: a */
    public String m705a() {
        return AmsCommonProviders.m492a().mo484b();
    }

    /* renamed from: a */
    public String m706a(Context context) {
        return UTDevice.getUtdid(context);
    }

    /* renamed from: a */
    public void m707a(int i) {
        PushNotificationPreferences.m757a(i);
    }

    /* renamed from: a */
    public void m708a(int i, int i2, int i3, int i4, final CommonCallback commonCallback) {
        f1002b.m498d("setDoNotDisturb " + i + ":" + i2 + "-" + i3 + ":" + i4);
        TaobaoRegister.setDoNotDisturb(i, i2, i3, i4, new AgooResultListener() { // from class: com.alibaba.sdk.android.push.b.a.1
            @Override // com.huawei.hem.InterfaceC1068k0
            public void onFailed(String str, String str2) {
                ErrorCode errorCodeBuild = PushErrorCatalog.m762a(str, str2).build();
                commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
            }

            @Override // com.huawei.hem.InterfaceC1068k0
            public void onSuccess(String str) {
                commonCallback.onSuccess(str);
            }
        });
    }

    /* renamed from: a */
    public void m709a(int i, CommonCallback commonCallback) throws CloudPushOperationException {
        VipRequestManager.m831a().m852a(i, commonCallback);
    }

    /* renamed from: a */
    public void m710a(int i, String[] strArr, String str, CommonCallback commonCallback) throws CloudPushOperationException {
        VipRequestManager.m831a().m853a(i, strArr, str, commonCallback);
    }

    /* renamed from: a */
    public void m711a(Bitmap bitmap) {
        PushNotificationPreferences.m758a(bitmap);
    }

    /* renamed from: a */
    public void m712a(CommonCallback commonCallback) {
        VipRequestManager.m831a().m854a(commonCallback);
    }

    /* renamed from: a */
    public void m713a(CPushMessage cPushMessage) {
        TaobaoRegister.clickMessage(CPushMessage.m872to(cPushMessage));
    }

    /* renamed from: a */
    public void m714a(Class cls) {
        TaobaoRegister.setPushMsgReceiveService(cls);
    }

    /* renamed from: a */
    public void m715a(String str) {
        PushNotificationPreferences.m759a(str);
    }

    /* renamed from: a */
    public void m716a(String str, CommonCallback commonCallback) throws CloudPushOperationException {
        VipRequestManager.m831a().m855a(str, commonCallback);
    }

    /* renamed from: a */
    public void m717a(boolean z) {
        TaobaoRegister.setDoNotDisturbMode(z);
    }

    /* renamed from: b */
    public void m718b() {
        TaobaoRegister.clearNotificationCreatedByAliyun(this.f1003a);
    }

    /* renamed from: b */
    public void m719b(int i, String[] strArr, String str, CommonCallback commonCallback) throws CloudPushOperationException {
        VipRequestManager.m831a().m857b(i, strArr, str, commonCallback);
    }

    /* renamed from: b */
    public void m720b(Context context) {
        VipRequestManager.m831a().m858b(context);
    }

    /* renamed from: b */
    public void m721b(CommonCallback commonCallback) {
        VipRequestManager.m831a().m859b(commonCallback);
    }

    /* renamed from: b */
    public void m722b(CPushMessage cPushMessage) {
        TaobaoRegister.dismissMessage(CPushMessage.m872to(cPushMessage));
    }

    /* renamed from: b */
    public void m723b(String str) {
        AmsCommonProviders.m492a().mo489d(str);
    }

    /* renamed from: b */
    public void m724b(String str, CommonCallback commonCallback) {
        VipRequestManager.m831a().m860b(str, commonCallback);
    }

    /* renamed from: b */
    public void m725b(boolean z) {
        PushNotificationPreferences.m760a(z);
    }

    /* renamed from: c */
    public void m726c(CommonCallback commonCallback) {
        VipRequestManager.m831a().m866f(commonCallback);
    }

    /* renamed from: c */
    public void m727c(String str) {
        AmsCommonProviders.m492a().mo491e(str);
    }

    /* renamed from: c */
    public void m728c(String str, CommonCallback commonCallback) {
        VipRequestManager.m831a().m862c(str, commonCallback);
    }

    /* renamed from: d */
    public void m729d(CommonCallback commonCallback) {
        m732f(new AnonymousClass2(commonCallback));
    }

    /* renamed from: d */
    public void m730d(String str, CommonCallback commonCallback) throws CloudPushOperationException {
        VipRequestManager.m831a().m864d(str, commonCallback);
    }

    /* renamed from: e */
    public void m731e(CommonCallback commonCallback) {
        m732f(new AnonymousClass3(commonCallback));
    }

    /* renamed from: f */
    public void m732f(CommonCallback commonCallback) {
        VipRequestManager.m831a().m861c(commonCallback);
    }
}
