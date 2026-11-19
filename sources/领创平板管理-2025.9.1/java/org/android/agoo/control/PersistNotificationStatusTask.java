package org.android.agoo.control;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.e */
/* loaded from: classes.dex */
public class PersistNotificationStatusTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6474a;

    /* renamed from: b */
    public final /* synthetic */ String f6475b;

    /* renamed from: c */
    public final /* synthetic */ AgooFactory f6476c;

    public PersistNotificationStatusTask(AgooFactory agooFactory, String str, String str2) {
        this.f6476c = agooFactory;
        this.f6474a = str;
        this.f6475b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6476c.updateMsgStatus(this.f6474a, this.f6475b);
    }
}
