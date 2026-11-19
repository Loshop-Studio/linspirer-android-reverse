package com.taobao.accs.utl;

import com.alibaba.sdk.android.error.ErrorCode;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.IAppReceiver;
import com.taobao.accs.IAppReceiverV1;
import com.taobao.accs.IAppReceiverV2;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.c */
/* loaded from: classes.dex */
public class C1975c extends IAppReceiverV2 {

    /* renamed from: a */
    public IAppReceiver f6389a;

    /* renamed from: b */
    public boolean f6390b = false;

    public C1975c(IAppReceiver iAppReceiver) {
        this.f6389a = iAppReceiver;
    }

    /* renamed from: a */
    public static IAppReceiver m5774a(IAppReceiver iAppReceiver) {
        if (iAppReceiver == null) {
            return null;
        }
        return new C1975c(iAppReceiver);
    }

    /* renamed from: b */
    public static void m5778b(ErrorCode errorCode, IAppReceiver iAppReceiver, String str) {
        if (iAppReceiver instanceof IAppReceiverV2) {
            ((IAppReceiverV2) iAppReceiver).onBindUser(str, errorCode.getCodeInt(), errorCode.getMsg());
        } else {
            iAppReceiver.onBindUser(str, errorCode.getCodeInt());
        }
    }

    public boolean equals(Object obj) {
        return obj instanceof C1975c ? this.f6389a.equals(((C1975c) obj).f6389a) : this.f6389a.equals(obj);
    }

    @Override // com.taobao.accs.IAppReceiverV1, com.taobao.accs.IAppReceiver
    public Map<String, String> getAllServices() {
        return this.f6389a.getAllServices();
    }

    @Override // com.taobao.accs.IAppReceiverV1, com.taobao.accs.IAppReceiver
    public String getService(String str) {
        return this.f6389a.getService(str);
    }

    public int hashCode() {
        return this.f6389a.hashCode();
    }

    @Override // com.taobao.accs.IAppReceiverV1, com.taobao.accs.IAppReceiver
    public void onBindApp(int i) {
        if (this.f6390b) {
            return;
        }
        this.f6390b = true;
        this.f6389a.onBindApp(i);
    }

    @Override // com.taobao.accs.IAppReceiverV2, com.taobao.accs.IAppReceiverV1, com.taobao.accs.IAppReceiver
    public void onBindUser(String str, int i) {
        this.f6389a.onBindUser(str, i);
    }

    @Override // com.taobao.accs.IAppReceiverV1, com.taobao.accs.IAppReceiver
    public void onData(String str, String str2, byte[] bArr) {
        this.f6389a.onData(str, str2, bArr);
    }

    @Override // com.taobao.accs.IAppReceiverV1, com.taobao.accs.IAppReceiver
    public void onSendData(String str, int i) {
        this.f6389a.onSendData(str, i);
    }

    @Override // com.taobao.accs.IAppReceiverV2, com.taobao.accs.IAppReceiverV1, com.taobao.accs.IAppReceiver
    public void onUnbindApp(int i) {
        if (this.f6390b) {
            this.f6390b = false;
            this.f6389a.onUnbindApp(i);
        }
    }

    @Override // com.taobao.accs.IAppReceiverV2, com.taobao.accs.IAppReceiverV1, com.taobao.accs.IAppReceiver
    public void onUnbindUser(int i) {
        this.f6389a.onUnbindUser(i);
    }

    /* renamed from: a */
    public static void m5776a(ErrorCode errorCode, IAppReceiver iAppReceiver, String str) {
        if (iAppReceiver instanceof IAppReceiverV2) {
            ((IAppReceiverV2) iAppReceiver).onBindApp(errorCode.getCodeInt(), errorCode.getMsg(), str);
        } else if (iAppReceiver instanceof IAppReceiverV1) {
            ((IAppReceiverV1) iAppReceiver).onBindApp(errorCode.getCodeInt(), str);
        } else {
            iAppReceiver.onBindApp(errorCode.getCodeInt());
        }
    }

    @Override // com.taobao.accs.IAppReceiverV2
    public void onBindUser(String str, int i, String str2) {
        IAppReceiver iAppReceiver = this.f6389a;
        if (iAppReceiver instanceof IAppReceiverV2) {
            ((IAppReceiverV2) iAppReceiver).onBindUser(str, i, str2);
        } else {
            iAppReceiver.onBindUser(str, i);
        }
    }

    @Override // com.taobao.accs.IAppReceiverV2
    public void onUnbindUser(int i, String str) {
        IAppReceiver iAppReceiver = this.f6389a;
        if (iAppReceiver instanceof IAppReceiverV2) {
            ((IAppReceiverV2) iAppReceiver).onUnbindUser(i, str);
        } else {
            iAppReceiver.onUnbindUser(i);
        }
    }

    /* renamed from: b */
    public static void m5777b(ErrorCode errorCode, IAppReceiver iAppReceiver) {
        if (iAppReceiver instanceof IAppReceiverV2) {
            ((IAppReceiverV2) iAppReceiver).onUnbindUser(errorCode.getCodeInt(), errorCode.getMsg());
        } else {
            iAppReceiver.onUnbindUser(errorCode.getCodeInt());
        }
    }

    @Override // com.taobao.accs.IAppReceiverV2, com.taobao.accs.IAppReceiverV1
    public void onBindApp(int i, String str) {
        if (this.f6390b) {
            return;
        }
        this.f6390b = true;
        IAppReceiver iAppReceiver = this.f6389a;
        if (iAppReceiver instanceof IAppReceiverV1) {
            ((IAppReceiverV1) iAppReceiver).onBindApp(i, str);
        } else {
            iAppReceiver.onBindApp(i);
        }
    }

    @Override // com.taobao.accs.IAppReceiverV2
    public void onUnbindApp(int i, String str) {
        if (this.f6390b) {
            this.f6390b = false;
            IAppReceiver iAppReceiver = this.f6389a;
            if (iAppReceiver instanceof IAppReceiverV2) {
                ((IAppReceiverV2) iAppReceiver).onUnbindApp(i, str);
            } else {
                iAppReceiver.onUnbindApp(i);
            }
        }
    }

    /* renamed from: a */
    public static void m5775a(ErrorCode errorCode, IAppReceiver iAppReceiver) {
        if (iAppReceiver instanceof IAppReceiverV2) {
            ((IAppReceiverV2) iAppReceiver).onUnbindApp(errorCode.getCodeInt(), errorCode.getMsg());
        } else {
            iAppReceiver.onUnbindApp(errorCode.getCodeInt());
        }
    }

    @Override // com.taobao.accs.IAppReceiverV2
    public void onBindApp(int i, String str, String str2) {
        if (this.f6390b) {
            return;
        }
        if (i == AccsErrorCode.SUCCESS.getCodeInt()) {
            this.f6390b = true;
        }
        IAppReceiver iAppReceiver = this.f6389a;
        if (iAppReceiver instanceof IAppReceiverV2) {
            ((IAppReceiverV2) iAppReceiver).onBindApp(i, str, str2);
        } else if (iAppReceiver instanceof IAppReceiverV1) {
            ((IAppReceiverV1) iAppReceiver).onBindApp(i, str2);
        } else {
            iAppReceiver.onBindApp(i);
        }
    }
}
