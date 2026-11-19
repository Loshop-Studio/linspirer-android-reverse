package com.huawei.hem;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

/* compiled from: FileDownloadRandomAccessFile.java */
/* renamed from: com.huawei.hem.yg */
/* loaded from: classes.dex */
public class FileDownloadRandomAccessFile implements FileDownloadOutputStream {

    /* renamed from: a */
    public final BufferedOutputStream f4218a;

    /* renamed from: b */
    public final FileDescriptor f4219b;

    /* renamed from: c */
    public final RandomAccessFile f4220c;

    /* compiled from: FileDownloadRandomAccessFile.java */
    /* renamed from: com.huawei.hem.yg$a */
    public static class a implements InterfaceC0933eh {
    }

    public FileDownloadRandomAccessFile(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this.f4220c = randomAccessFile;
        this.f4219b = randomAccessFile.getFD();
        this.f4218a = new BufferedOutputStream(new FileOutputStream(this.f4220c.getFD()));
    }

    /* renamed from: a */
    public void m3087a() throws IOException {
        this.f4218a.close();
        this.f4220c.close();
    }
}
