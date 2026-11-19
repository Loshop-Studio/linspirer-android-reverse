package com.alibaba.sdk.android.beacon;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.zxing.client.android.InactivityTimer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class Beacon {

    /* renamed from: a */
    public int f857a;

    /* renamed from: a */
    public final HandlerThread f858a;

    /* renamed from: a */
    public final BeaconRequestCodec f859a;

    /* renamed from: a */
    public final List<OnUpdateListener> f860a;

    /* renamed from: b */
    public final List<OnServiceErrListener> f861b;
    public final boolean isStartPoll;
    public final String mAppKey;
    public final String mAppSecret;
    public final Map<String, String> mExtras;
    public Handler mHandler;
    public final long mLoopInterval;

    public final class BeaconHandler extends Handler {
        public static final int MSG_ADD_ERR_LISTENER = 6;
        public static final int MSG_ADD_UPDATE_LISTENER = 4;
        public static final int MSG_ERR_CALLBACK = 7;
        public static final int MSG_REMOVE_UPDATE_LISTENER = 5;
        public static final int MSG_START = 0;
        public static final int MSG_START_POLLING = 2;
        public static final int MSG_STOP_POLLING = 3;
        public static final int MSG_UPDATE = 1;

        public BeaconHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                switch (message.what) {
                    case 0:
                        Beacon.this.m555c((Context) message.obj);
                        break;
                    case 1:
                        Beacon.this.m557d((Context) message.obj);
                        break;
                    case 2:
                        Beacon.this.m558e((Context) message.obj);
                        break;
                    case 3:
                        Beacon.this.m549b();
                        break;
                    case 4:
                        Beacon.this.m543a((OnUpdateListener) message.obj);
                        break;
                    case 5:
                        Beacon.this.m552b((OnUpdateListener) message.obj);
                        break;
                    case 6:
                        Beacon.this.m542a((OnServiceErrListener) message.obj);
                        break;
                    case 7:
                        Beacon.this.m551b((Error) message.obj);
                        break;
                }
            } catch (Exception e) {
                Log.i("beacon", e.getMessage(), e);
            }
        }
    }

    public static final class Builder {
        public String mAppKey;
        public String mAppSecret;
        public Map<String, String> mExtras = new HashMap();
        public long mLoopInterval = InactivityTimer.INACTIVITY_DELAY_MS;
        public boolean isStartPoll = false;

        public Builder appKey(String str) {
            this.mAppKey = str.trim();
            return this;
        }

        public Builder appSecret(String str) {
            this.mAppSecret = str.trim();
            return this;
        }

        public Beacon build() {
            return new Beacon(this);
        }

        public Builder defaultConfig() {
            this.mAppKey = "24657847";
            this.mAppSecret = "f30fc0937f2b1e9e50a1b7134f1ddb10";
            return this;
        }

        public Builder extras(Map<String, String> map) {
            this.mExtras.putAll(map);
            return this;
        }

        public Builder loopInterval(long j) {
            if (j < 60000) {
                this.mLoopInterval = 60000L;
            } else {
                this.mLoopInterval = j;
            }
            return this;
        }

        public Builder startPoll(boolean z) {
            this.isStartPoll = z;
            return this;
        }
    }

    public static final class Config {
        public final String key;
        public final String value;

        public Config(String str, String str2) {
            this.key = str;
            this.value = str2;
        }
    }

    public static final class Error {
        public final String errCode;
        public final String errMsg;

        public Error(String str, String str2) {
            this.errCode = str;
            this.errMsg = str2;
        }
    }

    public interface OnServiceErrListener {
        void onErr(Error error);
    }

    public interface OnUpdateListener {
        void onUpdate(List<Config> list);
    }

    public Beacon(Builder builder) {
        this.f860a = new ArrayList();
        this.f861b = new ArrayList();
        this.f857a = 255;
        this.mAppKey = builder.mAppKey;
        this.mAppSecret = builder.mAppSecret;
        this.mExtras = builder.mExtras;
        this.mLoopInterval = builder.mLoopInterval;
        this.isStartPoll = builder.isStartPoll;
        this.f859a = new BeaconRequestCodec(this);
        HandlerThread handlerThread = new HandlerThread("Beacon Daemon");
        this.f858a = handlerThread;
        handlerThread.start();
        m540a();
    }

    /* renamed from: a */
    private void m540a() {
        this.mHandler = new BeaconHandler(this.f858a.getLooper());
    }

    /* renamed from: a */
    private void m541a(Context context) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = context;
        this.mHandler.sendMessage(messageObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m542a(OnServiceErrListener onServiceErrListener) {
        this.f861b.add(onServiceErrListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m543a(OnUpdateListener onUpdateListener) {
        this.f860a.add(onUpdateListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m549b() {
        this.mHandler.getLooper().quitSafely();
        m540a();
    }

    /* renamed from: b */
    private void m550b(Context context) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 2;
        messageObtain.obj = context;
        this.mHandler.sendMessage(messageObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m551b(Error error) {
        Iterator<OnServiceErrListener> it = this.f861b.iterator();
        while (it.hasNext()) {
            it.next().onErr(error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m552b(OnUpdateListener onUpdateListener) {
        this.f860a.remove(onUpdateListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m555c(Context context) {
        if (this.isStartPoll) {
            m550b(context);
            this.f857a = 1;
        } else {
            this.f857a = 1;
            m541a(context);
            stop();
            this.f857a = 255;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m557d(Context context) {
        this.f859a.m567a(context, this.mAppKey, this.mAppSecret, this.mExtras);
        List<Config> listM566a = this.f859a.m566a();
        Iterator<OnUpdateListener> it = this.f860a.iterator();
        while (it.hasNext()) {
            it.next().onUpdate(listM566a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m558e(Context context) {
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
        }
        m541a(context);
        this.mHandler.sendEmptyMessageDelayed(2, this.mLoopInterval);
    }

    private boolean isStarted() {
        return this.f857a == 1;
    }

    public static void setPrepare(boolean z) {
        BeaconRuntimeFlags.f862a = z;
    }

    /* renamed from: a */
    public void m559a(Error error) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 7;
        messageObtain.obj = error;
        this.mHandler.sendMessage(messageObtain);
    }

    public void addServiceErrListener(OnServiceErrListener onServiceErrListener) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 6;
        messageObtain.obj = onServiceErrListener;
        this.mHandler.sendMessage(messageObtain);
    }

    public void addUpdateListener(OnUpdateListener onUpdateListener) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 4;
        messageObtain.obj = onUpdateListener;
        this.mHandler.sendMessage(messageObtain);
    }

    public List<Config> getConfigs() {
        return this.f859a.m566a();
    }

    public void start(Context context) {
        if (isStarted()) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 0;
        messageObtain.obj = context;
        this.mHandler.sendMessage(messageObtain);
    }

    public void stop() {
        if (isStarted()) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            this.mHandler.sendMessage(messageObtain);
        }
    }
}
