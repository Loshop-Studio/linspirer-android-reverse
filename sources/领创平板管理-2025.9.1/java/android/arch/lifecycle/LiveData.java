package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.C0811a;
import com.huawei.hem.C0915e;
import com.huawei.hem.C1067k;
import com.huawei.hem.InterfaceC1042j;
import com.huawei.hem.InterfaceC1193p;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class LiveData<T> {
    public static final Object NOT_SET = new Object();
    public static final int START_VERSION = -1;
    public boolean mDispatchInvalidated;
    public boolean mDispatchingValue;
    public final Object mDataLock = new Object();
    public C0915e<InterfaceC1193p<T>, LiveData<T>.AbstractC0002c> mObservers = new C0915e<>();
    public int mActiveCount = 0;
    public volatile Object mData = NOT_SET;
    public volatile Object mPendingData = NOT_SET;
    public int mVersion = -1;
    public final Runnable mPostValueRunnable = new RunnableC0000a();

    public class LifecycleBoundObserver extends LiveData<T>.AbstractC0002c implements GenericLifecycleObserver {

        /* renamed from: e */
        @NonNull
        public final InterfaceC1042j f3e;

        public LifecycleBoundObserver(@NonNull InterfaceC1042j interfaceC1042j, InterfaceC1193p<T> interfaceC1193p) {
            super(interfaceC1193p);
            this.f3e = interfaceC1042j;
        }

        @Override // android.arch.lifecycle.GenericLifecycleObserver
        /* renamed from: d */
        public void mo0d(InterfaceC1042j interfaceC1042j, AbstractC0992h.a aVar) {
            if (((C1067k) this.f3e.getLifecycle()).f2994b == AbstractC0992h.b.DESTROYED) {
                LiveData.this.removeObserver(this.f6a);
            } else {
                m10h(((C1067k) this.f3e.getLifecycle()).f2994b.isAtLeast(AbstractC0992h.b.STARTED));
            }
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0002c
        /* renamed from: i */
        public void mo7i() {
            ((C1067k) this.f3e.getLifecycle()).f2993a.mo1549h(this);
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0002c
        /* renamed from: j */
        public boolean mo8j(InterfaceC1042j interfaceC1042j) {
            return this.f3e == interfaceC1042j;
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0002c
        /* renamed from: k */
        public boolean mo9k() {
            return ((C1067k) this.f3e.getLifecycle()).f2994b.isAtLeast(AbstractC0992h.b.STARTED);
        }
    }

    /* renamed from: android.arch.lifecycle.LiveData$a */
    public class RunnableC0000a implements Runnable {
        public RunnableC0000a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.mDataLock) {
                obj = LiveData.this.mPendingData;
                LiveData.this.mPendingData = LiveData.NOT_SET;
            }
            LiveData.this.setValue(obj);
        }
    }

    /* renamed from: android.arch.lifecycle.LiveData$b */
    public class C0001b extends LiveData<T>.AbstractC0002c {
        public C0001b(LiveData liveData, InterfaceC1193p<T> interfaceC1193p) {
            super(interfaceC1193p);
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0002c
        /* renamed from: k */
        public boolean mo9k() {
            return true;
        }
    }

    /* renamed from: android.arch.lifecycle.LiveData$c */
    public abstract class AbstractC0002c {

        /* renamed from: a */
        public final InterfaceC1193p<T> f6a;

        /* renamed from: b */
        public boolean f7b;

        /* renamed from: c */
        public int f8c = -1;

        public AbstractC0002c(InterfaceC1193p<T> interfaceC1193p) {
            this.f6a = interfaceC1193p;
        }

        /* renamed from: h */
        public void m10h(boolean z) {
            if (z == this.f7b) {
                return;
            }
            this.f7b = z;
            boolean z2 = LiveData.this.mActiveCount == 0;
            LiveData.this.mActiveCount += this.f7b ? 1 : -1;
            if (z2 && this.f7b) {
                LiveData.this.onActive();
            }
            if (LiveData.this.mActiveCount == 0 && !this.f7b) {
                LiveData.this.onInactive();
            }
            if (this.f7b) {
                LiveData.this.dispatchingValue(this);
            }
        }

        /* renamed from: i */
        public void mo7i() {
        }

        /* renamed from: j */
        public boolean mo8j(InterfaceC1042j interfaceC1042j) {
            return false;
        }

        /* renamed from: k */
        public abstract boolean mo9k();
    }

    public static void assertMainThread(String str) {
        if (C0811a.m1286c().f2157a.mo1287a()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void considerNotify(LiveData<T>.AbstractC0002c abstractC0002c) {
        if (abstractC0002c.f7b) {
            if (!abstractC0002c.mo9k()) {
                abstractC0002c.m10h(false);
                return;
            }
            int i = abstractC0002c.f8c;
            int i2 = this.mVersion;
            if (i >= i2) {
                return;
            }
            abstractC0002c.f8c = i2;
            abstractC0002c.f6a.onChanged(this.mData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchingValue(@Nullable LiveData<T>.AbstractC0002c abstractC0002c) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (abstractC0002c != null) {
                considerNotify(abstractC0002c);
                abstractC0002c = null;
            } else {
                C0915e<InterfaceC1193p<T>, LiveData<T>.AbstractC0002c> c0915e = this.mObservers;
                C0915e.e eVar = new C0915e.e(null);
                c0915e.f2491c.put(eVar, Boolean.FALSE);
                while (eVar.hasNext()) {
                    considerNotify((AbstractC0002c) ((Map.Entry) eVar.next()).getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    @Nullable
    public T getValue() {
        T t = (T) this.mData;
        if (t != NOT_SET) {
            return t;
        }
        return null;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public boolean hasActiveObservers() {
        return this.mActiveCount > 0;
    }

    public boolean hasObservers() {
        return this.mObservers.f2492d > 0;
    }

    @MainThread
    public void observe(@NonNull InterfaceC1042j interfaceC1042j, @NonNull InterfaceC1193p<T> interfaceC1193p) {
        InterfaceC1042j interfaceC1042j2;
        if (((C1067k) interfaceC1042j.getLifecycle()).f2994b == AbstractC0992h.b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(interfaceC1042j, interfaceC1193p);
        LiveData<T>.AbstractC0002c abstractC0002cMo1548g = this.mObservers.mo1548g(interfaceC1193p, lifecycleBoundObserver);
        if (abstractC0002cMo1548g != null && !abstractC0002cMo1548g.mo8j(interfaceC1042j)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0002cMo1548g != null) {
            return;
        }
        C1067k c1067k = (C1067k) interfaceC1042j.getLifecycle();
        AbstractC0992h.b bVar = c1067k.f2994b;
        AbstractC0992h.b bVar2 = AbstractC0992h.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = AbstractC0992h.b.INITIALIZED;
        }
        C1067k.a aVar = new C1067k.a(lifecycleBoundObserver, bVar2);
        if (c1067k.f2993a.mo1548g(lifecycleBoundObserver, aVar) == null && (interfaceC1042j2 = c1067k.f2995c.get()) != null) {
            boolean z = c1067k.f2996d != 0 || c1067k.f2997e;
            c1067k.f2996d++;
            for (AbstractC0992h.b bVarM2150a = c1067k.m2150a(lifecycleBoundObserver); aVar.f3000a.compareTo(bVarM2150a) < 0 && c1067k.f2993a.f2364e.containsKey(lifecycleBoundObserver); bVarM2150a = c1067k.m2150a(lifecycleBoundObserver)) {
                c1067k.f2999g.add(aVar.f3000a);
                aVar.m2155a(interfaceC1042j2, C1067k.m2149h(aVar.f3000a));
                c1067k.m2153f();
            }
            if (!z) {
                c1067k.m2154g();
            }
            c1067k.f2996d--;
        }
    }

    @MainThread
    public void observeForever(@NonNull InterfaceC1193p<T> interfaceC1193p) {
        C0001b c0001b = new C0001b(this, interfaceC1193p);
        LiveData<T>.AbstractC0002c abstractC0002cMo1548g = this.mObservers.mo1548g(interfaceC1193p, c0001b);
        if (abstractC0002cMo1548g != null && (abstractC0002cMo1548g instanceof LifecycleBoundObserver)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0002cMo1548g != null) {
            return;
        }
        c0001b.m10h(true);
    }

    public void onActive() {
    }

    public void onInactive() {
    }

    public void postValue(T t) {
        boolean z;
        synchronized (this.mDataLock) {
            z = this.mPendingData == NOT_SET;
            this.mPendingData = t;
        }
        if (z) {
            C0811a.m1286c().f2157a.mo1288b(this.mPostValueRunnable);
        }
    }

    @MainThread
    public void removeObserver(@NonNull InterfaceC1193p<T> interfaceC1193p) {
        assertMainThread("removeObserver");
        LiveData<T>.AbstractC0002c abstractC0002cMo1549h = this.mObservers.mo1549h(interfaceC1193p);
        if (abstractC0002cMo1549h == null) {
            return;
        }
        abstractC0002cMo1549h.mo7i();
        abstractC0002cMo1549h.m10h(false);
    }

    @MainThread
    public void removeObservers(@NonNull InterfaceC1042j interfaceC1042j) {
        assertMainThread("removeObservers");
        Iterator<Map.Entry<InterfaceC1193p<T>, LiveData<T>.AbstractC0002c>> it = this.mObservers.iterator();
        while (true) {
            C0915e.f fVar = (C0915e.f) it;
            if (!fVar.hasNext()) {
                return;
            }
            Map.Entry entry = (Map.Entry) fVar.next();
            if (((AbstractC0002c) entry.getValue()).mo8j(interfaceC1042j)) {
                removeObserver((InterfaceC1193p) entry.getKey());
            }
        }
    }

    @MainThread
    public void setValue(T t) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = t;
        dispatchingValue(null);
    }
}
