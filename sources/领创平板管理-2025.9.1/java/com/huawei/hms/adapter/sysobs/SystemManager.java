package com.huawei.hms.adapter.sysobs;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class SystemManager {

    /* renamed from: a */
    public static SystemManager f4345a = new SystemManager();

    /* renamed from: b */
    public static final Object f4346b = new Object();

    /* renamed from: c */
    public static SystemNotifier f4347c = new C1474a();

    public static SystemManager getInstance() {
        return f4345a;
    }

    public static SystemNotifier getSystemNotifier() {
        return f4347c;
    }

    public void notifyResolutionResult(Intent intent, String str) {
        f4347c.notifyObservers(intent, str);
    }

    public void notifyUpdateResult(int i) {
        f4347c.notifyObservers(i);
    }

    /* renamed from: com.huawei.hms.adapter.sysobs.SystemManager$a */
    public static class C1474a implements SystemNotifier {

        /* renamed from: a */
        public final List<SystemObserver> f4348a = new ArrayList();

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void notifyObservers(Intent intent, String str) {
            synchronized (SystemManager.f4346b) {
                Iterator<SystemObserver> it = this.f4348a.iterator();
                while (it.hasNext()) {
                    if (it.next().onSolutionResult(intent, str)) {
                        it.remove();
                    }
                }
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void registerObserver(SystemObserver systemObserver) {
            if (systemObserver == null || this.f4348a.contains(systemObserver)) {
                return;
            }
            synchronized (SystemManager.f4346b) {
                this.f4348a.add(systemObserver);
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void unRegisterObserver(SystemObserver systemObserver) {
            synchronized (SystemManager.f4346b) {
                this.f4348a.remove(systemObserver);
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void notifyObservers(int i) {
            synchronized (SystemManager.f4346b) {
                Iterator<SystemObserver> it = this.f4348a.iterator();
                while (it.hasNext()) {
                    if (it.next().onUpdateResult(i)) {
                        it.remove();
                    }
                }
            }
        }
    }
}
