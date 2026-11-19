package com.bumptech.glide.load.model;

import android.content.Context;
import android.net.Uri;
import anet.channel.util.HttpConstant;
import com.bumptech.glide.load.data.DataFetcher;

/* loaded from: classes.dex */
public abstract class UriLoader<T> implements ModelLoader<Uri, T> {
    public final Context context;
    public final ModelLoader<GlideUrl, T> urlLoader;

    public UriLoader(Context context, ModelLoader<GlideUrl, T> modelLoader) {
        this.context = context;
        this.urlLoader = modelLoader;
    }

    public static boolean isLocalUri(String str) {
        return "file".equals(str) || "content".equals(str) || "android.resource".equals(str);
    }

    public abstract DataFetcher<T> getAssetPathFetcher(Context context, String str);

    public abstract DataFetcher<T> getLocalUriFetcher(Context context, Uri uri);

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final DataFetcher<T> getResourceFetcher(Uri uri, int i, int i2) {
        String scheme = uri.getScheme();
        if (isLocalUri(scheme)) {
            if (!AssetUriParser.isAssetUri(uri)) {
                return getLocalUriFetcher(this.context, uri);
            }
            return getAssetPathFetcher(this.context, AssetUriParser.toAssetPath(uri));
        }
        if (this.urlLoader == null || !(HttpConstant.HTTP.equals(scheme) || HttpConstant.HTTPS.equals(scheme))) {
            return null;
        }
        return this.urlLoader.getResourceFetcher(new GlideUrl(uri.toString()), i, i2);
    }
}
