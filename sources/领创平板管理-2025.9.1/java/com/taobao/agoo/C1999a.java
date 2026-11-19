package com.taobao.agoo;

import com.alibaba.sdk.android.error.ErrorBuilder;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.error.ErrorDefine;
import com.huawei.hem.CompilerOutline;
import com.taobao.agoo.p074a.p075a.AbstractC2002b;

/* compiled from: Taobao */
/* renamed from: com.taobao.agoo.a */
/* loaded from: classes.dex */
public class C1999a {
    public static final ErrorCode ACCS_CHECK_ERROR;
    public static final ErrorCode AGOO_NOT_BIND;
    public static final ErrorCode INVALID_ARG;
    public static final ErrorCode REGISTER_DATA_ERROR;
    public static final ErrorCode REMOVE_ALIAS_FAIL_NO_ALIAS;
    public static final ErrorCode REMOVE_ALIAS_FAIL_NO_TOKEN;
    public static final ErrorCode SUCCESS;

    /* renamed from: a */
    public static final ErrorDefine f6411a;
    public static final ErrorCode[] codes;

    static {
        ErrorDefine errorDefine = new ErrorDefine("EAGOO");
        f6411a = errorDefine;
        SUCCESS = errorDefine.defineSdkError(AbstractC2002b.JSON_SUCCESS).msg(AbstractC2002b.JSON_SUCCESS).build();
        REMOVE_ALIAS_FAIL_NO_TOKEN = f6411a.defineSdkError("remove_alias_fail_no_token").msg("移除别名失败，本地没有别名记录").solution("请检查输入的别名是否正确").solution("低版本推送有概率出现，添加别名后，应用的数据被清除，导致sdk内部存储的别名信息丢失，无法移除").build();
        REMOVE_ALIAS_FAIL_NO_ALIAS = f6411a.defineSdkError("remove_alias_fail_no_alias").msg("移除别名失败，本地没有别名记录").solution("请检查输入的别名是否正确").solution("低版本推送有概率出现，添加别名后，应用的数据被清除，导致sdk内部存储的别名信息丢失，无法移除").build();
        INVALID_ARG = CompilerOutline.m1752J(f6411a, "invalid_arg", "请求参数错误", "请检查输入参数");
        ACCS_CHECK_ERROR = f6411a.defineSdkError("accs_disabled").msg("accs检查不通过").solution("请检查初始化是否成功").solution("请检查配置是否正确").solution("请检查请求是否是在主进程").build();
        AGOO_NOT_BIND = CompilerOutline.m1752J(f6411a, "agoo_not_bind", "请先注册初始化agoo", "请检查初始化是否成功");
        REGISTER_DATA_ERROR = CompilerOutline.m1752J(f6411a, "register_data_error", "构造注册数据失败", "请检查配置参数是否正确，初始化是否成功");
        codes = new ErrorCode[]{SUCCESS, REMOVE_ALIAS_FAIL_NO_TOKEN, REMOVE_ALIAS_FAIL_NO_ALIAS, INVALID_ARG, ACCS_CHECK_ERROR, AGOO_NOT_BIND, m5798a(123, "accs 错误信息").solution("格式EAGOO_ACCS_123, 123为accs错误码，请结合accs错误码排查").build(), m5799a("XXX", "服务错误信息").solution("格式EAGOO_SERVER_XXX, XXX为agoo服务错误码，请联系阿里云技术支持排查").build()};
    }

    /* renamed from: a */
    public static ErrorBuilder m5798a(int i, String str) {
        return f6411a.defineError("ACCS", String.valueOf(i)).msg(str).solution("accs底层错误，需要根据错误码排查");
    }

    /* renamed from: a */
    public static ErrorBuilder m5799a(String str, String str2) {
        return f6411a.defineServerError(str).msg(str2).solution("agoo 服务报错，请联系技术支持排查");
    }
}
