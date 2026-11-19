package com.taobao.accs.messenger;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import java.util.HashMap;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.messenger.a */
/* loaded from: classes.dex */
public class AccsMessengerServiceBinder {

    /* renamed from: a */
    public Context f6188a;

    /* renamed from: b */
    public HashMap<String, AccsMessengerBinding> f6189b = new HashMap<>();

    public AccsMessengerServiceBinder(Context context) {
        this.f6188a = context;
    }

    /* renamed from: a */
    public AccsMessengerBinding m5611a(String str) {
        AccsMessengerBinding serviceConnectionC1935d = this.f6189b.get(str);
        if (serviceConnectionC1935d == null || !serviceConnectionC1935d.m5616a()) {
            return null;
        }
        return serviceConnectionC1935d;
    }

    /* renamed from: b */
    public void m5614b(String str, AccsMessengerBinding serviceConnectionC1935d) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f6189b.remove(str, serviceConnectionC1935d);
        } else if (this.f6189b.get(str) == serviceConnectionC1935d) {
            this.f6189b.remove(str);
        }
    }

    /* renamed from: a */
    public void m5613a(String str, AccsMessengerBinding serviceConnectionC1935d) {
        m5614b(str, serviceConnectionC1935d);
        this.f6188a.unbindService(serviceConnectionC1935d);
    }

    /* renamed from: a */
    public void m5612a(String str, Intent intent) {
        AccsMessengerBinding serviceConnectionC1935d = this.f6189b.get(str);
        if (serviceConnectionC1935d != null) {
            if (serviceConnectionC1935d.m5617b()) {
                if (!serviceConnectionC1935d.m5618c()) {
                    return;
                } else {
                    m5613a(str, serviceConnectionC1935d);
                }
            } else {
                this.f6189b.remove(str);
            }
            serviceConnectionC1935d = null;
        }
        if (serviceConnectionC1935d == null) {
            AccsMessengerBinding serviceConnectionC1935d2 = new AccsMessengerBinding(this.f6188a, str, this);
            this.f6189b.put(str, serviceConnectionC1935d2);
            this.f6188a.bindService(m5610a(intent), serviceConnectionC1935d2, 1);
        }
    }

    /* renamed from: a */
    public static Intent m5610a(Intent intent) {
        Intent intent2 = (Intent) intent.clone();
        intent2.replaceExtras(new Bundle());
        return intent2;
    }
}
