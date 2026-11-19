package android.support.v4.app;

import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import com.huawei.hem.ViewModel;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.MutableLiveData;
import com.huawei.hem.ViewModelStore;
import com.huawei.hem.LifecycleOwner;
import com.huawei.hem.Observer;
import com.huawei.hem.ViewModelProviderFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
public class LoaderManagerImpl extends LoaderManager {
    public static boolean DEBUG = false;
    public static final String TAG = "LoaderManager";

    @NonNull
    public final LifecycleOwner mLifecycleOwner;

    @NonNull
    public final LoaderViewModel mLoaderViewModel;

    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {

        @Nullable
        public final Bundle mArgs;
        public final int mId;
        public LifecycleOwner mLifecycleOwner;

        @NonNull
        public final Loader<D> mLoader;
        public LoaderObserver<D> mObserver;
        public Loader<D> mPriorLoader;

        public LoaderInfo(int i, @Nullable Bundle bundle, @NonNull Loader<D> loader, @Nullable Loader<D> loader2) {
            this.mId = i;
            this.mArgs = bundle;
            this.mLoader = loader;
            this.mPriorLoader = loader2;
            loader.registerListener(i, this);
        }

        @MainThread
        public Loader<D> destroy(boolean z) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Destroying: " + this);
            }
            this.mLoader.cancelLoad();
            this.mLoader.abandon();
            LoaderObserver<D> loaderObserver = this.mObserver;
            if (loaderObserver != null) {
                removeObserver(loaderObserver);
                if (z) {
                    loaderObserver.reset();
                }
            }
            this.mLoader.unregisterListener(this);
            if ((loaderObserver == null || loaderObserver.hasDeliveredData()) && !z) {
                return this.mLoader;
            }
            this.mLoader.reset();
            return this.mPriorLoader;
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.mId);
            printWriter.print(" mArgs=");
            printWriter.println(this.mArgs);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.mLoader);
            this.mLoader.dump(CompilerOutline.m1760e(str, "  "), fileDescriptor, printWriter, strArr);
            if (this.mObserver != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.mObserver);
                this.mObserver.dump(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(getLoader().dataToString(getValue()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(hasActiveObservers());
        }

        @NonNull
        public Loader<D> getLoader() {
            return this.mLoader;
        }

        public boolean isCallbackWaitingForData() {
            LoaderObserver<D> loaderObserver;
            return (!hasActiveObservers() || (loaderObserver = this.mObserver) == null || loaderObserver.hasDeliveredData()) ? false : true;
        }

        public void markForRedelivery() {
            LifecycleOwner interfaceC1042j = this.mLifecycleOwner;
            LoaderObserver<D> loaderObserver = this.mObserver;
            if (interfaceC1042j == null || loaderObserver == null) {
                return;
            }
            super.removeObserver(loaderObserver);
            observe(interfaceC1042j, loaderObserver);
        }

        @Override // android.arch.lifecycle.LiveData
        public void onActive() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Starting: " + this);
            }
            this.mLoader.startLoading();
        }

        @Override // android.arch.lifecycle.LiveData
        public void onInactive() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Stopping: " + this);
            }
            this.mLoader.stopLoading();
        }

        @Override // android.support.v4.content.Loader.OnLoadCompleteListener
        public void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                setValue(d);
                return;
            }
            if (LoaderManagerImpl.DEBUG) {
                Log.w(LoaderManagerImpl.TAG, "onLoadComplete was incorrectly called on a background thread");
            }
            postValue(d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.arch.lifecycle.LiveData
        public void removeObserver(@NonNull Observer<? super D> interfaceC1193p) {
            super.removeObserver(interfaceC1193p);
            this.mLifecycleOwner = null;
            this.mObserver = null;
        }

        @NonNull
        @MainThread
        public Loader<D> setCallback(@NonNull LifecycleOwner interfaceC1042j, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            LoaderObserver<D> loaderObserver = new LoaderObserver<>(this.mLoader, loaderCallbacks);
            observe(interfaceC1042j, loaderObserver);
            LoaderObserver<D> loaderObserver2 = this.mObserver;
            if (loaderObserver2 != null) {
                removeObserver(loaderObserver2);
            }
            this.mLifecycleOwner = interfaceC1042j;
            this.mObserver = loaderObserver;
            return this.mLoader;
        }

        @Override // com.huawei.hem.C1168o, android.arch.lifecycle.LiveData
        public void setValue(D d) {
            super.setValue(d);
            Loader<D> loader = this.mPriorLoader;
            if (loader != null) {
                loader.reset();
                this.mPriorLoader = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.mId);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.mLoader, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    public static class LoaderObserver<D> implements Observer<D> {

        @NonNull
        public final LoaderManager.LoaderCallbacks<D> mCallback;
        public boolean mDeliveredData = false;

        @NonNull
        public final Loader<D> mLoader;

        public LoaderObserver(@NonNull Loader<D> loader, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            this.mLoader = loader;
            this.mCallback = loaderCallbacks;
        }

        public void dump(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.mDeliveredData);
        }

        public boolean hasDeliveredData() {
            return this.mDeliveredData;
        }

        @Override // com.huawei.hem.InterfaceC1193p
        public void onChanged(@Nullable D d) {
            if (LoaderManagerImpl.DEBUG) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("  onLoadFinished in ");
                sbM1765j.append(this.mLoader);
                sbM1765j.append(": ");
                sbM1765j.append(this.mLoader.dataToString(d));
                Log.v(LoaderManagerImpl.TAG, sbM1765j.toString());
            }
            this.mCallback.onLoadFinished(this.mLoader, d);
            this.mDeliveredData = true;
        }

        @MainThread
        public void reset() {
            if (this.mDeliveredData) {
                if (LoaderManagerImpl.DEBUG) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("  Resetting: ");
                    sbM1765j.append(this.mLoader);
                    Log.v(LoaderManagerImpl.TAG, sbM1765j.toString());
                }
                this.mCallback.onLoaderReset(this.mLoader);
            }
        }

        public String toString() {
            return this.mCallback.toString();
        }
    }

    public static class LoaderViewModel extends ViewModel {
        public static final ViewModelProviderFactory FACTORY = new ViewModelProviderFactory() { // from class: android.support.v4.app.LoaderManagerImpl.LoaderViewModel.1
            @Override // com.huawei.hem.InterfaceC1268s
            @NonNull
            public <T extends ViewModel> T create(@NonNull Class<T> cls) {
                return new LoaderViewModel();
            }
        };
        public SparseArrayCompat<LoaderInfo> mLoaders = new SparseArrayCompat<>();
        public boolean mCreatingLoader = false;

        @NonNull
        public static LoaderViewModel getInstance(ViewModelStore c1293t) {
            ViewModel abstractC1243rPut;
            ViewModelProviderFactory interfaceC1268s = FACTORY;
            String canonicalName = LoaderViewModel.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String strM1760e = CompilerOutline.m1760e("android.arch.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            ViewModel abstractC1243rCreate = c1293t.f3737a.get(strM1760e);
            if (!LoaderViewModel.class.isInstance(abstractC1243rCreate) && (abstractC1243rPut = c1293t.f3737a.put(strM1760e, (abstractC1243rCreate = interfaceC1268s.create(LoaderViewModel.class)))) != null) {
                abstractC1243rPut.onCleared();
            }
            return (LoaderViewModel) abstractC1243rCreate;
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.mLoaders.size() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.mLoaders.size(); i++) {
                    LoaderInfo loaderInfoValueAt = this.mLoaders.valueAt(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.mLoaders.keyAt(i));
                    printWriter.print(": ");
                    printWriter.println(loaderInfoValueAt.toString());
                    loaderInfoValueAt.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        public void finishCreatingLoader() {
            this.mCreatingLoader = false;
        }

        public <D> LoaderInfo<D> getLoader(int i) {
            return this.mLoaders.get(i);
        }

        public boolean hasRunningLoaders() {
            int size = this.mLoaders.size();
            for (int i = 0; i < size; i++) {
                if (this.mLoaders.valueAt(i).isCallbackWaitingForData()) {
                    return true;
                }
            }
            return false;
        }

        public boolean isCreatingLoader() {
            return this.mCreatingLoader;
        }

        public void markForRedelivery() {
            int size = this.mLoaders.size();
            for (int i = 0; i < size; i++) {
                this.mLoaders.valueAt(i).markForRedelivery();
            }
        }

        @Override // com.huawei.hem.AbstractC1243r
        public void onCleared() {
            super.onCleared();
            int size = this.mLoaders.size();
            for (int i = 0; i < size; i++) {
                this.mLoaders.valueAt(i).destroy(true);
            }
            this.mLoaders.clear();
        }

        public void putLoader(int i, @NonNull LoaderInfo loaderInfo) {
            this.mLoaders.put(i, loaderInfo);
        }

        public void removeLoader(int i) {
            this.mLoaders.remove(i);
        }

        public void startCreatingLoader() {
            this.mCreatingLoader = true;
        }
    }

    public LoaderManagerImpl(@NonNull LifecycleOwner interfaceC1042j, @NonNull ViewModelStore c1293t) {
        this.mLifecycleOwner = interfaceC1042j;
        this.mLoaderViewModel = LoaderViewModel.getInstance(c1293t);
    }

    @NonNull
    @MainThread
    private <D> Loader<D> createAndInstallLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks, @Nullable Loader<D> loader) {
        try {
            this.mLoaderViewModel.startCreatingLoader();
            Loader<D> loaderOnCreateLoader = loaderCallbacks.onCreateLoader(i, bundle);
            if (loaderOnCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (loaderOnCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(loaderOnCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + loaderOnCreateLoader);
            }
            LoaderInfo loaderInfo = new LoaderInfo(i, bundle, loaderOnCreateLoader, loader);
            if (DEBUG) {
                Log.v(TAG, "  Created new loader " + loaderInfo);
            }
            this.mLoaderViewModel.putLoader(i, loaderInfo);
            this.mLoaderViewModel.finishCreatingLoader();
            return loaderInfo.setCallback(this.mLifecycleOwner, loaderCallbacks);
        } catch (Throwable th) {
            this.mLoaderViewModel.finishCreatingLoader();
            throw th;
        }
    }

    @Override // android.support.v4.app.LoaderManager
    @MainThread
    public void destroyLoader(int i) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        if (DEBUG) {
            Log.v(TAG, "destroyLoader in " + this + " of " + i);
        }
        LoaderInfo loader = this.mLoaderViewModel.getLoader(i);
        if (loader != null) {
            loader.destroy(true);
            this.mLoaderViewModel.removeLoader(i);
        }
    }

    @Override // android.support.v4.app.LoaderManager
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mLoaderViewModel.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.support.v4.app.LoaderManager
    @Nullable
    public <D> Loader<D> getLoader(int i) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        if (loader != null) {
            return loader.getLoader();
        }
        return null;
    }

    @Override // android.support.v4.app.LoaderManager
    public boolean hasRunningLoaders() {
        return this.mLoaderViewModel.hasRunningLoaders();
    }

    @Override // android.support.v4.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> initLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        if (DEBUG) {
            Log.v(TAG, "initLoader in " + this + ": args=" + bundle);
        }
        if (loader == null) {
            return createAndInstallLoader(i, bundle, loaderCallbacks, null);
        }
        if (DEBUG) {
            Log.v(TAG, "  Re-using existing loader " + loader);
        }
        return loader.setCallback(this.mLifecycleOwner, loaderCallbacks);
    }

    @Override // android.support.v4.app.LoaderManager
    public void markForRedelivery() {
        this.mLoaderViewModel.markForRedelivery();
    }

    @Override // android.support.v4.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> restartLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        if (DEBUG) {
            Log.v(TAG, "restartLoader in " + this + ": args=" + bundle);
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        return createAndInstallLoader(i, bundle, loaderCallbacks, loader != null ? loader.destroy(false) : null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.mLifecycleOwner, sb);
        sb.append("}}");
        return sb.toString();
    }
}
