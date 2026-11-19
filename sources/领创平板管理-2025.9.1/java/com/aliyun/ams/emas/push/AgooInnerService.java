package com.aliyun.ams.emas.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.AgooRegistrationPreferences;
import com.taobao.accs.dispatch.IntentDispatch;
import com.taobao.accs.utl.ALog;
import com.taobao.agoo.TaobaoBaseIntentService;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AgooInnerService extends TaobaoBaseIntentService {
    /* renamed from: a */
    public static final String m1023a(Bundle bundle, int i) {
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
                sb.append(m1023a((Bundle) obj, i + 1));
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

    @Override // com.taobao.agoo.TaobaoBaseIntentService, org.android.agoo.control.BaseIntentService
    public void onError(Context context, String str) {
        ALog.m5729i("AgooInnerService", CompilerOutline.m1760e("onError:", str), new Object[0]);
    }

    @Override // com.taobao.agoo.TaobaoBaseIntentService, org.android.agoo.control.BaseIntentService
    public void onMessage(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(AgooConstants.MESSAGE_BODY);
        StringBuilder sbM1770o = CompilerOutline.m1770o("onMessage:id:", intent.getStringExtra(AgooConstants.MESSAGE_ID), ", task_id:", intent.getStringExtra(AgooConstants.MESSAGE_TASK_ID), ", body:");
        sbM1770o.append(stringExtra);
        ALog.m5729i("AgooInnerService", sbM1770o.toString(), new Object[0]);
        ALog.m5729i("AgooInnerService", m1023a(intent.getExtras(), 1), new Object[0]);
        Intent intent2 = new Intent();
        intent2.putExtras(intent.getExtras());
        intent2.setAction("com.alibaba.sdk.android.push.RECEIVE");
        intent2.setPackage(context.getPackageName());
        try {
            Class<?> cls = AgooRegistrationPreferences.f3912c;
            if (cls == null) {
                ALog.m5726d("AgooInnerService", "Send broadcast", new Object[0]);
                context.sendBroadcast(intent2, context.getPackageName() + ".AGOO");
            } else {
                ALog.m5726d("AgooInnerService", "Start service:" + cls.getName(), new Object[0]);
                intent2.setClass(context, cls);
                IntentDispatch.dispatchIntent(context, intent2, cls.getName());
            }
        } catch (Throwable th) {
            ALog.m5727e("AgooInnerService", "Send message failed.", th, new Object[0]);
        }
    }

    @Override // com.taobao.agoo.TaobaoBaseIntentService, org.android.agoo.control.BaseIntentService
    public void onRegistered(Context context, String str) {
        ALog.m5729i("AgooInnerService", CompilerOutline.m1760e("onRegistered:", str), new Object[0]);
    }

    @Override // com.taobao.agoo.TaobaoBaseIntentService
    public void onUnregistered(Context context, String str) {
        ALog.m5729i("AgooInnerService", CompilerOutline.m1760e("onUnregistered:", str), new Object[0]);
    }
}
