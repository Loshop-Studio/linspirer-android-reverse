package com.loc;

import android.support.annotation.NonNull;
import com.loc.FpsCollector;
import java.util.List;

/* compiled from: OpenSdkCollectionManagerProxy.java */
/* renamed from: com.loc.cu */
/* loaded from: classes.dex */
public final class OpenSdkCollectionManagerProxy {
    public OpenSdkCollectionManagerProxy(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull INetwork interfaceC1802dk) {
        HeaderConfig.m4523b();
        HeaderConfig.m4528d(str4);
        HeaderConfig.m4532f("74");
        HeaderConfig.m4530e("v74");
        HeaderConfig.m4522a(str);
        HeaderConfig.m4526c(str2);
        HeaderConfig.m4524b(str3);
        AmapContext.m4434a(interfaceC1802dk);
    }

    /* renamed from: a */
    public static CollectionData m4412a(FpsCollector.a aVar) {
        return FpsCollector.m4262a().m4263a(aVar);
    }

    /* renamed from: a */
    public static void m4413a(List<AmapCell> list) {
        RssiManager.m4409a(list);
    }

    /* renamed from: a */
    public static boolean m4414a(byte[] bArr) {
        return CollectionUploader.m4281a(bArr);
    }

    /* renamed from: a */
    public static byte[] m4415a() {
        return UploadBufferBuilder.m4252b().m4254c();
    }

    /* renamed from: a */
    public static byte[] m4416a(byte[] bArr, byte[] bArr2, List<CollectionData> list) {
        return UploadBufferBuilder.m4252b().m4253a(bArr, bArr2, list);
    }

    /* renamed from: b */
    public static void m4417b() {
        AmapContext.m4433a();
    }

    /* renamed from: b */
    public static void m4418b(List<AmapWifi> list) {
        RssiManager.m4411b(list);
    }

    /* renamed from: a */
    public final OpenSdkCollectionManagerProxy m4419a(int i) {
        HeaderConfig.m4520a(i);
        return this;
    }

    /* renamed from: a */
    public final OpenSdkCollectionManagerProxy m4420a(long j) {
        HeaderConfig.m4521a(j);
        return this;
    }

    /* renamed from: a */
    public final OpenSdkCollectionManagerProxy m4421a(String str) {
        HeaderConfig.m4534g(str);
        return this;
    }

    /* renamed from: b */
    public final OpenSdkCollectionManagerProxy m4422b(String str) {
        HeaderConfig.m4536h(str);
        return this;
    }

    /* renamed from: c */
    public final OpenSdkCollectionManagerProxy m4423c(String str) {
        HeaderConfig.m4538i(str);
        return this;
    }

    /* renamed from: d */
    public final OpenSdkCollectionManagerProxy m4424d(String str) {
        HeaderConfig.m4540j(str);
        return this;
    }

    /* renamed from: e */
    public final OpenSdkCollectionManagerProxy m4425e(String str) {
        HeaderConfig.m4542k(str);
        return this;
    }

    /* renamed from: f */
    public final OpenSdkCollectionManagerProxy m4426f(String str) {
        HeaderConfig.m4544l(str);
        return this;
    }

    /* renamed from: g */
    public final OpenSdkCollectionManagerProxy m4427g(String str) {
        HeaderConfig.m4546m(str);
        return this;
    }

    /* renamed from: h */
    public final OpenSdkCollectionManagerProxy m4428h(String str) {
        HeaderConfig.m4548n(str);
        return this;
    }

    /* renamed from: i */
    public final OpenSdkCollectionManagerProxy m4429i(String str) {
        HeaderConfig.m4549o(str);
        return this;
    }

    /* renamed from: j */
    public final OpenSdkCollectionManagerProxy m4430j(String str) {
        HeaderConfig.m4550p(str);
        return this;
    }

    /* renamed from: k */
    public final OpenSdkCollectionManagerProxy m4431k(String str) {
        HeaderConfig.m4551q(str);
        return this;
    }
}
