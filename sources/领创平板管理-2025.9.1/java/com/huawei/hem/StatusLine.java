package com.huawei.hem;

import java.net.ProtocolException;

/* compiled from: StatusLine.java */
/* renamed from: com.huawei.hem.tl */
/* loaded from: classes.dex */
public final class StatusLine {

    /* renamed from: a */
    public final Protocol f3826a;

    /* renamed from: b */
    public final int f3827b;

    /* renamed from: c */
    public final String f3828c;

    public StatusLine(Protocol enumC0936ek, int i, String str) {
        this.f3826a = enumC0936ek;
        this.f3827b = i;
        this.f3828c = str;
    }

    /* renamed from: a */
    public static StatusLine m2772a(String str) throws ProtocolException, NumberFormatException {
        Protocol enumC0936ek;
        String strSubstring;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException(CompilerOutline.m1760e("Unexpected status line: ", str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                enumC0936ek = Protocol.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException(CompilerOutline.m1760e("Unexpected status line: ", str));
                }
                enumC0936ek = Protocol.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException(CompilerOutline.m1760e("Unexpected status line: ", str));
            }
            enumC0936ek = Protocol.HTTP_1_0;
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException(CompilerOutline.m1760e("Unexpected status line: ", str));
        }
        try {
            int i3 = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                strSubstring = "";
            } else {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException(CompilerOutline.m1760e("Unexpected status line: ", str));
                }
                strSubstring = str.substring(i + 4);
            }
            return new StatusLine(enumC0936ek, i3, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException(CompilerOutline.m1760e("Unexpected status line: ", str));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3826a == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f3827b);
        if (this.f3828c != null) {
            sb.append(' ');
            sb.append(this.f3828c);
        }
        return sb.toString();
    }
}
