package com.google.zxing.client.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

/* loaded from: classes.dex */
public final class InactivityTimer {
    public static final long INACTIVITY_DELAY_MS = 300000;
    public static final String TAG = "InactivityTimer";
    public Runnable callback;
    public final Context context;
    public boolean onBattery;
    public boolean registered = false;
    public final BroadcastReceiver powerStatusReceiver = new PowerStatusReceiver();
    public Handler handler = new Handler();

    public final class PowerStatusReceiver extends BroadcastReceiver {
        public PowerStatusReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                final boolean z = intent.getIntExtra("plugged", -1) <= 0;
                InactivityTimer.this.handler.post(new Runnable() { // from class: com.google.zxing.client.android.InactivityTimer.PowerStatusReceiver.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InactivityTimer.this.onBattery(z);
                    }
                });
            }
        }
    }

    public InactivityTimer(Context context, Runnable runnable) {
        this.context = context;
        this.callback = runnable;
    }

    private void cancelCallback() {
        this.handler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBattery(boolean z) {
        this.onBattery = z;
        if (this.registered) {
            activity();
        }
    }

    private void registerReceiver() {
        if (this.registered) {
            return;
        }
        this.context.registerReceiver(this.powerStatusReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.registered = true;
    }

    private void unregisterReceiver() {
        if (this.registered) {
            this.context.unregisterReceiver(this.powerStatusReceiver);
            this.registered = false;
        }
    }

    public void activity() {
        cancelCallback();
        if (this.onBattery) {
            this.handler.postDelayed(this.callback, INACTIVITY_DELAY_MS);
        }
    }

    public void cancel() {
        cancelCallback();
        unregisterReceiver();
    }

    public void start() {
        registerReceiver();
        activity();
    }
}
