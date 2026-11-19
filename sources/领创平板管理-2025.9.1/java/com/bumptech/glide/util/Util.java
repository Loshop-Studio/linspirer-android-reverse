package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Looper;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public final class Util {
    public static final char[] HEX_CHAR_ARRAY = "0123456789abcdef".toCharArray();
    public static final char[] SHA_256_CHARS = new char[64];
    public static final char[] SHA_1_CHARS = new char[40];

    /* renamed from: com.bumptech.glide.util.Util$1 */
    public static /* synthetic */ class C07781 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void assertBackgroundThread() {
        if (!isOnBackgroundThread()) {
            throw new IllegalArgumentException("YOu must call this method on a background thread");
        }
    }

    public static void assertMainThread() {
        if (!isOnMainThread()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static String bytesToHex(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & Base64.EQUALS_SIGN_ENC;
            int i3 = i * 2;
            char[] cArr2 = HEX_CHAR_ARRAY;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    public static <T> Queue<T> createQueue(int i) {
        return new ArrayDeque(i);
    }

    @TargetApi(19)
    public static int getBitmapByteSize(Bitmap bitmap) {
        try {
            return bitmap.getAllocationByteCount();
        } catch (NullPointerException unused) {
            return bitmap.getRowBytes() * bitmap.getHeight();
        }
    }

    public static int getBytesPerPixel(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i = C07781.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3) ? 2 : 4;
        }
        return 1;
    }

    @Deprecated
    public static int getSize(Bitmap bitmap) {
        return getBitmapByteSize(bitmap);
    }

    public static <T> List<T> getSnapshot(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static boolean isOnBackgroundThread() {
        return !isOnMainThread();
    }

    public static boolean isOnMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean isValidDimension(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    public static boolean isValidDimensions(int i, int i2) {
        return isValidDimension(i) && isValidDimension(i2);
    }

    public static String sha1BytesToHex(byte[] bArr) {
        String strBytesToHex;
        synchronized (SHA_1_CHARS) {
            strBytesToHex = bytesToHex(bArr, SHA_1_CHARS);
        }
        return strBytesToHex;
    }

    public static String sha256BytesToHex(byte[] bArr) {
        String strBytesToHex;
        synchronized (SHA_256_CHARS) {
            strBytesToHex = bytesToHex(bArr, SHA_256_CHARS);
        }
        return strBytesToHex;
    }

    public static int getBitmapByteSize(int i, int i2, Bitmap.Config config) {
        return getBytesPerPixel(config) * i * i2;
    }
}
