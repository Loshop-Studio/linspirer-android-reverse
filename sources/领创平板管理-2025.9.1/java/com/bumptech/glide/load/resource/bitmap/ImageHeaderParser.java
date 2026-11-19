package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class ImageHeaderParser {
    public static final int[] BYTES_PER_FORMAT = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};
    public static final int EXIF_MAGIC_NUMBER = 65496;
    public static final int EXIF_SEGMENT_TYPE = 225;
    public static final int GIF_HEADER = 4671814;
    public static final int INTEL_TIFF_MAGIC_NUMBER = 18761;
    public static final String JPEG_EXIF_SEGMENT_PREAMBLE = "Exif\u0000\u0000";
    public static final byte[] JPEG_EXIF_SEGMENT_PREAMBLE_BYTES;
    public static final int MARKER_EOI = 217;
    public static final int MOTOROLA_TIFF_MAGIC_NUMBER = 19789;
    public static final int ORIENTATION_TAG_TYPE = 274;
    public static final int PNG_HEADER = -1991225785;
    public static final int SEGMENT_SOS = 218;
    public static final int SEGMENT_START_ID = 255;
    public static final String TAG = "ImageHeaderParser";
    public final StreamReader streamReader;

    public enum ImageType {
        GIF(true),
        JPEG(false),
        PNG_A(true),
        PNG(false),
        UNKNOWN(false);

        public final boolean hasAlpha;

        ImageType(boolean z) {
            this.hasAlpha = z;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    public static class RandomAccessReader {
        public final ByteBuffer data;

        public RandomAccessReader(byte[] bArr) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            this.data = byteBufferWrap;
            byteBufferWrap.order(ByteOrder.BIG_ENDIAN);
        }

        public short getInt16(int i) {
            return this.data.getShort(i);
        }

        public int getInt32(int i) {
            return this.data.getInt(i);
        }

        public int length() {
            return this.data.array().length;
        }

        public void order(ByteOrder byteOrder) {
            this.data.order(byteOrder);
        }
    }

    public static class StreamReader {

        /* renamed from: is */
        public final InputStream f2124is;

        public StreamReader(InputStream inputStream) {
            this.f2124is = inputStream;
        }

        public int getByte() {
            return this.f2124is.read();
        }

        public int getUInt16() {
            return ((this.f2124is.read() << 8) & 65280) | (this.f2124is.read() & 255);
        }

        public short getUInt8() {
            return (short) (this.f2124is.read() & 255);
        }

        public int read(byte[] bArr) throws IOException {
            int length = bArr.length;
            while (length > 0) {
                int i = this.f2124is.read(bArr, bArr.length - length, length);
                if (i == -1) {
                    break;
                }
                length -= i;
            }
            return bArr.length - length;
        }

        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long jSkip = this.f2124is.skip(j2);
                if (jSkip <= 0) {
                    if (this.f2124is.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j2 -= jSkip;
            }
            return j - j2;
        }
    }

    static {
        byte[] bytes = new byte[0];
        try {
            bytes = JPEG_EXIF_SEGMENT_PREAMBLE.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
        }
        JPEG_EXIF_SEGMENT_PREAMBLE_BYTES = bytes;
    }

    public ImageHeaderParser(InputStream inputStream) {
        this.streamReader = new StreamReader(inputStream);
    }

    public static int calcTagOffset(int i, int i2) {
        return (i2 * 12) + i + 2;
    }

    private byte[] getExifSegment() throws IOException {
        short uInt8;
        int uInt16;
        long j;
        long jSkip;
        do {
            short uInt82 = this.streamReader.getUInt8();
            if (uInt82 != 255) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Unknown segmentId=" + ((int) uInt82));
                }
                return null;
            }
            uInt8 = this.streamReader.getUInt8();
            if (uInt8 == 218) {
                return null;
            }
            if (uInt8 == 217) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Found MARKER_EOI in exif segment");
                }
                return null;
            }
            uInt16 = this.streamReader.getUInt16() - 2;
            if (uInt8 == 225) {
                byte[] bArr = new byte[uInt16];
                int i = this.streamReader.read(bArr);
                if (i == uInt16) {
                    return bArr;
                }
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Unable to read segment data, type: " + ((int) uInt8) + ", length: " + uInt16 + ", actually read: " + i);
                }
                return null;
            }
            j = uInt16;
            jSkip = this.streamReader.skip(j);
        } while (jSkip == j);
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Unable to skip enough data, type: " + ((int) uInt8) + ", wanted to skip: " + uInt16 + ", but actually skipped: " + jSkip);
        }
        return null;
    }

    public static boolean handles(int i) {
        return (i & EXIF_MAGIC_NUMBER) == 65496 || i == 19789 || i == 18761;
    }

    public static int parseExifSegment(RandomAccessReader randomAccessReader) {
        ByteOrder byteOrder;
        short int16 = randomAccessReader.getInt16(6);
        if (int16 == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (int16 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Unknown endianness = " + ((int) int16));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        randomAccessReader.order(byteOrder);
        int int32 = randomAccessReader.getInt32(10) + 6;
        short int162 = randomAccessReader.getInt16(int32);
        for (int i = 0; i < int162; i++) {
            int iCalcTagOffset = calcTagOffset(int32, i);
            short int163 = randomAccessReader.getInt16(iCalcTagOffset);
            if (int163 == 274) {
                short int164 = randomAccessReader.getInt16(iCalcTagOffset + 2);
                if (int164 >= 1 && int164 <= 12) {
                    int int322 = randomAccessReader.getInt32(iCalcTagOffset + 4);
                    if (int322 >= 0) {
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Got tagIndex=" + i + " tagType=" + ((int) int163) + " formatCode=" + ((int) int164) + " componentCount=" + int322);
                        }
                        int i2 = int322 + BYTES_PER_FORMAT[int164];
                        if (i2 <= 4) {
                            int i3 = iCalcTagOffset + 8;
                            if (i3 >= 0 && i3 <= randomAccessReader.length()) {
                                if (i2 >= 0 && i2 + i3 <= randomAccessReader.length()) {
                                    return randomAccessReader.getInt16(i3);
                                }
                                if (Log.isLoggable(TAG, 3)) {
                                    Log.d(TAG, "Illegal number of bytes for TI tag data tagType=" + ((int) int163));
                                }
                            } else if (Log.isLoggable(TAG, 3)) {
                                Log.d(TAG, "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) int163));
                            }
                        } else if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) int164));
                        }
                    } else if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Negative tiff component count");
                    }
                } else if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Got invalid format code=" + ((int) int164));
                }
            }
        }
        return -1;
    }

    public int getOrientation() throws IOException {
        if (!handles(this.streamReader.getUInt16())) {
            return -1;
        }
        byte[] exifSegment = getExifSegment();
        boolean z = false;
        boolean z2 = exifSegment != null && exifSegment.length > JPEG_EXIF_SEGMENT_PREAMBLE_BYTES.length;
        if (z2) {
            int i = 0;
            while (true) {
                byte[] bArr = JPEG_EXIF_SEGMENT_PREAMBLE_BYTES;
                if (i >= bArr.length) {
                    break;
                }
                if (exifSegment[i] != bArr[i]) {
                    break;
                }
                i++;
            }
            z = z2;
        } else {
            z = z2;
        }
        if (z) {
            return parseExifSegment(new RandomAccessReader(exifSegment));
        }
        return -1;
    }

    public ImageType getType() throws IOException {
        int uInt16 = this.streamReader.getUInt16();
        if (uInt16 == 65496) {
            return ImageType.JPEG;
        }
        int uInt162 = ((uInt16 << 16) & (-65536)) | (this.streamReader.getUInt16() & 65535);
        if (uInt162 != -1991225785) {
            return (uInt162 >> 8) == 4671814 ? ImageType.GIF : ImageType.UNKNOWN;
        }
        this.streamReader.skip(21L);
        return this.streamReader.getByte() >= 3 ? ImageType.PNG_A : ImageType.PNG;
    }

    public boolean hasAlpha() {
        return getType().hasAlpha();
    }
}
