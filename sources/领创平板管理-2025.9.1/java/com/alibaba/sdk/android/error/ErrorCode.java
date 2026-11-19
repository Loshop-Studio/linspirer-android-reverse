package com.alibaba.sdk.android.error;

import com.huawei.hem.CompilerOutline;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ErrorCode implements Serializable {
    public final Code code;
    public String detail;
    public String msg;
    public String[] solutions;

    public ErrorCode(Code code) {
        this.code = code;
        this.msg = null;
        this.detail = null;
        this.solutions = null;
    }

    @Deprecated
    public ErrorCode(String str, String str2, String str3, String[] strArr, boolean z) {
        this.code = new Code(str, null);
        this.msg = str2;
        this.detail = str3;
        this.solutions = strArr;
    }

    public static String docContent(ErrorCode[] errorCodeArr) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("\n");
        for (ErrorCode errorCode : errorCodeArr) {
            sbM1765j.append("|");
            sbM1765j.append(errorCode.code);
            sbM1765j.append("|");
            sbM1765j.append(errorCode.msg);
            sbM1765j.append("|");
            if (errorCode.solutions != null) {
                int i = 0;
                while (i < errorCode.solutions.length) {
                    if (i != 0) {
                        sbM1765j.append("<br />");
                    }
                    int i2 = i + 1;
                    sbM1765j.append(i2);
                    sbM1765j.append(". ");
                    sbM1765j.append(errorCode.solutions[i]);
                    i = i2;
                }
            }
            sbM1765j.append("|\n");
        }
        return sbM1765j.toString();
    }

    public static String docTitle() {
        return "\n| 错误码 | 错误描述 | 备注            |\n| ------ | -------- | ------------------- |\n";
    }

    public static String toStringWithAllInfo(ErrorCode errorCode) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("错误码：");
        sbM1765j.append(errorCode.code);
        sbM1765j.append(", ");
        sbM1765j.append("错误：");
        sbM1765j.append(errorCode.msg);
        String str = errorCode.detail;
        if (str != null && !str.isEmpty()) {
            sbM1765j.append("(");
            sbM1765j.append(errorCode.detail);
            sbM1765j.append("), ");
        }
        String[] strArr = errorCode.solutions;
        if (strArr != null && strArr.length > 0) {
            sbM1765j.append("请检查一下几点：");
            for (String str2 : errorCode.solutions) {
                sbM1765j.append(str2);
                sbM1765j.append("; ");
            }
        }
        return sbM1765j.toString();
    }

    public ErrorBuilder copy() {
        ErrorBuilder errorBuilderBuilder = ErrorBuilder.builder(this.code);
        String str = this.msg;
        if (str != null) {
            errorBuilderBuilder.msg(str);
        }
        String str2 = this.detail;
        if (str2 != null) {
            errorBuilderBuilder.detail(str2);
        }
        String[] strArr = this.solutions;
        if (strArr != null) {
            errorBuilderBuilder.solutions(strArr);
        }
        return errorBuilderBuilder;
    }

    @Deprecated
    public ErrorCode create(String str) {
        return create(str, false);
    }

    @Deprecated
    public ErrorCode create(String str, boolean z) {
        return new ErrorCode(this.code.getCodeStr(), this.msg, str, this.solutions, z);
    }

    public String getCode() {
        return this.code.getCodeStr();
    }

    public int getCodeInt() {
        return this.code.getCodeInt();
    }

    public String getMsg() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.msg);
        String str = this.detail;
        if (str != null && !str.isEmpty()) {
            sb.append("(");
            sb.append(this.detail);
            sb.append(")");
        }
        return sb.toString();
    }

    public void setDetail(String str) {
        this.detail = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSolutions(String[] strArr) {
        this.solutions = strArr;
    }

    public String toShortString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("(");
        sbM1765j.append(this.code);
        sbM1765j.append(",");
        sbM1765j.append(this.msg);
        sbM1765j.append(",");
        return CompilerOutline.m1762g(sbM1765j, this.detail, ")");
    }

    public String toString() {
        return toStringWithAllInfo(this);
    }
}
