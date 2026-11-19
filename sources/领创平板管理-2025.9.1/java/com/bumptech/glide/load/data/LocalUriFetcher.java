package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class LocalUriFetcher<T> implements DataFetcher<T> {
    public static final String TAG = "LocalUriFetcher";
    public final Context context;
    public T data;
    public final Uri uri;

    public LocalUriFetcher(Context context, Uri uri) {
        this.context = context.getApplicationContext();
        this.uri = uri;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        T t = this.data;
        if (t != null) {
            try {
                close(t);
            } catch (IOException e) {
                if (Log.isLoggable(TAG, 2)) {
                    Log.v(TAG, "failed to close data", e);
                }
            }
        }
    }

    public abstract void close(T t);

    @Override // com.bumptech.glide.load.data.DataFetcher
    public String getId() {
        return this.uri.toString();
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final T loadData(Priority priority) {
        T tLoadResource = loadResource(this.uri, this.context.getContentResolver());
        this.data = tLoadResource;
        return tLoadResource;
    }

    public abstract T loadResource(Uri uri, ContentResolver contentResolver);
}
