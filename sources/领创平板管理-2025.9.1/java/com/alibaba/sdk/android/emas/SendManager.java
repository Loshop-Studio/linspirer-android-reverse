package com.alibaba.sdk.android.emas;

import android.content.Context;
import android.os.Looper;
import com.alibaba.sdk.android.tbrest.SendService;
import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.alibaba.sdk.android.tbrest.request.UrlWrapper;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import com.huawei.hem.CompilerOutline;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: SendManager.java */
/* renamed from: com.alibaba.sdk.android.emas.j */
/* loaded from: classes.dex */
public class SendManager {

    /* renamed from: a */
    public static final ThreadPoolExecutor f950a = new ThreadPoolExecutor(3, 3, 10, TimeUnit.SECONDS, new LinkedBlockingQueue(10), new a());

    /* renamed from: a */
    public PreSendHandler f951a;

    /* renamed from: b */
    public final EmasSender f952b;
    public final DiskCacheManager mDiskCacheManager;

    /* renamed from: d */
    public boolean f953d = false;

    /* renamed from: f */
    public int f954f = 0;
    public final SendService mSendService = new SendService();

    /* compiled from: SendManager.java */
    /* renamed from: com.alibaba.sdk.android.emas.j$a */
    public static class a implements RejectedExecutionHandler {
        public a() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            if (runnable instanceof b) {
                ((b) runnable).m663f();
            }
        }
    }

    /* compiled from: SendManager.java */
    /* renamed from: com.alibaba.sdk.android.emas.j$b */
    public class b implements Runnable {

        /* renamed from: a */
        public final EmasLog f956a;

        /* renamed from: d */
        public final boolean f958d;

        /* renamed from: f */
        public final int f959f;

        public b(EmasLog c0527f, boolean z, int i) {
            this.f956a = c0527f;
            this.f958d = z;
            this.f959f = i;
        }

        /* renamed from: a */
        private boolean m659a() {
            return (this.f958d || !SendManager.this.f952b.isBackground()) && SendManager.f950a.getQueue().size() <= this.f959f;
        }

        /* renamed from: b */
        private boolean m660b() {
            return this.f956a.m635a() == CacheType.DISK_CACHE;
        }

        /* renamed from: d */
        private void m661d(EmasLog c0527f) {
            if (SendManager.this.mDiskCacheManager == null) {
                return;
            }
            if (c0527f.m635a() == CacheType.DISK_CACHE) {
                SendManager.this.mDiskCacheManager.remove(c0527f);
            }
            if (m659a()) {
                LogUtil.m996d("SendManager trying send disk cache.");
                EmasLog c0527f2 = SendManager.this.mDiskCacheManager.get();
                if (c0527f2 == null) {
                    LogUtil.m996d("SendManager disk cache is empty.");
                    return;
                } else {
                    LogUtil.m996d("SendManager sending disk cache.");
                    SendManager.this.m649c(c0527f2);
                    return;
                }
            }
            StringBuilder sbM1765j = CompilerOutline.m1765j("SendManager finish send. background: ");
            sbM1765j.append(SendManager.this.f952b.isBackground());
            sbM1765j.append(", queue size: ");
            sbM1765j.append(SendManager.f950a.getQueue().size());
            sbM1765j.append(", limit: ");
            sbM1765j.append(this.f959f);
            LogUtil.m996d(sbM1765j.toString());
        }

        /* renamed from: f */
        public void m663f() {
            if (SendManager.this.mDiskCacheManager == null) {
                LogUtil.m996d("SendManager send queue fill, disk cache not open, discard.");
                return;
            }
            if (m660b()) {
                LogUtil.m996d("SendManager send queue fill, already in disk cache. do nothing.");
                return;
            }
            LogUtil.m996d("SendManager send queue fill, write into disk cache.");
            Runnable runnable = new Runnable() { // from class: com.alibaba.sdk.android.emas.j.b.1
                @Override // java.lang.Runnable
                public void run() {
                    SendManager.this.mDiskCacheManager.add(b.this.m662b());
                }
            };
            if (Looper.myLooper() == Looper.getMainLooper()) {
                new Thread(runnable).start();
            } else {
                runnable.run();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f956a.m635a() == CacheType.DISK_CACHE) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("SendManager send disk log, location:");
                sbM1765j.append(this.f956a.getLocation());
                LogUtil.m996d(sbM1765j.toString());
            }
            List<EmasSingleLog> listOnHandlePreSend = SendManager.this.f951a != null ? SendManager.this.f951a.onHandlePreSend(this.f956a.m636a(), this.f956a.m635a()) : this.f956a.m636a();
            if (listOnHandlePreSend == null || listOnHandlePreSend.isEmpty()) {
                m661d(this.f956a);
                return;
            }
            byte[] packRequest = null;
            try {
                packRequest = BizRequest.getPackRequest(SendManager.this.mSendService.context, SendManager.this.mSendService, m658a(listOnHandlePreSend));
            } catch (Exception e) {
                LogUtil.m1000w("SendManager pack request failed", e);
                if (SendManager.this.mDiskCacheManager != null) {
                    SendManager.this.mDiskCacheManager.m632b(this.f956a);
                }
            }
            if (packRequest == null) {
                LogUtil.m996d("SendManager pack requst is null.");
                m661d(this.f956a);
            } else if (UrlWrapper.sendRequest(SendManager.this.mSendService, SendManager.this.mSendService.host, packRequest).isSuccess()) {
                m661d(this.f956a);
            } else if (SendManager.this.mDiskCacheManager == null) {
                LogUtil.m996d("SendManager request failed. do nothing.");
            } else {
                LogUtil.m996d("SendManager request failed. put into cache.");
                SendManager.this.mDiskCacheManager.add(this.f956a);
            }
        }

        /* renamed from: b */
        public EmasLog m662b() {
            return this.f956a;
        }

        /* renamed from: a */
        private Map<String, String> m658a(List<EmasSingleLog> list) {
            HashMap map = new HashMap();
            for (EmasSingleLog c0528g : list) {
                StringBuilder sb = (StringBuilder) map.get(c0528g.f945i);
                if (sb == null) {
                    map.put(c0528g.f945i, new StringBuilder(c0528g.f944h));
                } else {
                    sb.append((char) 1);
                    sb.append(c0528g.f944h);
                }
            }
            HashMap map2 = new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                map2.put(entry.getKey(), ((StringBuilder) entry.getValue()).toString());
            }
            return map2;
        }
    }

    public SendManager(EmasSender emasSender, DiskCacheManager c0526e) {
        this.f952b = emasSender;
        this.mDiskCacheManager = c0526e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m649c(EmasLog c0527f) {
        f950a.execute(new b(c0527f, this.f953d, this.f954f));
    }

    /* renamed from: b */
    public void m656b(EmasSingleLog c0528g) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(c0528g);
        m654a(arrayList);
    }

    /* renamed from: e */
    public void m657e() {
        if (this.mDiskCacheManager != null && f950a.getQueue().isEmpty()) {
            new Thread(new Runnable() { // from class: com.alibaba.sdk.android.emas.j.1
                @Override // java.lang.Runnable
                public void run() {
                    EmasLog c0527f;
                    SendManager.this.mDiskCacheManager.clear();
                    if (SendManager.f950a.getQueue().size() > SendManager.this.f954f || (c0527f = SendManager.this.mDiskCacheManager.get()) == null) {
                        return;
                    }
                    SendManager.this.m649c(c0527f);
                }
            }).start();
        }
    }

    public void init(Context context, String str, String str2, String str3, String str4, String str5) {
        this.mSendService.init(context.getApplicationContext(), str, str2, str3, str4, str5);
    }

    public void openHttp(boolean z) {
        this.mSendService.openHttp = Boolean.valueOf(z);
    }

    public void setHost(String str) {
        this.mSendService.changeHost(str);
    }

    public void setUserNick(String str) {
        this.mSendService.userNick = str;
    }

    /* renamed from: a */
    public void m653a(String str) {
        this.mSendService.appSecret = str;
    }

    /* renamed from: a */
    public void m652a(PreSendHandler preSendHandler) {
        this.f951a = preSendHandler;
    }

    /* renamed from: a */
    public void m655a(boolean z) {
        this.f953d = z;
    }

    /* renamed from: a */
    public void m651a(int i) {
        if (i >= 10) {
            this.f954f = 9;
        } else {
            this.f954f = i;
        }
    }

    /* renamed from: a */
    public void m654a(List<EmasSingleLog> list) {
        m649c(new EmasLog(list));
    }

    /* renamed from: a */
    public SendService m650a() {
        return this.mSendService;
    }
}
