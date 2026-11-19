package com.huawei.hem;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;

/* compiled from: ImageCompressUtil.java */
/* renamed from: com.huawei.hem.w5 */
/* loaded from: classes.dex */
public class ImageCompressUtil {

    /* renamed from: a */
    public static ImageCompressUtil f3990a;

    /* renamed from: a */
    public static ImageCompressUtil m2899a(Context context) {
        if (f3990a == null) {
            f3990a = new ImageCompressUtil();
        }
        return f3990a;
    }

    /* renamed from: b */
    public Bitmap m2900b(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        int i5 = (i3 <= i4 || i3 <= i) ? (i3 >= i4 || i4 <= i2) ? 1 : i4 / i2 : i3 / i;
        if (i5 <= 0) {
            i5 = 1;
        }
        options.inSampleSize = i5;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        StringBuilder sbM1765j = CompilerOutline.m1765j("read bitmap is null:");
        sbM1765j.append(bitmapDecodeFile == null);
        LTKDateUtil.m1403m(sbM1765j.toString());
        if (bitmapDecodeFile == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapDecodeFile.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream);
        int i6 = 90;
        while (byteArrayOutputStream.toByteArray().length / 1024 > 300) {
            byteArrayOutputStream.reset();
            bitmapDecodeFile.compress(Bitmap.CompressFormat.JPEG, i6, byteArrayOutputStream);
            i6 -= 10;
        }
        return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
    }
}
