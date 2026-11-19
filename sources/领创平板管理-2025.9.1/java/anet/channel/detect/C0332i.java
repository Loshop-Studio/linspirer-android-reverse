package anet.channel.detect;

import android.support.v4.app.NotificationCompat;
import anet.channel.RequestCb;
import anet.channel.bytes.ByteArray;
import anet.channel.statist.HorseRaceStat;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.List;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.i */
/* loaded from: classes.dex */
public class C0332i implements RequestCb {

    /* renamed from: a */
    public final /* synthetic */ C0331h f214a;

    public C0332i(C0331h c0331h) {
        this.f214a = c0331h;
    }

    @Override // anet.channel.RequestCb
    public void onDataReceive(ByteArray byteArray, boolean z) {
    }

    @Override // anet.channel.RequestCb
    public void onFinish(int i, String str, RequestStatistic requestStatistic) {
        ALog.m340i("anet.HorseRaceDetector", "LongLinkTask request finish", this.f214a.f210c, HiAnalyticsConstant.HaKey.BI_KEY_RESULT, Integer.valueOf(i), NotificationCompat.CATEGORY_MESSAGE, str);
        if (this.f214a.f208a.reqErrorCode == 0) {
            this.f214a.f208a.reqErrorCode = i;
        } else {
            HorseRaceStat horseRaceStat = this.f214a.f208a;
            horseRaceStat.reqRet = horseRaceStat.reqErrorCode == 200 ? 1 : 0;
        }
        HorseRaceStat horseRaceStat2 = this.f214a.f208a;
        long jCurrentTimeMillis = System.currentTimeMillis();
        C0331h c0331h = this.f214a;
        horseRaceStat2.reqTime = (jCurrentTimeMillis - c0331h.f209b) + c0331h.f208a.connTime;
        synchronized (this.f214a.f208a) {
            this.f214a.f208a.notify();
        }
    }

    @Override // anet.channel.RequestCb
    public void onResponseCode(int i, Map<String, List<String>> map) {
        this.f214a.f208a.reqErrorCode = i;
    }
}
