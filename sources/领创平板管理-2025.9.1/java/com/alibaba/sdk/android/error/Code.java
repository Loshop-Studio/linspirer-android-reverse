package com.alibaba.sdk.android.error;

import com.huawei.hem.C0948f6;
import java.io.Serializable;

/* loaded from: classes.dex */
public class Code implements Serializable {
    public final Integer codeInt;
    public final String codeStr;

    public Code(String str, Integer num) {
        this.codeStr = str;
        this.codeInt = num;
        if (num == null && str == null) {
            throw new IllegalStateException("错误码定义错误");
        }
    }

    public int getCodeInt() {
        Integer num = this.codeInt;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("不支持整数类型的错误码");
    }

    public String getCodeStr() {
        String str = this.codeStr;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("不支持字符串类型的错误码");
    }

    public String toString() {
        String str = this.codeStr;
        if (str != null) {
            return str;
        }
        Integer num = this.codeInt;
        if (num != null) {
            return String.valueOf(num);
        }
        StringBuilder sbM1765j = C0948f6.m1765j("invalid code ");
        sbM1765j.append(hashCode());
        return sbM1765j.toString();
    }
}
