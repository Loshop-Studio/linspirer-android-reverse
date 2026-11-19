package com.huawei.hms.core.aidl;

/* compiled from: CodecLookup.java */
/* renamed from: com.huawei.hms.core.aidl.a */
/* loaded from: classes.dex */
public final class CodecLookup {
    /* renamed from: a */
    public static MessageCodec m3386a(int i) {
        return i == 2 ? new MessageCodecV2() : new MessageCodec();
    }
}
