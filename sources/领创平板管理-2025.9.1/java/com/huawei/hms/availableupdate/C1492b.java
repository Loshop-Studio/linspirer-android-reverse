package com.huawei.hms.availableupdate;

import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.IOUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;

/* compiled from: RandomFileOutputStream.java */
/* renamed from: com.huawei.hms.availableupdate.b */
/* loaded from: classes.dex */
public class C1492b extends OutputStream {

    /* renamed from: a */
    public RandomAccessFile f4439a;

    public C1492b(File file, int i) throws IOException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rwd");
            this.f4439a = randomAccessFile;
            randomAccessFile.setLength(i);
        } catch (FileNotFoundException unused) {
            HMSLog.m3461e("RandomFileOutputStream", "create  file stream failed");
        } catch (IOException unused2) {
            IOUtils.closeQuietly(this.f4439a);
            HMSLog.m3461e("RandomFileOutputStream", "create  file stream failed");
        }
    }

    /* renamed from: a */
    public void m3272a(long j) throws IOException {
        this.f4439a.seek(j);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4439a.close();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f4439a.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }
}
