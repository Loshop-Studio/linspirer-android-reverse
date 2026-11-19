package anet.channel.strategy;

import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.util.ALog;
import java.io.File;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.d */
/* loaded from: classes.dex */
public class RunnableC0393d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f489a;

    /* renamed from: b */
    public final /* synthetic */ StrategyInfoHolder f490b;

    public RunnableC0393d(StrategyInfoHolder strategyInfoHolder, String str) {
        this.f490b = strategyInfoHolder;
        this.f489a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ALog.m340i("awcn.StrategyInfoHolder", "start loading strategy files", null, new Object[0]);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (AwcnConfig.isAsyncLoadStrategyEnable()) {
                ALog.m340i("awcn.StrategyInfoHolder", "load strategy async", null, new Object[0]);
                if (!TextUtils.isEmpty(this.f489a)) {
                    this.f490b.m269a(this.f489a, true);
                }
                StrategyConfig strategyConfig = (StrategyConfig) C0408m.m316a("StrategyConfig", null);
                if (strategyConfig != null) {
                    strategyConfig.m262b();
                    strategyConfig.m259a(this.f490b);
                    synchronized (this.f490b) {
                        this.f490b.f464b = strategyConfig;
                    }
                }
            }
            File[] fileArrM321b = C0408m.m321b();
            if (fileArrM321b == null) {
                return;
            }
            int i = 0;
            for (int i2 = 0; i2 < fileArrM321b.length && i < 2; i2++) {
                File file = fileArrM321b[i2];
                if (!file.isDirectory()) {
                    String name = file.getName();
                    if (!name.equals(this.f489a) && !name.startsWith("StrategyConfig")) {
                        this.f490b.m269a(name, false);
                        i++;
                    }
                }
            }
            ALog.m340i("awcn.StrategyInfoHolder", "end loading strategy files", null, "total cost", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
        } catch (Exception unused) {
        }
    }
}
