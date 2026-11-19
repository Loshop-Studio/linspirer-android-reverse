package com.alibaba.fastjson.asm;

import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.AbstractC1604b;

/* loaded from: classes.dex */
public class MethodCollector {
    public boolean debugInfoPresent;
    public final int ignoreCount;
    public final int paramCount;
    public final StringBuilder result = new StringBuilder();
    public int currentParameter = 0;

    public MethodCollector(int i, int i2) {
        this.ignoreCount = i;
        this.paramCount = i2;
        this.debugInfoPresent = i2 == 0;
    }

    public String getResult() {
        return this.result.length() != 0 ? this.result.substring(1) : "";
    }

    public void visitLocalVariable(String str, int i) {
        int i2 = this.ignoreCount;
        if (i < i2 || i >= i2 + this.paramCount) {
            return;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("arg");
        sbM1765j.append(this.currentParameter);
        if (!str.equals(sbM1765j.toString())) {
            this.debugInfoPresent = true;
        }
        this.result.append(AbstractC1604b.COMMA);
        this.result.append(str);
        this.currentParameter++;
    }
}
