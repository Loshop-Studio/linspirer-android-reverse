package com.taobao.agoo;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.sdk.android.error.ErrorCode;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.IACCSManager;
import com.taobao.accs.IAgooAppReceiver;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import com.taobao.agoo.p074a.AgooDeviceCommandListener;
import com.taobao.agoo.p074a.p075a.AgooRegisterCommand;
import org.android.agoo.common.Config;

/* compiled from: Taobao */
/* renamed from: com.taobao.agoo.c */
/* loaded from: classes.dex */
public final class AgooRegistrationReceiver extends IAgooAppReceiver {

    /* renamed from: a */
    public final /* synthetic */ IRegister f6441a;

    /* renamed from: b */
    public final /* synthetic */ Context f6442b;

    /* renamed from: c */
    public final /* synthetic */ IACCSManager f6443c;

    /* renamed from: d */
    public final /* synthetic */ String f6444d;

    /* renamed from: e */
    public final /* synthetic */ String f6445e;

    public AgooRegistrationReceiver(IRegister iRegister, Context context, IACCSManager iACCSManager, String str, String str2) {
        this.f6441a = iRegister;
        this.f6442b = context;
        this.f6443c = iACCSManager;
        this.f6444d = str;
        this.f6445e = str2;
    }

    @Override // com.taobao.accs.IAgooAppReceiver
    public String getAppkey() {
        return this.f6444d;
    }

    @Override // com.taobao.accs.IAppReceiverV2
    public void onBindApp(int i, String str, String str2) {
        if (i == AccsErrorCode.SUCCESS.getCodeInt()) {
            onBindApp(i, str2);
        } else if (this.f6441a != null) {
            ErrorCode errorCodeBuild = AgooErrorCatalog.m5798a(i, str).detail("bindApp").build();
            this.f6441a.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
        }
    }

    @Override // com.taobao.accs.IAppReceiverV2, com.taobao.accs.IAppReceiverV1
    public void onBindApp(int i, String str) {
        try {
            ALog.m5729i(TaobaoRegister.TAG, "onBindApp", Constants.KEY_ERROR_CODE, Integer.valueOf(i));
            if (i == AccsErrorCode.SUCCESS.getCodeInt()) {
                if (TaobaoRegister.mRequestListener == null) {
                    AgooDeviceCommandListener unused = TaobaoRegister.mRequestListener = new AgooDeviceCommandListener(this.f6442b);
                }
                this.f6443c.registerDataListener(this.f6442b, "AgooDeviceCmd", TaobaoRegister.mRequestListener);
                if (AgooDeviceCommandListener.f6439b.m5804b(this.f6442b.getPackageName()) && Config.getDeviceToken(this.f6442b) != null) {
                    ALog.m5729i(TaobaoRegister.TAG, "agoo aready Registered return ", new Object[0]);
                    if (this.f6441a != null) {
                        this.f6441a.onSuccess(Config.getDeviceToken(this.f6442b));
                        return;
                    }
                    return;
                }
                byte[] bArrM5813a = AgooRegisterCommand.m5813a(this.f6442b, this.f6444d, this.f6445e);
                if (bArrM5813a == null) {
                    if (this.f6441a != null) {
                        this.f6441a.onFailure(AgooErrorCatalog.REGISTER_DATA_ERROR.getCode(), AgooErrorCatalog.REGISTER_DATA_ERROR.getMsg());
                        return;
                    }
                    return;
                }
                String strSendRequest = this.f6443c.sendRequest(this.f6442b, new ACCSManager.AccsRequest(null, "AgooDeviceCmd", bArrM5813a, null));
                if (TextUtils.isEmpty(strSendRequest)) {
                    if (this.f6441a != null) {
                        this.f6441a.onFailure(AgooErrorCatalog.ACCS_CHECK_ERROR.getCode(), AgooErrorCatalog.ACCS_CHECK_ERROR.getMsg());
                        return;
                    }
                    return;
                } else {
                    if (this.f6441a != null) {
                        TaobaoRegister.mRequestListener.f6440a.put(strSendRequest, this.f6441a);
                        return;
                    }
                    return;
                }
            }
            if (this.f6441a != null) {
                ErrorCode errorCodeBuild = AgooErrorCatalog.m5798a(i, "no error msg").detail("bindApp").build();
                this.f6441a.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
            }
        } catch (Throwable th) {
            ALog.m5727e(TaobaoRegister.TAG, "register onBindApp", th, new Object[0]);
        }
    }
}
