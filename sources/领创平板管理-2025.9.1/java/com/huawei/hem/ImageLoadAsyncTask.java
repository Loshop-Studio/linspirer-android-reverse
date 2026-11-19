package com.huawei.hem;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.R;
import com.android.launcher3.model.AppItem;

/* compiled from: ImageLoadAsyncTask.java */
/* renamed from: com.huawei.hem.b6 */
/* loaded from: classes.dex */
public class ImageLoadAsyncTask extends AsyncTask<Integer, Integer, Bitmap> {

    /* renamed from: a */
    public ImageView f2276a;

    /* renamed from: b */
    public AppItem f2277b;

    /* renamed from: c */
    public Context f2278c;

    public ImageLoadAsyncTask(Context context, ImageView imageView, AppItem appItem) {
        this.f2276a = imageView;
        this.f2277b = appItem;
        this.f2278c = context;
    }

    @Override // android.os.AsyncTask
    public Bitmap doInBackground(Integer[] numArr) {
        Bitmap bitmap;
        if ("com.ndwill.swd.appstore".equals(this.f2277b.getPkgName())) {
            return BitmapFactory.decodeResource(this.f2278c.getResources(), R.mipmap.icon_appstore_app);
        }
        if (IconCache.f2175g == null) {
            IconCache.f2175g = new IconCache(GuardSecureApplication.f1640b);
        }
        IconCache c0818a6 = IconCache.f2175g;
        String strHashStr = this.f2277b.hashStr();
        ResolveInfo resolveInfo = this.f2277b.getResolveInfo();
        synchronized (c0818a6.f2179d) {
            bitmap = (resolveInfo == null || strHashStr == null) ? null : c0818a6.m1297a(strHashStr, resolveInfo).f2182a;
        }
        return bitmap;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        this.f2276a.setImageBitmap(bitmap);
    }
}
