package com.huawei.hms.framework.common;

import android.database.Cursor;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

/* loaded from: classes.dex */
public class IoUtils {
    public static final int BUFF_SIZE = 4096;
    public static final int MAX_SIZE = 16777216;

    public static void close(Cursor cursor) {
        if (cursor != null) {
            cursor.close();
        }
    }

    public static void closeSecure(Closeable closeable) throws IOException {
        if (closeable == null) {
            Logger.m3438w("IOUtil", "closeable is null");
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
            Logger.m3439w("IOUtil", "closeSecure IOException", e);
        }
    }

    public static void closeSecure(InputStream inputStream) throws IOException {
        closeSecure((Closeable) inputStream);
    }

    public static void closeSecure(OutputStream outputStream) throws IOException {
        closeSecure((Closeable) outputStream);
    }

    public static void closeSecure(Reader reader) throws IOException {
        closeSecure((Closeable) reader);
    }

    public static void closeSecure(Writer writer) throws IOException {
        closeSecure((Closeable) writer);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 == i) {
                return j;
            }
            if (j > 16777216) {
                throw new IOException("input data too large for byte.");
            }
            outputStream.write(bArr, 0, i);
            j += i;
        }
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
