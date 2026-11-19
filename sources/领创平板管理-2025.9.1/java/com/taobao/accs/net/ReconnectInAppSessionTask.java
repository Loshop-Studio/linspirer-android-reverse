package com.taobao.accs.net;

import anet.channel.NoAvailStrategyException;
import anet.channel.Session;
import anet.channel.SessionCenter;
import anet.channel.entity.ConnType;
import com.alibaba.sdk.android.error.ErrorCode;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.AccsState;
import com.taobao.accs.utl.UtilityImpl;
import java.net.ConnectException;
import java.security.InvalidParameterException;
import java.util.concurrent.TimeoutException;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.r */
/* loaded from: classes.dex */
public class ReconnectInAppSessionTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AccsInAppConnection f6279a;

    public ReconnectInAppSessionTask(AccsInAppConnection c1948j) {
        this.f6279a = c1948j;
    }

    @Override // java.lang.Runnable
    public void run() {
        ErrorCode errorCodeBuild = AccsErrorCode.SUCCESS;
        try {
            SessionCenter sessionCenter = SessionCenter.getInstance(this.f6279a.f6217i.getAppKey());
            boolean z = false;
            this.f6279a.m5677a(sessionCenter, this.f6279a.f6217i.getInappHost(), false);
            Session throwsException = null;
            try {
                try {
                    try {
                        try {
                            try {
                                throwsException = sessionCenter.getThrowsException(this.f6279a.mo5634b((String) null), ConnType.TypeLevel.SPDY, 60000L);
                            } catch (InvalidParameterException e) {
                                errorCodeBuild = AccsErrorCode.NETWORK_INAPP_ARGS_INVALID.copy().detail(e.getMessage()).build();
                            }
                        } catch (TimeoutException e2) {
                            errorCodeBuild = AccsErrorCode.NETWORK_INAPP_TIMEOUT.copy().detail(AccsErrorCode.getAllDetails(e2.getMessage())).build();
                        }
                    } catch (ConnectException e3) {
                        errorCodeBuild = AccsErrorCode.NETWORK_INAPP_CONNECT_FAIL.copy().detail(AccsErrorCode.getAllDetails(e3.getMessage())).build();
                    }
                } catch (NoAvailStrategyException e4) {
                    errorCodeBuild = AccsErrorCode.NETWORK_INAPP_NO_STRATEGY.copy().detail(e4.getMessage()).build();
                }
            } catch (Throwable th) {
                errorCodeBuild = UtilityImpl.m5766g(this.f6279a.f6212d) ? AccsErrorCode.NETWORK_INAPP_EXCEPTION.copy().detail(AccsErrorCode.getAllDetails(AccsErrorCode.getExceptionInfo(th))).build() : AccsErrorCode.NO_NETWORK.copy().detail(AccsErrorCode.getExceptionInfo(th)).build();
            }
            if (throwsException != null) {
                throwsException.ping(true);
                z = true;
            } else if (errorCodeBuild.getCodeInt() != AccsErrorCode.SUCCESS.getCodeInt()) {
                this.f6279a.f6250t.mo666e(errorCodeBuild.toString());
                AccsState.getInstance().m5452b(this.f6279a.f6221m, AccsState.RECENT_ERRORS, Integer.valueOf(errorCodeBuild.getCodeInt()));
            } else {
                this.f6279a.f6250t.mo666e("reconnect fail");
                AccsState.getInstance().m5452b(this.f6279a.f6221m, AccsState.RECENT_ERRORS, "reconnect session null");
            }
            if (z) {
                return;
            }
            this.f6279a.m5675r();
        } finally {
        }
    }
}
