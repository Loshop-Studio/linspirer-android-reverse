package com.taobao.accs.net;

import android.text.TextUtils;
import anet.channel.IAuth;
import anet.channel.RequestCb;
import anet.channel.bytes.ByteArray;
import anet.channel.statist.RequestStatistic;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.taobao.accs.AccsState;
import com.taobao.accs.net.AccsInAppConnection;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.UtilityImpl;
import java.util.List;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.s */
/* loaded from: classes.dex */
public class AccsSessionAuthResponse implements RequestCb {

    /* renamed from: a */
    public final /* synthetic */ IAuth.AuthCallback f6280a;

    /* renamed from: b */
    public final /* synthetic */ AccsInAppConnection.a f6281b;

    public AccsSessionAuthResponse(AccsInAppConnection.a aVar, IAuth.AuthCallback authCallback) {
        this.f6281b = aVar;
        this.f6280a = authCallback;
    }

    @Override // anet.channel.RequestCb
    public void onDataReceive(ByteArray byteArray, boolean z) {
    }

    @Override // anet.channel.RequestCb
    public void onFinish(int i, String str, RequestStatistic requestStatistic) {
        if (i < 0) {
            this.f6281b.f6259e.mo668e("auth onFinish", HiAnalyticsConstant.HaKey.BI_KEY_RESULT, Integer.valueOf(i));
            this.f6280a.onAuthFail(i, "onFinish auth fail");
        }
    }

    @Override // anet.channel.RequestCb
    public void onResponseCode(int i, Map<String, List<String>> map) {
        Map<String, String> mapM5742a = UtilityImpl.m5742a(map);
        this.f6281b.f6259e.mo665d(BaseMonitor.ALARM_POINT_AUTH, "header", mapM5742a);
        String str = mapM5742a.get("x-at");
        if (!TextUtils.isEmpty(str)) {
            this.f6281b.f6258d.f6219k = str;
        }
        if (i == 200) {
            this.f6281b.f6259e.mo670i(BaseMonitor.ALARM_POINT_AUTH, "httpStatusCode", Integer.valueOf(i));
            this.f6280a.onAuthSuccess();
            if (this.f6281b.f6258d instanceof AccsInAppConnection) {
                ((AccsInAppConnection) this.f6281b.f6258d).m5674q();
                return;
            }
            return;
        }
        String str2 = mapM5742a.get("s-accs-retcode");
        this.f6281b.f6259e.mo668e(BaseMonitor.ALARM_POINT_AUTH, "httpStatusCode", Integer.valueOf(i));
        AccsState.getInstance().m5451b(AccsState.RECENT_ERRORS, "auth fail " + str2);
        this.f6280a.onAuthFail(i, "auth fail");
    }
}
