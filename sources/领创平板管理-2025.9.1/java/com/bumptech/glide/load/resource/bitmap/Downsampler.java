package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.util.ByteArrayPool;
import com.bumptech.glide.util.ExceptionCatchingInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import com.bumptech.glide.util.Util;
import com.huawei.hem.CompilerOutline;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class Downsampler implements BitmapDecoder<InputStream> {
    public static final int MARK_POSITION = 5242880;
    public static final String TAG = "Downsampler";
    public static final Set<ImageHeaderParser.ImageType> TYPES_THAT_USE_POOL = EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG);
    public static final Queue<BitmapFactory.Options> OPTIONS_QUEUE = Util.createQueue(0);
    public static final Downsampler AT_LEAST = new Downsampler() { // from class: com.bumptech.glide.load.resource.bitmap.Downsampler.1
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler, com.bumptech.glide.load.resource.bitmap.BitmapDecoder
        public /* bridge */ /* synthetic */ Bitmap decode(InputStream inputStream, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) {
            return super.decode(inputStream, bitmapPool, i, i2, decodeFormat);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.BitmapDecoder
        public String getId() {
            return "AT_LEAST.com.bumptech.glide.load.data.bitmap";
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler
        public int getSampleSize(int i, int i2, int i3, int i4) {
            return Math.min(i2 / i4, i / i3);
        }
    };
    public static final Downsampler AT_MOST = new Downsampler() { // from class: com.bumptech.glide.load.resource.bitmap.Downsampler.2
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler, com.bumptech.glide.load.resource.bitmap.BitmapDecoder
        public /* bridge */ /* synthetic */ Bitmap decode(InputStream inputStream, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) {
            return super.decode(inputStream, bitmapPool, i, i2, decodeFormat);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.BitmapDecoder
        public String getId() {
            return "AT_MOST.com.bumptech.glide.load.data.bitmap";
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler
        public int getSampleSize(int i, int i2, int i3, int i4) {
            int iCeil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int iMax = Math.max(1, Integer.highestOneBit(iCeil));
            return iMax << (iMax >= iCeil ? 0 : 1);
        }
    };
    public static final Downsampler NONE = new Downsampler() { // from class: com.bumptech.glide.load.resource.bitmap.Downsampler.3
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler, com.bumptech.glide.load.resource.bitmap.BitmapDecoder
        public /* bridge */ /* synthetic */ Bitmap decode(InputStream inputStream, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) {
            return super.decode(inputStream, bitmapPool, i, i2, decodeFormat);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.BitmapDecoder
        public String getId() {
            return "NONE.com.bumptech.glide.load.data.bitmap";
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler
        public int getSampleSize(int i, int i2, int i3, int i4) {
            return 0;
        }
    };

    public static Bitmap decodeStream(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, BitmapFactory.Options options) {
        if (options.inJustDecodeBounds) {
            markEnforcingInputStream.mark(5242880);
        } else {
            recyclableBufferedInputStream.fixMarkLimit();
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(markEnforcingInputStream, null, options);
        try {
            if (options.inJustDecodeBounds) {
                markEnforcingInputStream.reset();
            }
        } catch (IOException e) {
            if (Log.isLoggable(TAG, 6)) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("Exception loading inDecodeBounds=");
                sbM1765j.append(options.inJustDecodeBounds);
                sbM1765j.append(" sample=");
                sbM1765j.append(options.inSampleSize);
                Log.e(TAG, sbM1765j.toString(), e);
            }
        }
        return bitmapDecodeStream;
    }

    private Bitmap downsampleWithSize(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, BitmapFactory.Options options, BitmapPool bitmapPool, int i, int i2, int i3, DecodeFormat decodeFormat) throws IOException {
        Bitmap.Config config = getConfig(markEnforcingInputStream, decodeFormat);
        options.inSampleSize = i3;
        options.inPreferredConfig = config;
        if (shouldUsePool(markEnforcingInputStream)) {
            double d = i3;
            setInBitmap(options, bitmapPool.getDirty((int) Math.ceil(i / d), (int) Math.ceil(i2 / d), config));
        }
        return decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, options);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027 A[PHI: r2 r7
      0x0027: PHI (r2v5 boolean) = (r2v2 boolean), (r2v7 boolean) binds: [B:24:0x0051, B:12:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x0027: PHI (r7v4 'e' java.io.IOException) = (r7v2 'e' java.io.IOException), (r7v7 'e' java.io.IOException) binds: [B:24:0x0051, B:12:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap.Config getConfig(java.io.InputStream r7, com.bumptech.glide.load.DecodeFormat r8) throws java.io.IOException {
        /*
            java.lang.String r0 = "Cannot reset the input stream"
            java.lang.String r1 = "Downsampler"
            com.bumptech.glide.load.DecodeFormat r2 = com.bumptech.glide.load.DecodeFormat.ALWAYS_ARGB_8888
            if (r8 == r2) goto L6b
            com.bumptech.glide.load.DecodeFormat r2 = com.bumptech.glide.load.DecodeFormat.PREFER_ARGB_8888
            if (r8 == r2) goto L6b
            r2 = 0
            r3 = 1024(0x400, float:1.435E-42)
            r7.mark(r3)
            r3 = 5
            com.bumptech.glide.load.resource.bitmap.ImageHeaderParser r4 = new com.bumptech.glide.load.resource.bitmap.ImageHeaderParser     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            boolean r2 = r4.hasAlpha()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            r7.reset()     // Catch: java.io.IOException -> L20
            goto L54
        L20:
            r7 = move-exception
            boolean r8 = android.util.Log.isLoggable(r1, r3)
            if (r8 == 0) goto L54
        L27:
            android.util.Log.w(r1, r0, r7)
            goto L54
        L2b:
            r8 = move-exception
            goto L5c
        L2d:
            r4 = move-exception
            boolean r5 = android.util.Log.isLoggable(r1, r3)     // Catch: java.lang.Throwable -> L2b
            if (r5 == 0) goto L48
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2b
            r5.<init>()     // Catch: java.lang.Throwable -> L2b
            java.lang.String r6 = "Cannot determine whether the image has alpha or not from header for format "
            r5.append(r6)     // Catch: java.lang.Throwable -> L2b
            r5.append(r8)     // Catch: java.lang.Throwable -> L2b
            java.lang.String r8 = r5.toString()     // Catch: java.lang.Throwable -> L2b
            android.util.Log.w(r1, r8, r4)     // Catch: java.lang.Throwable -> L2b
        L48:
            r7.reset()     // Catch: java.io.IOException -> L4c
            goto L54
        L4c:
            r7 = move-exception
            boolean r8 = android.util.Log.isLoggable(r1, r3)
            if (r8 == 0) goto L54
            goto L27
        L54:
            if (r2 == 0) goto L59
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.ARGB_8888
            goto L5b
        L59:
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.RGB_565
        L5b:
            return r7
        L5c:
            r7.reset()     // Catch: java.io.IOException -> L60
            goto L6a
        L60:
            r7 = move-exception
            boolean r2 = android.util.Log.isLoggable(r1, r3)
            if (r2 == 0) goto L6a
            android.util.Log.w(r1, r0, r7)
        L6a:
            throw r8
        L6b:
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.ARGB_8888
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.Downsampler.getConfig(java.io.InputStream, com.bumptech.glide.load.DecodeFormat):android.graphics.Bitmap$Config");
    }

    @TargetApi(11)
    public static synchronized BitmapFactory.Options getDefaultOptions() {
        BitmapFactory.Options optionsPoll;
        synchronized (OPTIONS_QUEUE) {
            optionsPoll = OPTIONS_QUEUE.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            resetOptions(optionsPoll);
        }
        return optionsPoll;
    }

    private int getRoundedSampleSize(int i, int i2, int i3, int i4, int i5) {
        if (i5 == Integer.MIN_VALUE) {
            i5 = i3;
        }
        if (i4 == Integer.MIN_VALUE) {
            i4 = i2;
        }
        int sampleSize = (i == 90 || i == 270) ? getSampleSize(i3, i2, i4, i5) : getSampleSize(i2, i3, i4, i5);
        return Math.max(1, sampleSize == 0 ? 0 : Integer.highestOneBit(sampleSize));
    }

    public static void releaseOptions(BitmapFactory.Options options) {
        resetOptions(options);
        synchronized (OPTIONS_QUEUE) {
            OPTIONS_QUEUE.offer(options);
        }
    }

    @TargetApi(11)
    public static void resetOptions(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    @TargetApi(11)
    public static void setInBitmap(BitmapFactory.Options options, Bitmap bitmap) {
        options.inBitmap = bitmap;
    }

    public static boolean shouldUsePool(InputStream inputStream) {
        return true;
    }

    public int[] getDimensions(MarkEnforcingInputStream markEnforcingInputStream, RecyclableBufferedInputStream recyclableBufferedInputStream, BitmapFactory.Options options) {
        options.inJustDecodeBounds = true;
        decodeStream(markEnforcingInputStream, recyclableBufferedInputStream, options);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    public abstract int getSampleSize(int i, int i2, int i3, int i4);

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapDecoder
    public Bitmap decode(InputStream inputStream, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) {
        int i3;
        ByteArrayPool byteArrayPool = ByteArrayPool.get();
        byte[] bytes = byteArrayPool.getBytes();
        byte[] bytes2 = byteArrayPool.getBytes();
        BitmapFactory.Options defaultOptions = getDefaultOptions();
        RecyclableBufferedInputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, bytes2);
        ExceptionCatchingInputStream exceptionCatchingInputStreamObtain = ExceptionCatchingInputStream.obtain(recyclableBufferedInputStream);
        MarkEnforcingInputStream markEnforcingInputStream = new MarkEnforcingInputStream(exceptionCatchingInputStreamObtain);
        try {
            exceptionCatchingInputStreamObtain.mark(5242880);
            try {
                try {
                    int orientation = new ImageHeaderParser(exceptionCatchingInputStreamObtain).getOrientation();
                    try {
                        exceptionCatchingInputStreamObtain.reset();
                    } catch (IOException e) {
                        if (Log.isLoggable(TAG, 5)) {
                            Log.w(TAG, "Cannot reset the input stream", e);
                        }
                    }
                    i3 = orientation;
                } finally {
                }
            } catch (IOException e2) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Cannot determine the image orientation from header", e2);
                }
                try {
                    exceptionCatchingInputStreamObtain.reset();
                } catch (IOException e3) {
                    if (Log.isLoggable(TAG, 5)) {
                        Log.w(TAG, "Cannot reset the input stream", e3);
                    }
                }
                i3 = 0;
            }
            defaultOptions.inTempStorage = bytes;
            int[] dimensions = getDimensions(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions);
            int i4 = dimensions[0];
            int i5 = dimensions[1];
            Bitmap bitmapDownsampleWithSize = downsampleWithSize(markEnforcingInputStream, recyclableBufferedInputStream, defaultOptions, bitmapPool, i4, i5, getRoundedSampleSize(TransformationUtils.getExifOrientationDegrees(i3), i4, i5, i, i2), decodeFormat);
            IOException exception = exceptionCatchingInputStreamObtain.getException();
            if (exception != null) {
                throw new RuntimeException(exception);
            }
            Bitmap bitmapRotateImageExif = null;
            if (bitmapDownsampleWithSize != null) {
                bitmapRotateImageExif = TransformationUtils.rotateImageExif(bitmapDownsampleWithSize, bitmapPool, i3);
                if (!bitmapDownsampleWithSize.equals(bitmapRotateImageExif) && !bitmapPool.put(bitmapDownsampleWithSize)) {
                    bitmapDownsampleWithSize.recycle();
                }
            }
            return bitmapRotateImageExif;
        } finally {
            byteArrayPool.releaseBytes(bytes);
            byteArrayPool.releaseBytes(bytes2);
            exceptionCatchingInputStreamObtain.release();
            releaseOptions(defaultOptions);
        }
    }
}
