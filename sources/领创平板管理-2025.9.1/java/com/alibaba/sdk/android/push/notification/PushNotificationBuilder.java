package com.alibaba.sdk.android.push.notification;

import android.app.Notification;
import android.content.Context;

/* renamed from: com.alibaba.sdk.android.push.notification.c */
/* loaded from: classes.dex */
public abstract class PushNotificationBuilder {

    /* renamed from: a */
    public String f1327a;

    /* renamed from: b */
    public String f1328b;

    /* renamed from: d */
    public String f1330d;

    /* renamed from: e */
    public String f1331e;

    /* renamed from: f */
    public String f1332f;

    /* renamed from: h */
    public String f1334h;

    /* renamed from: i */
    public String f1335i;

    /* renamed from: j */
    public String f1336j;

    /* renamed from: k */
    public String f1337k;

    /* renamed from: c */
    public int f1329c = 0;

    /* renamed from: g */
    public int f1333g = 0;

    /* renamed from: a */
    public abstract Notification mo883a(Context context, PushData pushData, NotificationConfigure notificationConfigure);

    /* renamed from: a */
    public String m931a() {
        return this.f1327a;
    }

    /* renamed from: a */
    public void m932a(int i) {
        this.f1329c = i;
    }

    /* renamed from: a */
    public void m933a(String str) {
        this.f1327a = str;
    }

    /* renamed from: b */
    public String m934b() {
        return this.f1328b;
    }

    /* renamed from: b */
    public void m935b(int i) {
        this.f1333g = i;
    }

    /* renamed from: b */
    public void m936b(String str) {
        this.f1328b = str;
    }

    /* renamed from: c */
    public int m937c() {
        return this.f1329c;
    }

    /* renamed from: c */
    public void m938c(String str) {
        this.f1330d = str;
    }

    /* renamed from: d */
    public String m939d() {
        return this.f1330d;
    }

    /* renamed from: d */
    public void m940d(String str) {
        this.f1332f = str;
    }

    /* renamed from: e */
    public void m941e(String str) {
        this.f1334h = str;
    }

    /* renamed from: f */
    public void m942f(String str) {
        this.f1335i = str;
    }

    /* renamed from: g */
    public void m943g(String str) {
        this.f1336j = str;
    }

    /* renamed from: h */
    public void m944h(String str) {
        this.f1337k = str;
    }

    /* renamed from: i */
    public void m945i(String str) {
        this.f1331e = str;
    }
}
