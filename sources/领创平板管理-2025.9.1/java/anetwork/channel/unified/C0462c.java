package anetwork.channel.unified;

import android.support.v4.app.NotificationCompat;
import anet.channel.RequestCb;
import anet.channel.bytes.ByteArray;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import anet.channel.util.HttpHelper;
import anetwork.channel.aidl.DefaultFinishEvent;
import anetwork.channel.cookie.CookieManager;
import java.util.List;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.c */
/* loaded from: classes.dex */
public class C0462c implements RequestCb {

    /* renamed from: a */
    public final /* synthetic */ C0461b f757a;

    public C0462c(C0461b c0461b) {
        this.f757a = c0461b;
    }

    @Override // anet.channel.RequestCb
    public void onDataReceive(ByteArray byteArray, boolean z) {
        if (this.f757a.f753c.f796d.get()) {
            return;
        }
        C0461b.m441b(this.f757a);
        if (this.f757a.f753c.f794b != null) {
            this.f757a.f753c.f794b.onDataReceiveSize(this.f757a.f755e, this.f757a.f754d, byteArray);
        }
    }

    @Override // anet.channel.RequestCb
    public void onFinish(int i, String str, RequestStatistic requestStatistic) {
        if (this.f757a.f753c.f796d.getAndSet(true)) {
            return;
        }
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.DegradeTask", "[onFinish]", this.f757a.f753c.f795c, "code", Integer.valueOf(i), NotificationCompat.CATEGORY_MESSAGE, str);
        }
        this.f757a.f753c.m458a();
        requestStatistic.isDone.set(true);
        if (this.f757a.f753c.f794b != null) {
            this.f757a.f753c.f794b.onFinish(new DefaultFinishEvent(i, str, this.f757a.f756f));
        }
    }

    @Override // anet.channel.RequestCb
    public void onResponseCode(int i, Map<String, List<String>> map) {
        if (this.f757a.f753c.f796d.get()) {
            return;
        }
        this.f757a.f753c.m458a();
        CookieManager.setCookie(this.f757a.f753c.f793a.m434g(), map);
        this.f757a.f754d = HttpHelper.parseContentLength(map);
        if (this.f757a.f753c.f794b != null) {
            this.f757a.f753c.f794b.onResponseCode(i, map);
        }
    }
}
