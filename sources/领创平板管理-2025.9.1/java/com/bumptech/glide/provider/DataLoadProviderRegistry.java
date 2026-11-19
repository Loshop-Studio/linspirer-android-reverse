package com.bumptech.glide.provider;

import com.bumptech.glide.util.MultiClassKey;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DataLoadProviderRegistry {
    public static final MultiClassKey GET_KEY = new MultiClassKey();
    public final Map<MultiClassKey, DataLoadProvider<?, ?>> providers = new HashMap();

    public <T, Z> DataLoadProvider<T, Z> get(Class<T> cls, Class<Z> cls2) {
        DataLoadProvider<T, Z> dataLoadProvider;
        synchronized (GET_KEY) {
            GET_KEY.set(cls, cls2);
            dataLoadProvider = (DataLoadProvider) this.providers.get(GET_KEY);
        }
        return dataLoadProvider == null ? EmptyDataLoadProvider.get() : dataLoadProvider;
    }

    public <T, Z> void register(Class<T> cls, Class<Z> cls2, DataLoadProvider<T, Z> dataLoadProvider) {
        this.providers.put(new MultiClassKey(cls, cls2), dataLoadProvider);
    }
}
