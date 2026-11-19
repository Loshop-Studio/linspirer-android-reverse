package com.huawei.hem;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.agoo.p074a.p075a.AbstractC2002b;
import java.util.ArrayList;

/* compiled from: FnfSDKProxy.java */
/* renamed from: com.huawei.hem.l6 */
/* loaded from: classes.dex */
public class C1099l6 {

    /* renamed from: a */
    public InterfaceC1150n6 f3152a;

    /* renamed from: b */
    public InterfaceC1175o6 f3153b;

    /* renamed from: c */
    public BroadcastReceiver f3154c = new a();

    /* renamed from: d */
    public InterfaceC1125m6 f3155d;

    /* compiled from: FnfSDKProxy.java */
    /* renamed from: com.huawei.hem.l6$a */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            InterfaceC1125m6 interfaceC1125m6;
            String action = intent.getAction();
            if (TextUtils.equals("read.installfilter", action)) {
                ArrayList<CharSequence> charSequenceArrayListExtra = intent.getCharSequenceArrayListExtra("list.installfilter");
                InterfaceC1175o6 interfaceC1175o6 = C1099l6.this.f3153b;
                if (interfaceC1175o6 != null) {
                    interfaceC1175o6.m2429a(charSequenceArrayListExtra);
                    return;
                }
                return;
            }
            if (TextUtils.equals("log.executor", action)) {
                String stringExtra = intent.getStringExtra(NotificationCompat.CATEGORY_MESSAGE);
                InterfaceC1150n6 interfaceC1150n6 = C1099l6.this.f3152a;
                if (interfaceC1150n6 != null) {
                    interfaceC1150n6.m2406a(stringExtra);
                    return;
                }
                return;
            }
            if ("com.fnf.iptables.BRODCAST_IPTABLE_CMD".equals(intent.getAction())) {
                intent.getStringExtra(AbstractC2002b.JSON_CMD);
                if (intent.getIntExtra("state", 0) != 1) {
                    String stringExtra2 = intent.getStringExtra(BaseMonitor.COUNT_ERROR);
                    InterfaceC1125m6 interfaceC1125m62 = C1099l6.this.f3155d;
                    if (interfaceC1125m62 != null) {
                        interfaceC1125m62.mo2348b(stringExtra2);
                        return;
                    }
                    return;
                }
                ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("result");
                if (stringArrayListExtra == null || stringArrayListExtra.size() <= 0 || (interfaceC1125m6 = C1099l6.this.f3155d) == null) {
                    return;
                }
                interfaceC1125m6.mo2347a(stringArrayListExtra);
            }
        }
    }
}
