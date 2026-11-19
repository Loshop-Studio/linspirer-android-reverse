package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.data.DataFetcher;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.File;

/* loaded from: classes.dex */
public class StringLoader<T> implements ModelLoader<String, T> {
    public final ModelLoader<Uri, T> uriLoader;

    public StringLoader(ModelLoader<Uri, T> modelLoader) {
        this.uriLoader = modelLoader;
    }

    public static Uri toFileUri(String str) {
        return Uri.fromFile(new File(str));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public DataFetcher<T> getResourceFetcher(String str, int i, int i2) {
        Uri fileUri;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(GrsManager.SEPARATOR)) {
            fileUri = toFileUri(str);
        } else {
            Uri uri = Uri.parse(str);
            fileUri = uri.getScheme() == null ? toFileUri(str) : uri;
        }
        return this.uriLoader.getResourceFetcher(fileUri, i, i2);
    }
}
