package com.taobao.accs.dispatch;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.taobao.accs.messenger.AccsMessengerServiceBinder;
import com.taobao.accs.messenger.AccsIntentDeliveryScheduler;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.Utils;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class IntentDispatch {
    public static final String TAG = "IntentDispatch";
    public static AccsIntentDeliveryScheduler binderDispatcher;

    public static void dispatchIntent(Context context, Intent intent, String str) {
        if (context == null || intent == null) {
            ALog.m5728e(TAG, "dispatchIntent context or intent is null", new Object[0]);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            if (!Utils.isTarget26(applicationContext)) {
                ALog.m5729i(TAG, "dispatchIntent start service ", new Object[0]);
                applicationContext.startService(intent);
            } else {
                if (binderDispatcher == null) {
                    binderDispatcher = new AccsIntentDeliveryScheduler(new AccsMessengerServiceBinder(applicationContext));
                }
                binderDispatcher.m5622a(str, intent);
            }
        } catch (Exception e) {
            ALog.m5728e(TAG, "dispatchIntent method call with exception ", e.toString());
            e.printStackTrace();
        }
    }

    public static Intent filterExtras(Intent intent) {
        Intent intent2 = (Intent) intent.clone();
        intent2.replaceExtras(new Bundle());
        return intent2;
    }

    public static final String printBundle(Bundle bundle, int i) {
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            for (int i2 = 0; i2 < i; i2++) {
                sb.append('\t');
            }
            if (obj instanceof String) {
                sb.append("String\t");
                sb.append(str);
                sb.append('\t');
                sb.append(obj);
                sb.append('\n');
            } else if (obj instanceof Integer) {
                sb.append("int\t");
                sb.append(str);
                sb.append('\t');
                sb.append(obj);
                sb.append('\n');
            } else if (obj instanceof Long) {
                sb.append("long\t");
                sb.append(str);
                sb.append('\t');
                sb.append(obj);
                sb.append('\n');
            } else if (obj instanceof Boolean) {
                sb.append("boolean\t");
                sb.append(str);
                sb.append('\t');
                sb.append(obj);
                sb.append('\n');
            } else if (obj instanceof Bundle) {
                sb.append("Bundle\t");
                sb.append(str);
                sb.append('\t');
                sb.append('\n');
                sb.append(printBundle((Bundle) obj, i + 1));
            } else {
                sb.append("unknown\t");
                sb.append(str);
                sb.append('\t');
                sb.append(obj);
                sb.append('\n');
            }
        }
        return sb.toString();
    }
}
