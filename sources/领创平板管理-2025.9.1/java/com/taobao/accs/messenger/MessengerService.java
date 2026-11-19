package com.taobao.accs.messenger;

import android.app.Service;
import android.os.Messenger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public abstract class MessengerService extends Service {
    public static final String INTENT = "intent";

    /* renamed from: a */
    public ExecutorService f6186a = Executors.newSingleThreadExecutor();

    /* renamed from: b */
    public Messenger f6187b = new Messenger(new AccsMessengerHandler(this));

    /* renamed from: a */
    public static /* synthetic */ void m5609a() {
    }
}
