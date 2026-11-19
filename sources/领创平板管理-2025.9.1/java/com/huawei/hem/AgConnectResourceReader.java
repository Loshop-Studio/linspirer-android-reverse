package com.huawei.hem;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.huawei.hem.a7 */
/* loaded from: classes.dex */
public class AgConnectResourceReader implements AgConnectConfigValueReader {

    /* renamed from: a */
    public final Context f2184a;

    /* renamed from: b */
    public final String f2185b;

    public AgConnectResourceReader(Context context, String str) {
        this.f2184a = context;
        this.f2185b = str;
    }

    @Override // com.huawei.hem.InterfaceC1400x6
    /* renamed from: a */
    public String mo1299a(String str, String str2) {
        String string;
        int identifier;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("agc_");
            sb.append(AgConnectHexCodec.m3080a(MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8"))));
            string = sb.toString();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            string = "";
        }
        if (TextUtils.isEmpty(string) || (identifier = this.f2184a.getResources().getIdentifier(string, "string", this.f2185b)) == 0) {
            return str2;
        }
        try {
            return this.f2184a.getResources().getString(identifier);
        } catch (Resources.NotFoundException unused2) {
            return str2;
        }
    }
}
