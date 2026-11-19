package com.alibaba.sdk.android.emas;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.alibaba.sdk.android.emas.C0530i;
import com.alibaba.sdk.android.tbrest.rest.C0604e;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import java.lang.ref.WeakReference;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public class EmasSender {
    public static final int BUILD_REQ_DATA_DONE = 1;
    public static final String TAG = "EmasSender";
    public static Handler sHandler;
    public boolean mBackground;
    public C0524c mCacheManager;
    public C0526e mDiskCacheManager;
    public final ExecutorService mPackDataExecutor;
    public final C0531j mSendManager;
    public final int mSingleLogLimitCapacity;

    public static final class Builder {
        public String appId;
        public String appKey;
        public String appSecret;
        public String appVersion;
        public String channel;
        public Application context;
        public String host;
        public boolean openHttp;
        public PreSendHandler preSendHandler;
        public String userNick;
        public String businessKey = "common";
        public boolean cache = true;
        public int cacheLimitCount = 20;
        public int singleLogLimitCapacity = 204800;
        public int cacheLimitCapacity = 2097152;
        public boolean diskCache = true;
        public int diskCacheLimitCount = 50;
        public int diskCacheLimitCapacity = 104857600;
        public int diskCacheLimitDay = 5;
        public boolean sendDiskCacheBackground = false;
        public int maxSendDiskCacheQueueCount = 0;

        public Builder appId(String str) {
            this.appId = str;
            return this;
        }

        public Builder appKey(String str) {
            this.appKey = str;
            return this;
        }

        public Builder appSecret(String str) {
            this.appSecret = str;
            return this;
        }

        public Builder appVersion(String str) {
            this.appVersion = str;
            return this;
        }

        public EmasSender build() {
            return new EmasSender(this);
        }

        public Builder businessKey(String str) {
            this.businessKey = str;
            return this;
        }

        public Builder cache(boolean z) {
            this.cache = z;
            return this;
        }

        public Builder cacheLimitCount(int i) {
            this.cacheLimitCount = i;
            return this;
        }

        public Builder channel(String str) {
            this.channel = str;
            return this;
        }

        public Builder context(Application application) {
            this.context = application;
            return this;
        }

        public Builder diskCache(boolean z) {
            this.diskCache = z;
            return this;
        }

        public Builder diskCacheLimitCount(int i) {
            this.diskCacheLimitCount = i;
            return this;
        }

        public Builder diskCacheLimitDay(int i) {
            this.diskCacheLimitDay = i;
            return this;
        }

        public Builder host(String str) {
            this.host = str;
            return this;
        }

        public Builder openHttp(boolean z) {
            this.openHttp = z;
            return this;
        }

        public Builder preSendHandler(PreSendHandler preSendHandler) {
            this.preSendHandler = preSendHandler;
            return this;
        }

        public Builder setMaxSendDiskCacheQueueCount(int i) {
            this.maxSendDiskCacheQueueCount = i;
            return this;
        }

        public Builder setSendDiskCacheBackground(boolean z) {
            this.sendDiskCacheBackground = z;
            return this;
        }

        public Builder userNick(String str) {
            this.userNick = str;
            return this;
        }
    }

    /* renamed from: com.alibaba.sdk.android.emas.EmasSender$a */
    public static class HandlerC0520a extends Handler {

        /* renamed from: a */
        public final WeakReference<EmasSender> f914a;

        public HandlerC0520a(Looper looper, EmasSender emasSender) {
            super(looper);
            this.f914a = new WeakReference<>(emasSender);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                LogUtil.m997e("EmasSender unknown msg");
                return;
            }
            try {
                C0528g c0528g = (C0528g) message.obj;
                if (c0528g == null) {
                    LogUtil.m996d("EmasSender EmasHandler singleLog is null");
                    return;
                }
                EmasSender emasSender = this.f914a.get();
                if (emasSender == null) {
                    LogUtil.m996d("EmasSender EmasHandler weakRef sender get null");
                } else if (emasSender.mCacheManager != null) {
                    emasSender.mCacheManager.add(c0528g);
                } else {
                    emasSender.mSendManager.m656b(c0528g);
                }
            } catch (Exception unused) {
                LogUtil.m997e("EmasSender EmasHandler error:");
            }
        }
    }

    /* renamed from: com.alibaba.sdk.android.emas.EmasSender$b */
    public class RunnableC0521b implements Runnable {

        /* renamed from: a */
        public final Map<String, String> f916a;

        /* renamed from: b */
        public final long f917b;

        /* renamed from: d */
        public final int f918d;

        /* renamed from: d */
        public final String f919d;

        /* renamed from: e */
        public final String f920e;

        /* renamed from: f */
        public final String f921f;

        /* renamed from: g */
        public final String f922g;

        public RunnableC0521b(long j, String str, int i, String str2, String str3, String str4, Map<String, String> map) {
            this.f917b = j;
            this.f919d = str;
            this.f918d = i;
            this.f920e = str2;
            this.f921f = str3;
            this.f922g = str4;
            this.f916a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strM988a = C0604e.m988a(EmasSender.this.mSendManager.m650a(), EmasSender.this.mSendManager.m650a().getAppKey(), this.f917b, this.f919d, this.f918d, this.f920e, this.f921f, this.f922g, this.f916a);
            if (TextUtils.isEmpty(strM988a)) {
                LogUtil.m996d("EmasSender send failed. build data is null.");
                return;
            }
            int length = strM988a.getBytes(Charset.forName("UTF-8")).length;
            if (length <= EmasSender.this.mSingleLogLimitCapacity) {
                EmasSender.sHandler.obtainMessage(1, new C0528g(String.valueOf(this.f918d), strM988a, this.f917b)).sendToTarget();
            } else {
                LogUtil.m996d("EmasSender send failed. build data is exceed limit. current length: " + length);
            }
        }
    }

    public void changeHost(String str) {
        this.mSendManager.setHost(str);
    }

    public void flush() {
        C0524c c0524c = this.mCacheManager;
        if (c0524c != null) {
            c0524c.flush();
        }
    }

    public boolean isBackground() {
        return this.mBackground;
    }

    public void openHttp(boolean z) {
        this.mSendManager.openHttp(z);
    }

    public void send(long j, String str, int i, String str2, String str3, String str4, Map<String, String> map) {
        if (TextUtils.isEmpty(this.mSendManager.m650a().getAppKey()) || TextUtils.isEmpty(this.mSendManager.m650a().getChangeHost())) {
            LogUtil.m996d("EmasSender send failed. appkey or host is empty.");
        } else {
            this.mPackDataExecutor.submit(new RunnableC0521b(j, str, i, str2, str3, str4, map));
        }
    }

    public void setUserNick(String str) {
        this.mSendManager.setUserNick(str);
    }

    public EmasSender(Builder builder) {
        this.mBackground = false;
        this.mPackDataExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.alibaba.sdk.android.emas.EmasSender.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "EmasSenderPackDataThread");
            }
        });
        this.mSingleLogLimitCapacity = builder.singleLogLimitCapacity;
        if (builder.diskCache) {
            C0526e c0526e = new C0526e(builder.context, builder.host, builder.appKey, builder.businessKey);
            this.mDiskCacheManager = c0526e;
            c0526e.m629a(builder.diskCacheLimitCount, builder.diskCacheLimitCapacity, builder.diskCacheLimitDay);
        }
        C0531j c0531j = new C0531j(this, this.mDiskCacheManager);
        this.mSendManager = c0531j;
        c0531j.init(builder.context, builder.appId, builder.appKey, builder.appVersion, builder.channel, builder.userNick);
        this.mSendManager.setHost(builder.host);
        this.mSendManager.m653a(builder.appSecret);
        this.mSendManager.openHttp(builder.openHttp);
        this.mSendManager.m655a(builder.sendDiskCacheBackground);
        this.mSendManager.m651a(builder.maxSendDiskCacheQueueCount);
        this.mSendManager.m652a(builder.preSendHandler);
        this.mSendManager.m657e();
        if (builder.cache && builder.cacheLimitCount > 1) {
            this.mCacheManager = new C0524c(this.mSendManager, builder.cacheLimitCount, builder.cacheLimitCapacity);
            C0530i c0530i = new C0530i();
            c0530i.m641a(new C0530i.a() { // from class: com.alibaba.sdk.android.emas.EmasSender.2
                @Override // com.alibaba.sdk.android.emas.C0530i.a
                /* renamed from: c */
                public void mo608c() {
                    EmasSender.this.mBackground = false;
                }

                @Override // com.alibaba.sdk.android.emas.C0530i.a
                /* renamed from: d */
                public void mo609d() {
                    EmasSender.this.mBackground = true;
                    EmasSender.this.mCacheManager.flush();
                }
            });
            builder.context.registerActivityLifecycleCallbacks(c0530i);
        }
        sHandler = new HandlerC0520a(Looper.getMainLooper(), this);
    }
}
