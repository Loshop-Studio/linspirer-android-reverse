package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.huawei.hem.ArchitectureLifecycle;
import com.huawei.hem.ArchTaskExecutor;
import com.huawei.hem.SafeIterableMap;
import com.huawei.hem.LifecycleRegistry;
import com.huawei.hem.LifecycleOwner;
import com.huawei.hem.Observer;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class LiveData<T> {
    public static final Object NOT_SET = new Object();
    public static final int START_VERSION = -1;
    public boolean mDispatchInvalidated;
    public boolean mDispatchingValue;
    public final Object mDataLock = new Object();
    public SafeIterableMap<Observer<T>, LiveData<T>.LiveDataObserverWrapper> mObservers = new SafeIterableMap<>();
    public int mActiveCount = 0;
    public volatile Object mData = NOT_SET;
    public volatile Object mPendingData = NOT_SET;
    public int mVersion = -1;
    public final Runnable mPostValueRunnable = new PostLiveDataValueTask();

    public class LifecycleBoundObserver extends LiveData<T>.LiveDataObserverWrapper implements GenericLifecycleObserver {

        /* renamed from: e */
        @NonNull
        public final LifecycleOwner f3e;

        public LifecycleBoundObserver(@NonNull LifecycleOwner interfaceC1042j, Observer<T> interfaceC1193p) {
            super(interfaceC1193p);
            this.f3e = interfaceC1042j;
        }

        @Override // android.arch.lifecycle.GenericLifecycleObserver
        /* renamed from: d */
        public void mo0d(LifecycleOwner interfaceC1042j, ArchitectureLifecycle.a aVar) {
            if (((LifecycleRegistry) this.f3e.getLifecycle()).f2994b == ArchitectureLifecycle.b.DESTROYED) {
                LiveData.this.removeObserver(this.f6a);
            } else {
                m10h(((LifecycleRegistry) this.f3e.getLifecycle()).f2994b.isAtLeast(ArchitectureLifecycle.b.STARTED));
            }
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0002c
        /* renamed from: i */
        public void mo7i() {
            ((LifecycleRegistry) this.f3e.getLifecycle()).f2993a.mo1549h(this);
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0002c
        /* renamed from: j */
        public boolean mo8j(LifecycleOwner interfaceC1042j) {
            return this.f3e == interfaceC1042j;
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0002c
        /* renamed from: k */
        public boolean mo9k() {
            return ((LifecycleRegistry) this.f3e.getLifecycle()).f2994b.isAtLeast(ArchitectureLifecycle.b.STARTED);
        }
    }

    /* renamed from: android.arch.lifecycle.LiveData$a */
    public class PostLiveDataValueTask implements Runnable {
        public PostLiveDataValueTask() {
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
    public class AlwaysActiveLiveDataObserver extends LiveData<T>.LiveDataObserverWrapper {
        public AlwaysActiveLiveDataObserver(LiveData liveData, Observer<T> interfaceC1193p) {
            super(interfaceC1193p);
        }

        @Override // android.arch.lifecycle.LiveData.AbstractC0002c
        /* renamed from: k */
        public boolean mo9k() {
            return true;
        }
    }

    /* renamed from: android.arch.lifecycle.LiveData$c */
    public abstract class LiveDataObserverWrapper {

        /* renamed from: a */
        public final Observer<T> f6a;

        /* renamed from: b */
        public boolean f7b;

        /* renamed from: c */
        public int f8c = -1;

        public LiveDataObserverWrapper(Observer<T> interfaceC1193p) {
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
        public boolean mo8j(LifecycleOwner interfaceC1042j) {
            return false;
        }

        /* renamed from: k */
        public abstract boolean mo9k();
    }

    public static void assertMainThread(String str) {
        if (ArchTaskExecutor.m1286c().f2157a.mo1287a()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void considerNotify(LiveData<T>.LiveDataObserverWrapper abstractC0002c) {
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
    public void dispatchingValue(@Nullable LiveData<T>.LiveDataObserverWrapper abstractC0002c) {
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
                SafeIterableMap<Observer<T>, LiveData<T>.LiveDataObserverWrapper> c0915e = this.mObservers;
                SafeIterableMap.e eVar = new SafeIterableMap.e(null);
                c0915e.f2491c.put(eVar, Boolean.FALSE);
                while (eVar.hasNext()) {
                    considerNotify((LiveDataObserverWrapper) ((Map.Entry) eVar.next()).getValue());
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
    public void observe(@NonNull LifecycleOwner interfaceC1042j, @NonNull Observer<T> interfaceC1193p) {
        LifecycleOwner interfaceC1042j2;
        if (((LifecycleRegistry) interfaceC1042j.getLifecycle()).f2994b == ArchitectureLifecycle.b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(interfaceC1042j, interfaceC1193p);
        LiveData<T>.LiveDataObserverWrapper abstractC0002cMo1548g = this.mObservers.mo1548g(interfaceC1193p, lifecycleBoundObserver);
        if (abstractC0002cMo1548g != null && !abstractC0002cMo1548g.mo8j(interfaceC1042j)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0002cMo1548g != null) {
            return;
        }
        LifecycleRegistry c1067k = (LifecycleRegistry) interfaceC1042j.getLifecycle();
        ArchitectureLifecycle.b bVar = c1067k.f2994b;
        ArchitectureLifecycle.b bVar2 = ArchitectureLifecycle.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = ArchitectureLifecycle.b.INITIALIZED;
        }
        LifecycleRegistry.a aVar = new LifecycleRegistry.a(lifecycleBoundObserver, bVar2);
        if (c1067k.f2993a.mo1548g(lifecycleBoundObserver, aVar) == null && (interfaceC1042j2 = c1067k.f2995c.get()) != null) {
            boolean z = c1067k.f2996d != 0 || c1067k.f2997e;
            c1067k.f2996d++;
            for (ArchitectureLifecycle.b bVarM2150a = c1067k.m2150a(lifecycleBoundObserver); aVar.f3000a.compareTo(bVarM2150a) < 0 && c1067k.f2993a.f2364e.containsKey(lifecycleBoundObserver); bVarM2150a = c1067k.m2150a(lifecycleBoundObserver)) {
                c1067k.f2999g.add(aVar.f3000a);
                aVar.m2155a(interfaceC1042j2, LifecycleRegistry.m2149h(aVar.f3000a));
                c1067k.m2153f();
            }
            if (!z) {
                c1067k.m2154g();
            }
            c1067k.f2996d--;
        }
    }

    @MainThread
    public void observeForever(@NonNull Observer<T> interfaceC1193p) {
        AlwaysActiveLiveDataObserver c0001b = new AlwaysActiveLiveDataObserver(this, interfaceC1193p);
        LiveData<T>.LiveDataObserverWrapper abstractC0002cMo1548g = this.mObservers.mo1548g(interfaceC1193p, c0001b);
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
            ArchTaskExecutor.m1286c().f2157a.mo1288b(this.mPostValueRunnable);
        }
    }

    @MainThread
    public void removeObserver(@NonNull Observer<T> interfaceC1193p) {
        assertMainThread("removeObserver");
        LiveData<T>.LiveDataObserverWrapper abstractC0002cMo1549h = this.mObservers.mo1549h(interfaceC1193p);
        if (abstractC0002cMo1549h == null) {
            return;
        }
        abstractC0002cMo1549h.mo7i();
        abstractC0002cMo1549h.m10h(false);
    }

    @MainThread
    public void removeObservers(@NonNull LifecycleOwner interfaceC1042j) {
        assertMainThread("removeObservers");
        Iterator<Map.Entry<Observer<T>, LiveData<T>.LiveDataObserverWrapper>> it = this.mObservers.iterator();
        while (true) {
            SafeIterableMap.f fVar = (SafeIterableMap.f) it;
            if (!fVar.hasNext()) {
                return;
            }
            Map.Entry entry = (Map.Entry) fVar.next();
            if (((LiveDataObserverWrapper) entry.getValue()).mo8j(interfaceC1042j)) {
                removeObserver((Observer) entry.getKey());
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
