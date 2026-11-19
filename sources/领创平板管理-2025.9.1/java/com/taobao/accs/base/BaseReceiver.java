package com.taobao.accs.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.taobao.accs.internal.ReceiverImpl;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class BaseReceiver extends BroadcastReceiver {
    public static final String TAG = BaseReceiver.class.getSimpleName();
    public IBaseReceiver baseReceiver;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (this.baseReceiver == null) {
                this.baseReceiver = new ReceiverImpl();
            }
            this.baseReceiver.onReceive(context, intent);
        } catch (Exception e) {
            ALog.m5728e(TAG, "build ReceiverImpl error", e.getMessage());
        }
    }
}
