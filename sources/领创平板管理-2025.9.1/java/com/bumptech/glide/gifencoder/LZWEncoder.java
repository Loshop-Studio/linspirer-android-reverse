package com.bumptech.glide.gifencoder;

import android.support.v4.app.FrameMetricsAggregator;
import anet.channel.entity.EventType;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.taobao.accs.data.Message;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class LZWEncoder {
    public static final int BITS = 12;
    public static final int EOF = -1;
    public static final int HSIZE = 5003;
    public int ClearCode;
    public int EOFCode;
    public int a_count;
    public int curPixel;
    public int g_init_bits;
    public int imgH;
    public int imgW;
    public int initCodeSize;
    public int maxcode;
    public int n_bits;
    public byte[] pixAry;
    public int remaining;
    public int maxbits = 12;
    public int maxmaxcode = 4096;
    public int[] htab = new int[HSIZE];
    public int[] codetab = new int[HSIZE];
    public int hsize = HSIZE;
    public int free_ent = 0;
    public boolean clear_flg = false;
    public int cur_accum = 0;
    public int cur_bits = 0;
    public int[] masks = {0, 1, 3, 7, 15, 31, 63, 127, 255, FrameMetricsAggregator.EVERY_DURATION, Message.EXT_HEADER_VALUE_MAX_LEN, 2047, EventType.ALL, 8191, 16383, 32767, 65535};
    public byte[] accum = new byte[256];

    public LZWEncoder(int i, int i2, byte[] bArr, int i3) {
        this.imgW = i;
        this.imgH = i2;
        this.pixAry = bArr;
        this.initCodeSize = Math.max(2, i3);
    }

    private int nextPixel() {
        int i = this.remaining;
        if (i == 0) {
            return -1;
        }
        this.remaining = i - 1;
        byte[] bArr = this.pixAry;
        int i2 = this.curPixel;
        this.curPixel = i2 + 1;
        return bArr[i2] & Base64.EQUALS_SIGN_ENC;
    }

    public final int MAXCODE(int i) {
        return (1 << i) - 1;
    }

    public void char_out(byte b, OutputStream outputStream) throws IOException {
        byte[] bArr = this.accum;
        int i = this.a_count;
        int i2 = i + 1;
        this.a_count = i2;
        bArr[i] = b;
        if (i2 >= 254) {
            flush_char(outputStream);
        }
    }

    public void cl_block(OutputStream outputStream) throws IOException {
        cl_hash(this.hsize);
        int i = this.ClearCode;
        this.free_ent = i + 2;
        this.clear_flg = true;
        output(i, outputStream);
    }

    public void cl_hash(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.htab[i2] = -1;
        }
    }

    public void compress(int i, OutputStream outputStream) throws IOException {
        int[] iArr;
        this.g_init_bits = i;
        int i2 = 0;
        this.clear_flg = false;
        this.n_bits = i;
        this.maxcode = MAXCODE(i);
        int i3 = 1 << (i - 1);
        this.ClearCode = i3;
        this.EOFCode = i3 + 1;
        this.free_ent = i3 + 2;
        this.a_count = 0;
        int iNextPixel = nextPixel();
        for (int i4 = this.hsize; i4 < 65536; i4 *= 2) {
            i2++;
        }
        int i5 = 8 - i2;
        int i6 = this.hsize;
        cl_hash(i6);
        output(this.ClearCode, outputStream);
        while (true) {
            int iNextPixel2 = nextPixel();
            if (iNextPixel2 == -1) {
                output(iNextPixel, outputStream);
                output(this.EOFCode, outputStream);
                return;
            }
            int i7 = (iNextPixel2 << this.maxbits) + iNextPixel;
            int i8 = (iNextPixel2 << i5) ^ iNextPixel;
            int[] iArr2 = this.htab;
            if (iArr2[i8] == i7) {
                iNextPixel = this.codetab[i8];
            } else {
                if (iArr2[i8] >= 0) {
                    int i9 = i6 - i8;
                    if (i8 == 0) {
                        i9 = 1;
                    }
                    do {
                        i8 -= i9;
                        if (i8 < 0) {
                            i8 += i6;
                        }
                        iArr = this.htab;
                        if (iArr[i8] == i7) {
                            iNextPixel = this.codetab[i8];
                            break;
                        }
                    } while (iArr[i8] >= 0);
                }
                output(iNextPixel, outputStream);
                int i10 = this.free_ent;
                if (i10 < this.maxmaxcode) {
                    int[] iArr3 = this.codetab;
                    this.free_ent = i10 + 1;
                    iArr3[i8] = i10;
                    this.htab[i8] = i7;
                } else {
                    cl_block(outputStream);
                }
                iNextPixel = iNextPixel2;
            }
        }
    }

    public void encode(OutputStream outputStream) throws IOException {
        outputStream.write(this.initCodeSize);
        this.remaining = this.imgW * this.imgH;
        this.curPixel = 0;
        compress(this.initCodeSize + 1, outputStream);
        outputStream.write(0);
    }

    public void flush_char(OutputStream outputStream) throws IOException {
        int i = this.a_count;
        if (i > 0) {
            outputStream.write(i);
            outputStream.write(this.accum, 0, this.a_count);
            this.a_count = 0;
        }
    }

    public void output(int i, OutputStream outputStream) throws IOException {
        int i2 = this.cur_accum;
        int[] iArr = this.masks;
        int i3 = this.cur_bits;
        int i4 = i2 & iArr[i3];
        this.cur_accum = i4;
        if (i3 > 0) {
            this.cur_accum = i4 | (i << i3);
        } else {
            this.cur_accum = i;
        }
        this.cur_bits += this.n_bits;
        while (this.cur_bits >= 8) {
            char_out((byte) (this.cur_accum & 255), outputStream);
            this.cur_accum >>= 8;
            this.cur_bits -= 8;
        }
        if (this.free_ent > this.maxcode || this.clear_flg) {
            if (this.clear_flg) {
                int i5 = this.g_init_bits;
                this.n_bits = i5;
                this.maxcode = MAXCODE(i5);
                this.clear_flg = false;
            } else {
                int i6 = this.n_bits + 1;
                this.n_bits = i6;
                if (i6 == this.maxbits) {
                    this.maxcode = this.maxmaxcode;
                } else {
                    this.maxcode = MAXCODE(i6);
                }
            }
        }
        if (i == this.EOFCode) {
            while (this.cur_bits > 0) {
                char_out((byte) (this.cur_accum & 255), outputStream);
                this.cur_accum >>= 8;
                this.cur_bits -= 8;
            }
            flush_char(outputStream);
        }
    }
}
