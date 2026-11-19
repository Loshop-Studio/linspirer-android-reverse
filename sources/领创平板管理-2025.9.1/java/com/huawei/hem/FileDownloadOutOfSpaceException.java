package com.huawei.hem;

import android.annotation.TargetApi;
import java.io.IOException;

/* compiled from: FileDownloadOutOfSpaceException.java */
/* renamed from: com.huawei.hem.cg */
/* loaded from: classes.dex */
public class FileDownloadOutOfSpaceException extends IOException {
    public long breakpointBytes;
    public long freeSpaceBytes;
    public long requiredSpaceBytes;

    @TargetApi(9)
    public FileDownloadOutOfSpaceException(long j, long j2, long j3, Throwable th) {
        super(FileDownloadUtils.m1955e("The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d", Long.valueOf(j3), Long.valueOf(j2), Long.valueOf(j)), th);
        this.freeSpaceBytes = j;
        this.requiredSpaceBytes = j2;
        this.breakpointBytes = j3;
    }

    public long getBreakpointBytes() {
        return this.breakpointBytes;
    }

    public long getFreeSpaceBytes() {
        return this.freeSpaceBytes;
    }

    public long getRequiredSpaceBytes() {
        return this.requiredSpaceBytes;
    }

    public FileDownloadOutOfSpaceException(long j, long j2, long j3) {
        super(FileDownloadUtils.m1955e("The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d", Long.valueOf(j3), Long.valueOf(j2), Long.valueOf(j)));
        this.freeSpaceBytes = j;
        this.requiredSpaceBytes = j2;
        this.breakpointBytes = j3;
    }
}
