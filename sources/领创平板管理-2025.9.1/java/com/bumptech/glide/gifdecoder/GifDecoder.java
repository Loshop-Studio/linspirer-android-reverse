package com.bumptech.glide.gifdecoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.util.Log;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public class GifDecoder {
    public static final Bitmap.Config BITMAP_CONFIG = Bitmap.Config.ARGB_8888;
    public static final int DISPOSAL_BACKGROUND = 2;
    public static final int DISPOSAL_NONE = 1;
    public static final int DISPOSAL_PREVIOUS = 3;
    public static final int DISPOSAL_UNSPECIFIED = 0;
    public static final int INITIAL_FRAME_POINTER = -1;
    public static final int MAX_STACK_SIZE = 4096;
    public static final int NULL_CODE = -1;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARTIAL_DECODE = 3;
    public static final String TAG = "GifDecoder";
    public int[] act;
    public BitmapProvider bitmapProvider;
    public byte[] data;
    public int framePointer;
    public byte[] mainPixels;
    public int[] mainScratch;
    public GifHeaderParser parser;
    public byte[] pixelStack;
    public short[] prefix;
    public Bitmap previousImage;
    public ByteBuffer rawData;
    public boolean savePrevious;
    public int status;
    public byte[] suffix;
    public final byte[] block = new byte[256];
    public GifHeader header = new GifHeader();

    public interface BitmapProvider {
        Bitmap obtain(int i, int i2, Bitmap.Config config);

        void release(Bitmap bitmap);
    }

    public GifDecoder(BitmapProvider bitmapProvider) {
        this.bitmapProvider = bitmapProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v30, types: [short] */
    /* JADX WARN: Type inference failed for: r1v32 */
    private void decodeBitmapData(GifFrame gifFrame) {
        int i;
        int i2;
        int i3;
        int i4;
        short s;
        if (gifFrame != null) {
            this.rawData.position(gifFrame.bufferFrameStart);
        }
        if (gifFrame == null) {
            GifHeader gifHeader = this.header;
            i = gifHeader.width;
            i2 = gifHeader.height;
        } else {
            i = gifFrame.f2114iw;
            i2 = gifFrame.f2113ih;
        }
        int i5 = i * i2;
        byte[] bArr = this.mainPixels;
        if (bArr == null || bArr.length < i5) {
            this.mainPixels = new byte[i5];
        }
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[4097];
        }
        int i6 = read();
        int i7 = 1;
        int i8 = 1 << i6;
        int i9 = i8 + 1;
        int i10 = i8 + 2;
        int i11 = i6 + 1;
        int i12 = (1 << i11) - 1;
        for (int i13 = 0; i13 < i8; i13++) {
            this.prefix[i13] = 0;
            this.suffix[i13] = (byte) i13;
        }
        int i14 = -1;
        int i15 = i11;
        int i16 = i10;
        int i17 = i12;
        int i18 = 0;
        int block = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = -1;
        while (true) {
            if (i18 >= i5) {
                break;
            }
            if (block == 0) {
                block = readBlock();
                if (block <= 0) {
                    this.status = 3;
                    break;
                }
                i19 = 0;
            }
            i21 += (this.block[i19] & Base64.EQUALS_SIGN_ENC) << i20;
            i20 += 8;
            i19 += i7;
            block += i14;
            int i26 = i16;
            int i27 = i15;
            int i28 = i25;
            int i29 = i23;
            while (i20 >= i27) {
                int i30 = i21 & i17;
                i21 >>= i27;
                i20 -= i27;
                if (i30 != i8) {
                    if (i30 > i26) {
                        i3 = i11;
                        this.status = 3;
                    } else {
                        i3 = i11;
                        if (i30 != i9) {
                            if (i28 == -1) {
                                this.pixelStack[i24] = this.suffix[i30];
                                i28 = i30;
                                i29 = i28;
                                i24++;
                                i11 = i3;
                            } else {
                                if (i30 >= i26) {
                                    i4 = i9;
                                    this.pixelStack[i24] = (byte) i29;
                                    s = i28;
                                    i24++;
                                } else {
                                    i4 = i9;
                                    s = i30;
                                }
                                while (s >= i8) {
                                    this.pixelStack[i24] = this.suffix[s];
                                    s = this.prefix[s];
                                    i24++;
                                    i8 = i8;
                                }
                                int i31 = i8;
                                byte[] bArr2 = this.suffix;
                                int i32 = bArr2[s] & Base64.EQUALS_SIGN_ENC;
                                int i33 = i24 + 1;
                                int i34 = i10;
                                byte b = (byte) i32;
                                this.pixelStack[i24] = b;
                                if (i26 < 4096) {
                                    this.prefix[i26] = (short) i28;
                                    bArr2[i26] = b;
                                    i26++;
                                    if ((i26 & i17) == 0 && i26 < 4096) {
                                        i27++;
                                        i17 += i26;
                                    }
                                }
                                i24 = i33;
                                while (i24 > 0) {
                                    i24--;
                                    this.mainPixels[i22] = this.pixelStack[i24];
                                    i18++;
                                    i22++;
                                }
                                i28 = i30;
                                i8 = i31;
                                i9 = i4;
                                i10 = i34;
                                i29 = i32;
                                i11 = i3;
                            }
                        }
                    }
                    i16 = i26;
                    i15 = i27;
                    i25 = i28;
                    i11 = i3;
                    i23 = i29;
                    break;
                }
                i27 = i11;
                i26 = i10;
                i17 = i12;
                i28 = -1;
            }
            i16 = i26;
            i15 = i27;
            i23 = i29;
            i25 = i28;
            i9 = i9;
            i7 = 1;
            i14 = -1;
        }
        for (int i35 = i22; i35 < i5; i35++) {
            this.mainPixels[i35] = 0;
        }
    }

    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    private Bitmap getNextBitmap() {
        BitmapProvider bitmapProvider = this.bitmapProvider;
        GifHeader gifHeader = this.header;
        Bitmap bitmapObtain = bitmapProvider.obtain(gifHeader.width, gifHeader.height, BITMAP_CONFIG);
        if (bitmapObtain == null) {
            GifHeader gifHeader2 = this.header;
            bitmapObtain = Bitmap.createBitmap(gifHeader2.width, gifHeader2.height, BITMAP_CONFIG);
        }
        setAlpha(bitmapObtain);
        return bitmapObtain;
    }

    private int readBlock() {
        int i = read();
        int i2 = 0;
        if (i > 0) {
            while (i2 < i) {
                int i3 = i - i2;
                try {
                    this.rawData.get(this.block, i2, i3);
                    i2 += i3;
                } catch (Exception e) {
                    Log.w(TAG, "Error Reading Block", e);
                    this.status = 1;
                }
            }
        }
        return i2;
    }

    @TargetApi(12)
    public static void setAlpha(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
    }

    private Bitmap setPixels(GifFrame gifFrame, GifFrame gifFrame2) {
        int i;
        int i2;
        int i3;
        int i4;
        Bitmap bitmap;
        GifHeader gifHeader = this.header;
        int i5 = gifHeader.width;
        int i6 = gifHeader.height;
        int[] iArr = this.mainScratch;
        if (gifFrame2 == null || (i4 = gifFrame2.dispose) <= 0) {
            i = 2;
        } else {
            if (i4 == 2) {
                Arrays.fill(iArr, !gifFrame.transparency ? gifHeader.bgColor : 0);
            } else if (i4 == 3 && (bitmap = this.previousImage) != null) {
                i = 2;
                bitmap.getPixels(iArr, 0, i5, 0, 0, i5, i6);
            }
            i = 2;
        }
        decodeBitmapData(gifFrame);
        int i7 = 8;
        int i8 = 1;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = gifFrame.f2113ih;
            if (i9 >= i11) {
                break;
            }
            if (gifFrame.interlace) {
                if (i10 >= i11) {
                    i8++;
                    if (i8 == i) {
                        i10 = 4;
                    } else if (i8 == 3) {
                        i10 = i;
                        i7 = 4;
                    } else if (i8 == 4) {
                        i7 = i;
                        i10 = 1;
                    }
                }
                i3 = i10 + i7;
            } else {
                i3 = i10;
                i10 = i9;
            }
            int i12 = i10 + gifFrame.f2116iy;
            GifHeader gifHeader2 = this.header;
            if (i12 < gifHeader2.height) {
                int i13 = gifHeader2.width;
                int i14 = i12 * i13;
                int i15 = gifFrame.f2115ix + i14;
                int i16 = gifFrame.f2114iw + i15;
                if (i14 + i13 < i16) {
                    i16 = i14 + i13;
                }
                int i17 = gifFrame.f2114iw * i9;
                while (i15 < i16) {
                    int i18 = i17 + 1;
                    int i19 = this.act[this.mainPixels[i17] & Base64.EQUALS_SIGN_ENC];
                    if (i19 != 0) {
                        iArr[i15] = i19;
                    }
                    i15++;
                    i17 = i18;
                }
            }
            i9++;
            i10 = i3;
            i = 2;
        }
        if (this.savePrevious && ((i2 = gifFrame.dispose) == 0 || i2 == 1)) {
            if (this.previousImage == null) {
                this.previousImage = getNextBitmap();
            }
            this.previousImage.setPixels(iArr, 0, i5, 0, 0, i5, i6);
        }
        Bitmap nextBitmap = getNextBitmap();
        nextBitmap.setPixels(iArr, 0, i5, 0, 0, i5, i6);
        return nextBitmap;
    }

    public void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    public void clear() {
        this.header = null;
        this.data = null;
        this.mainPixels = null;
        this.mainScratch = null;
        Bitmap bitmap = this.previousImage;
        if (bitmap != null) {
            this.bitmapProvider.release(bitmap);
        }
        this.previousImage = null;
        this.rawData = null;
    }

    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    public byte[] getData() {
        return this.data;
    }

    public int getDelay(int i) {
        if (i >= 0) {
            GifHeader gifHeader = this.header;
            if (i < gifHeader.frameCount) {
                return gifHeader.frames.get(i).delay;
            }
        }
        return -1;
    }

    public int getFrameCount() {
        return this.header.frameCount;
    }

    public int getHeight() {
        return this.header.height;
    }

    public int getLoopCount() {
        return this.header.loopCount;
    }

    public int getNextDelay() {
        int i;
        if (this.header.frameCount <= 0 || (i = this.framePointer) < 0) {
            return -1;
        }
        return getDelay(i);
    }

    public synchronized Bitmap getNextFrame() {
        if (this.header.frameCount <= 0 || this.framePointer < 0) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "unable to decode frame, frameCount=" + this.header.frameCount + " framePointer=" + this.framePointer);
            }
            this.status = 1;
        }
        if (this.status != 1 && this.status != 2) {
            int i = 0;
            this.status = 0;
            GifFrame gifFrame = this.header.frames.get(this.framePointer);
            int i2 = this.framePointer - 1;
            GifFrame gifFrame2 = i2 >= 0 ? this.header.frames.get(i2) : null;
            if (gifFrame.lct == null) {
                this.act = this.header.gct;
            } else {
                this.act = gifFrame.lct;
                if (this.header.bgIndex == gifFrame.transIndex) {
                    this.header.bgColor = 0;
                }
            }
            if (gifFrame.transparency) {
                int i3 = this.act[gifFrame.transIndex];
                this.act[gifFrame.transIndex] = 0;
                i = i3;
            }
            if (this.act == null) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "No Valid Color Table");
                }
                this.status = 1;
                return null;
            }
            Bitmap pixels = setPixels(gifFrame, gifFrame2);
            if (gifFrame.transparency) {
                this.act[gifFrame.transIndex] = i;
            }
            return pixels;
        }
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Unable to decode frame, status=" + this.status);
        }
        return null;
    }

    public int getStatus() {
        return this.status;
    }

    public int getWidth() {
        return this.header.width;
    }

    public int read(InputStream inputStream, int i) throws IOException {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i2 = inputStream.read(bArr, 0, 16384);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(TAG, "Error reading data from stream", e);
            }
        } else {
            this.status = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(TAG, "Error closing stream", e2);
            }
        }
        return this.status;
    }

    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    public void setData(GifHeader gifHeader, byte[] bArr) {
        this.header = gifHeader;
        this.data = bArr;
        this.status = 0;
        this.framePointer = -1;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.rawData = byteBufferWrap;
        byteBufferWrap.rewind();
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        this.savePrevious = false;
        Iterator<GifFrame> it = gifHeader.frames.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().dispose == 3) {
                this.savePrevious = true;
                break;
            }
        }
        int i = gifHeader.width;
        int i2 = gifHeader.height;
        this.mainPixels = new byte[i * i2];
        this.mainScratch = new int[i * i2];
    }

    public int read(byte[] bArr) {
        this.data = bArr;
        this.header = getHeaderParser().setData(bArr).parseHeader();
        if (bArr != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            this.rawData = byteBufferWrap;
            byteBufferWrap.rewind();
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            GifHeader gifHeader = this.header;
            int i = gifHeader.width;
            int i2 = gifHeader.height;
            this.mainPixels = new byte[i * i2];
            this.mainScratch = new int[i * i2];
            this.savePrevious = false;
            Iterator<GifFrame> it = gifHeader.frames.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (it.next().dispose == 3) {
                    this.savePrevious = true;
                    break;
                }
            }
        }
        return this.status;
    }

    private int read() {
        try {
            return this.rawData.get() & Base64.EQUALS_SIGN_ENC;
        } catch (Exception unused) {
            this.status = 1;
            return 0;
        }
    }
}
