package android.support.v7.view.menu;

/* loaded from: classes.dex */
public class BaseWrapper<T> {
    public final T mWrappedObject;

    public BaseWrapper(T t) {
        if (t == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.mWrappedObject = t;
    }

    public T getWrappedObject() {
        return this.mWrappedObject;
    }
}
