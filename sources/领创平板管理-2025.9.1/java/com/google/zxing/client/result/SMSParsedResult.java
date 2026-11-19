package com.google.zxing.client.result;

import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.AbstractC1604b;

/* loaded from: classes.dex */
public final class SMSParsedResult extends ParsedResult {
    public final String body;
    public final String[] numbers;
    public final String subject;
    public final String[] vias;

    public SMSParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.numbers = new String[]{str};
        this.vias = new String[]{str2};
        this.subject = str3;
        this.body = str4;
    }

    public String getBody() {
        return this.body;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.numbers, sb);
        ParsedResult.maybeAppend(this.subject, sb);
        ParsedResult.maybeAppend(this.body, sb);
        return sb.toString();
    }

    public String[] getNumbers() {
        return this.numbers;
    }

    public String getSMSURI() {
        StringBuilder sbM1765j = C0948f6.m1765j("sms:");
        boolean z = true;
        for (int i = 0; i < this.numbers.length; i++) {
            if (z) {
                z = false;
            } else {
                sbM1765j.append(AbstractC1604b.COMMA);
            }
            sbM1765j.append(this.numbers[i]);
            String[] strArr = this.vias;
            if (strArr != null && strArr[i] != null) {
                sbM1765j.append(";via=");
                sbM1765j.append(this.vias[i]);
            }
        }
        boolean z2 = this.body != null;
        boolean z3 = this.subject != null;
        if (z2 || z3) {
            sbM1765j.append('?');
            if (z2) {
                sbM1765j.append("body=");
                sbM1765j.append(this.body);
            }
            if (z3) {
                if (z2) {
                    sbM1765j.append('&');
                }
                sbM1765j.append("subject=");
                sbM1765j.append(this.subject);
            }
        }
        return sbM1765j.toString();
    }

    public String getSubject() {
        return this.subject;
    }

    public String[] getVias() {
        return this.vias;
    }

    public SMSParsedResult(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.numbers = strArr;
        this.vias = strArr2;
        this.subject = str;
        this.body = str2;
    }
}
