package anetwork.channel.unified;

import android.support.v4.app.NotificationCompat;
import android.support.v4.app.Person;
import android.support.v4.media.session.PlaybackStateCompat;
import anet.channel.RequestCb;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.bytes.ByteArray;
import anet.channel.flow.FlowStat;
import anet.channel.flow.NetworkAnalysis;
import anet.channel.monitor.C0361b;
import anet.channel.request.Request;
import anet.channel.statist.ExceptionStatistic;
import anet.channel.statist.RequestStatistic;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.ErrorConstant;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpHelper;
import anet.channel.util.HttpUrl;
import anetwork.channel.aidl.DefaultFinishEvent;
import anetwork.channel.cache.C0443a;
import anetwork.channel.cache.Cache;
import anetwork.channel.config.NetworkConfigCenter;
import anetwork.channel.cookie.CookieManager;
import anetwork.channel.unified.C0464e;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.i */
/* loaded from: classes.dex */
public class C0468i implements RequestCb {

    /* renamed from: a */
    public final /* synthetic */ Request f790a;

    /* renamed from: b */
    public final /* synthetic */ RequestStatistic f791b;

    /* renamed from: c */
    public final /* synthetic */ C0464e f792c;

    public C0468i(C0464e c0464e, Request request, RequestStatistic requestStatistic) {
        this.f792c = c0464e;
        this.f790a = request;
        this.f791b = requestStatistic;
    }

    @Override // anet.channel.RequestCb
    public void onDataReceive(ByteArray byteArray, boolean z) {
        if (this.f792c.f767h.get()) {
            return;
        }
        C0464e c0464e = this.f792c;
        if (c0464e.f769j == 0) {
            ALog.m340i(C0464e.TAG, "[onDataReceive] receive first data chunk!", c0464e.f760a.f795c, new Object[0]);
        }
        if (z) {
            ALog.m340i(C0464e.TAG, "[onDataReceive] receive last data chunk!", this.f792c.f760a.f795c, new Object[0]);
        }
        C0464e c0464e2 = this.f792c;
        int i = c0464e2.f769j + 1;
        c0464e2.f769j = i;
        try {
            if (c0464e2.f772m != null) {
                c0464e2.f772m.f775c.add(byteArray);
                if (this.f791b.recDataSize > PlaybackStateCompat.ACTION_PREPARE_FROM_URI || z) {
                    this.f792c.f769j = this.f792c.f772m.m456a(this.f792c.f760a.f794b, this.f792c.f768i);
                    this.f792c.f770k = true;
                    this.f792c.f771l = this.f792c.f769j > 1;
                    this.f792c.f772m = null;
                }
            } else {
                c0464e2.f760a.f794b.onDataReceiveSize(i, c0464e2.f768i, byteArray);
                this.f792c.f771l = true;
            }
            if (this.f792c.f763d != null) {
                this.f792c.f763d.write(byteArray.getBuffer(), 0, byteArray.getDataLength());
                if (z) {
                    String strM434g = this.f792c.f760a.f793a.m434g();
                    this.f792c.f762c.data = this.f792c.f763d.toByteArray();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    this.f792c.f761b.put(strM434g, this.f792c.f762c);
                    ALog.m340i(C0464e.TAG, "write cache", this.f792c.f760a.f795c, "cost", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis), "size", Integer.valueOf(this.f792c.f762c.data.length), Person.KEY_KEY, strM434g);
                }
            }
        } catch (Exception e) {
            ALog.m341w(C0464e.TAG, "[onDataReceive] error.", this.f792c.f760a.f795c, e, new Object[0]);
        }
    }

    @Override // anet.channel.RequestCb
    public void onFinish(int i, String str, RequestStatistic requestStatistic) {
        String strValueOf;
        DefaultFinishEvent defaultFinishEvent;
        if (this.f792c.f767h.getAndSet(true)) {
            return;
        }
        int i2 = 3;
        if (ALog.isPrintLog(2)) {
            ALog.m340i(C0464e.TAG, "[onFinish]", this.f792c.f760a.f795c, "code", Integer.valueOf(i), NotificationCompat.CATEGORY_MESSAGE, str);
        }
        if (i < 0) {
            try {
                if (this.f792c.f760a.f793a.m431d()) {
                    if (!this.f792c.f770k && !this.f792c.f771l) {
                        ALog.m339e(C0464e.TAG, "clear response buffer and retry", this.f792c.f760a.f795c, new Object[0]);
                        if (this.f792c.f772m != null) {
                            if (!this.f792c.f772m.f775c.isEmpty()) {
                                i2 = 4;
                            }
                            requestStatistic.roaming = i2;
                            this.f792c.f772m.m457a();
                            this.f792c.f772m = null;
                        }
                        if (this.f792c.f760a.f793a.f736a == 0) {
                            requestStatistic.firstProtocol = requestStatistic.protocolType;
                            requestStatistic.firstErrorCode = requestStatistic.tnetErrorCode != 0 ? requestStatistic.tnetErrorCode : i;
                        }
                        this.f792c.f760a.f793a.m438k();
                        this.f792c.f760a.f796d = new AtomicBoolean();
                        this.f792c.f760a.f797e = new C0464e(this.f792c.f760a, this.f792c.f761b, this.f792c.f762c);
                        if (requestStatistic.tnetErrorCode != 0) {
                            strValueOf = i + "|" + requestStatistic.protocolType + "|" + requestStatistic.tnetErrorCode;
                            requestStatistic.tnetErrorCode = 0;
                        } else {
                            strValueOf = String.valueOf(i);
                        }
                        requestStatistic.appendErrorTrace(strValueOf);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        requestStatistic.retryCostTime = (jCurrentTimeMillis - requestStatistic.start) + requestStatistic.retryCostTime;
                        requestStatistic.start = jCurrentTimeMillis;
                        ThreadPoolExecutorFactory.submitPriorityTask(this.f792c.f760a.f797e, ThreadPoolExecutorFactory.Priority.HIGH);
                        return;
                    }
                    requestStatistic.msg += ":回调后触发重试";
                    if (this.f792c.f771l) {
                        requestStatistic.roaming = 2;
                    } else if (this.f792c.f770k) {
                        requestStatistic.roaming = 1;
                    }
                    ALog.m339e(C0464e.TAG, "Cannot retry request after onHeader/onDataReceived callback!", this.f792c.f760a.f795c, new Object[0]);
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (this.f792c.f772m != null) {
            this.f792c.f772m.m456a(this.f792c.f760a.f794b, this.f792c.f768i);
        }
        this.f792c.f760a.m458a();
        requestStatistic.isDone.set(true);
        if (this.f792c.f760a.f793a.m437j() && requestStatistic.contentLength != 0 && requestStatistic.contentLength != requestStatistic.rspBodyDeflateSize) {
            requestStatistic.ret = 0;
            requestStatistic.statusCode = ErrorConstant.ERROR_DATA_LENGTH_NOT_MATCH;
            str = ErrorConstant.getErrMsg(ErrorConstant.ERROR_DATA_LENGTH_NOT_MATCH);
            requestStatistic.msg = str;
            ALog.m339e(C0464e.TAG, "received data length not match with content-length", this.f792c.f760a.f795c, "content-length", Integer.valueOf(this.f792c.f768i), "recDataLength", Long.valueOf(requestStatistic.rspBodyDeflateSize));
            ExceptionStatistic exceptionStatistic = new ExceptionStatistic(ErrorConstant.ERROR_DATA_LENGTH_NOT_MATCH, str, "rt");
            exceptionStatistic.url = this.f792c.f760a.f793a.m434g();
            AppMonitor.getInstance().commitStat(exceptionStatistic);
            i = -206;
        }
        if (i != 304 || this.f792c.f762c == null) {
            defaultFinishEvent = new DefaultFinishEvent(i, str, this.f790a);
        } else {
            requestStatistic.protocolType = "cache";
            defaultFinishEvent = new DefaultFinishEvent(200, str, this.f790a);
        }
        this.f792c.f760a.f794b.onFinish(defaultFinishEvent);
        if (i >= 0) {
            C0361b.m150a().m155a(requestStatistic.sendStart, requestStatistic.rspEnd, requestStatistic.rspHeadDeflateSize + requestStatistic.rspBodyDeflateSize);
        } else {
            requestStatistic.netType = NetworkStatusHelper.getNetworkSubType();
        }
        NetworkAnalysis.getInstance().commitFlow(new FlowStat(this.f792c.f764e, requestStatistic));
    }

    @Override // anet.channel.RequestCb
    public void onResponseCode(int i, Map<String, List<String>> map) {
        String singleHeaderFieldByKey;
        if (this.f792c.f767h.get()) {
            return;
        }
        if (ALog.isPrintLog(2)) {
            ALog.m340i(C0464e.TAG, "onResponseCode", this.f790a.getSeq(), "code", Integer.valueOf(i));
            ALog.m340i(C0464e.TAG, "onResponseCode", this.f790a.getSeq(), "headers", map);
        }
        if (HttpHelper.checkRedirect(this.f790a, i) && (singleHeaderFieldByKey = HttpHelper.getSingleHeaderFieldByKey(map, HttpConstant.LOCATION)) != null) {
            HttpUrl httpUrl = HttpUrl.parse(singleHeaderFieldByKey);
            if (httpUrl != null) {
                if (this.f792c.f767h.compareAndSet(false, true)) {
                    httpUrl.lockScheme();
                    this.f792c.f760a.f793a.m428a(httpUrl);
                    this.f792c.f760a.f796d = new AtomicBoolean();
                    C0469j c0469j = this.f792c.f760a;
                    c0469j.f797e = new C0464e(c0469j, null, null);
                    this.f791b.recordRedirect(i, httpUrl.simpleUrlString());
                    this.f791b.locationUrl = singleHeaderFieldByKey;
                    ThreadPoolExecutorFactory.submitPriorityTask(this.f792c.f760a.f797e, ThreadPoolExecutorFactory.Priority.HIGH);
                    return;
                }
                return;
            }
            ALog.m339e(C0464e.TAG, "redirect url is invalid!", this.f790a.getSeq(), "redirect url", singleHeaderFieldByKey);
        }
        try {
            this.f792c.f760a.m458a();
            CookieManager.setCookie(this.f792c.f760a.f793a.m434g(), map);
            this.f792c.f768i = HttpHelper.parseContentLength(map);
            String strM434g = this.f792c.f760a.f793a.m434g();
            if (this.f792c.f762c != null && i == 304) {
                this.f792c.f762c.responseHeaders.putAll(map);
                Cache.Entry entryM386a = C0443a.m386a(map);
                if (entryM386a != null && entryM386a.ttl > this.f792c.f762c.ttl) {
                    this.f792c.f762c.ttl = entryM386a.ttl;
                }
                this.f792c.f760a.f794b.onResponseCode(200, this.f792c.f762c.responseHeaders);
                this.f792c.f760a.f794b.onDataReceiveSize(1, this.f792c.f762c.data.length, ByteArray.wrap(this.f792c.f762c.data));
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.f792c.f761b.put(strM434g, this.f792c.f762c);
                ALog.m340i(C0464e.TAG, "update cache", this.f792c.f760a.f795c, "cost", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis), Person.KEY_KEY, strM434g);
                return;
            }
            if (this.f792c.f761b != null) {
                if ("no-store".equals(HttpHelper.getSingleHeaderFieldByKey(map, HttpConstant.CACHE_CONTROL))) {
                    this.f792c.f761b.remove(strM434g);
                } else {
                    C0464e c0464e = this.f792c;
                    Cache.Entry entryM386a2 = C0443a.m386a(map);
                    c0464e.f762c = entryM386a2;
                    if (entryM386a2 != null) {
                        HttpHelper.removeHeaderFiledByKey(map, HttpConstant.CACHE_CONTROL);
                        map.put(HttpConstant.CACHE_CONTROL, Arrays.asList("no-store"));
                        this.f792c.f763d = new ByteArrayOutputStream(this.f792c.f768i != 0 ? this.f792c.f768i : NotificationCompat.Builder.MAX_CHARSEQUENCE_LENGTH);
                    }
                }
            }
            map.put(HttpConstant.X_PROTOCOL, Arrays.asList(this.f791b.protocolType));
            if (!"open".equalsIgnoreCase(HttpHelper.getSingleHeaderFieldByKey(map, HttpConstant.STREAMING_PARSER)) && NetworkConfigCenter.isResponseBufferEnable() && this.f792c.f768i <= 131072) {
                this.f792c.f772m = new C0464e.a(i, map);
            } else {
                this.f792c.f760a.f794b.onResponseCode(i, map);
                this.f792c.f770k = true;
            }
        } catch (Exception e) {
            ALog.m341w(C0464e.TAG, "[onResponseCode] error.", this.f792c.f760a.f795c, e, new Object[0]);
        }
    }
}
