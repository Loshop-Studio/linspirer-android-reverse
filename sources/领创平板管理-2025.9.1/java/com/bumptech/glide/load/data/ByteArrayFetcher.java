package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ByteArrayFetcher implements DataFetcher<InputStream> {
    public final byte[] bytes;

    /* renamed from: id */
    public final String f2118id;

    public ByteArrayFetcher(byte[] bArr, String str) {
        this.bytes = bArr;
        this.f2118id = str;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public String getId() {
        return this.f2118id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.data.DataFetcher
    public InputStream loadData(Priority priority) {
        return new ByteArrayInputStream(this.bytes);
    }
}
