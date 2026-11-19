package com.bumptech.glide.gifdecoder;

import android.util.Log;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.CompilerOutline;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public class GifHeaderParser {
    public static final int DEFAULT_FRAME_DELAY = 10;
    public static final int MAX_BLOCK_SIZE = 256;
    public static final int MIN_FRAME_DELAY = 3;
    public static final String TAG = "GifHeaderParser";
    public final byte[] block = new byte[256];
    public int blockSize = 0;
    public GifHeader header;
    public ByteBuffer rawData;

    private boolean err() {
        return this.header.status != 0;
    }

    private int read() {
        try {
            return this.rawData.get() & Base64.EQUALS_SIGN_ENC;
        } catch (Exception unused) {
            this.header.status = 1;
            return 0;
        }
    }

    private void readBitmap() {
        this.header.currentFrame.f2115ix = readShort();
        this.header.currentFrame.f2116iy = readShort();
        this.header.currentFrame.f2114iw = readShort();
        this.header.currentFrame.f2113ih = readShort();
        int i = read();
        boolean z = (i & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (i & 7) + 1);
        this.header.currentFrame.interlace = (i & 64) != 0;
        if (z) {
            this.header.currentFrame.lct = readColorTable(iPow);
        } else {
            this.header.currentFrame.lct = null;
        }
        this.header.currentFrame.bufferFrameStart = this.rawData.position();
        skipImageData();
        if (err()) {
            return;
        }
        GifHeader gifHeader = this.header;
        gifHeader.frameCount++;
        gifHeader.frames.add(gifHeader.currentFrame);
    }

    private int readBlock() {
        int i = read();
        this.blockSize = i;
        int i2 = 0;
        if (i > 0) {
            int i3 = 0;
            while (i2 < this.blockSize) {
                try {
                    i3 = this.blockSize - i2;
                    this.rawData.get(this.block, i2, i3);
                    i2 += i3;
                } catch (Exception e) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Error Reading Block n: " + i2 + " count: " + i3 + " blockSize: " + this.blockSize, e);
                    }
                    this.header.status = 1;
                }
            }
        }
        return i2;
    }

    private int[] readColorTable(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.rawData.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                int i5 = i4 + 1;
                int i6 = i5 + 1;
                int i7 = i2 + 1;
                iArr[i2] = ((bArr[i3] & Base64.EQUALS_SIGN_ENC) << 16) | (-16777216) | ((bArr[i4] & Base64.EQUALS_SIGN_ENC) << 8) | (bArr[i5] & Base64.EQUALS_SIGN_ENC);
                i3 = i6;
                i2 = i7;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Format Error Reading Color Table", e);
            }
            this.header.status = 1;
        }
        return iArr;
    }

    private void readContents() {
        boolean z = false;
        while (!z && !err()) {
            int i = read();
            if (i == 33) {
                int i2 = read();
                if (i2 == 1) {
                    skip();
                } else if (i2 == 249) {
                    this.header.currentFrame = new GifFrame();
                    readGraphicControlExt();
                } else if (i2 == 254) {
                    skip();
                } else if (i2 != 255) {
                    skip();
                } else {
                    readBlock();
                    String string = "";
                    for (int i3 = 0; i3 < 11; i3++) {
                        StringBuilder sbM1765j = CompilerOutline.m1765j(string);
                        sbM1765j.append((char) this.block[i3]);
                        string = sbM1765j.toString();
                    }
                    if (string.equals("NETSCAPE2.0")) {
                        readNetscapeExt();
                    } else {
                        skip();
                    }
                }
            } else if (i == 44) {
                GifHeader gifHeader = this.header;
                if (gifHeader.currentFrame == null) {
                    gifHeader.currentFrame = new GifFrame();
                }
                readBitmap();
            } else if (i != 59) {
                this.header.status = 1;
            } else {
                z = true;
            }
        }
    }

    private void readGraphicControlExt() {
        read();
        int i = read();
        GifFrame gifFrame = this.header.currentFrame;
        int i2 = (i & 28) >> 2;
        gifFrame.dispose = i2;
        if (i2 == 0) {
            gifFrame.dispose = 1;
        }
        this.header.currentFrame.transparency = (i & 1) != 0;
        int i3 = readShort();
        if (i3 < 3) {
            i3 = 10;
        }
        GifFrame gifFrame2 = this.header.currentFrame;
        gifFrame2.delay = i3 * 10;
        gifFrame2.transIndex = read();
        read();
    }

    private void readHeader() {
        String string = "";
        for (int i = 0; i < 6; i++) {
            StringBuilder sbM1765j = CompilerOutline.m1765j(string);
            sbM1765j.append((char) read());
            string = sbM1765j.toString();
        }
        if (!string.startsWith("GIF")) {
            this.header.status = 1;
            return;
        }
        readLSD();
        if (!this.header.gctFlag || err()) {
            return;
        }
        GifHeader gifHeader = this.header;
        gifHeader.gct = readColorTable(gifHeader.gctSize);
        GifHeader gifHeader2 = this.header;
        gifHeader2.bgColor = gifHeader2.gct[gifHeader2.bgIndex];
    }

    private void readLSD() {
        this.header.width = readShort();
        this.header.height = readShort();
        int i = read();
        this.header.gctFlag = (i & 128) != 0;
        GifHeader gifHeader = this.header;
        gifHeader.gctSize = 2 << (i & 7);
        gifHeader.bgIndex = read();
        this.header.pixelAspect = read();
    }

    private void readNetscapeExt() {
        do {
            readBlock();
            byte[] bArr = this.block;
            if (bArr[0] == 1) {
                this.header.loopCount = ((bArr[2] & Base64.EQUALS_SIGN_ENC) << 8) | (bArr[1] & Base64.EQUALS_SIGN_ENC);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    private int readShort() {
        return this.rawData.getShort();
    }

    private void reset() {
        this.rawData = null;
        Arrays.fill(this.block, (byte) 0);
        this.header = new GifHeader();
        this.blockSize = 0;
    }

    private void skip() {
        int i;
        do {
            i = read();
            ByteBuffer byteBuffer = this.rawData;
            byteBuffer.position(byteBuffer.position() + i);
        } while (i > 0);
    }

    private void skipImageData() {
        read();
        skip();
    }

    public void clear() {
        this.rawData = null;
        this.header = null;
    }

    public GifHeader parseHeader() {
        if (this.rawData == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (err()) {
            return this.header;
        }
        readHeader();
        if (!err()) {
            readContents();
            GifHeader gifHeader = this.header;
            if (gifHeader.frameCount < 0) {
                gifHeader.status = 1;
            }
        }
        return this.header;
    }

    public GifHeaderParser setData(byte[] bArr) {
        reset();
        if (bArr != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            this.rawData = byteBufferWrap;
            byteBufferWrap.rewind();
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.rawData = null;
            this.header.status = 2;
        }
        return this;
    }
}
