package com.taobao.accs;

import android.util.Log;
import anet.channel.GlobalAppRuntimeInfo;
import com.alibaba.sdk.android.error.ErrorBuilder;
import com.alibaba.sdk.android.error.ErrorDefine;
import com.alibaba.sdk.android.error.IntCodeGenerator;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.utl.AccsLogConfiguration;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AccsErrorCode {
    public static final com.alibaba.sdk.android.error.ErrorCode APPKEY_NULL;
    public static final com.alibaba.sdk.android.error.ErrorCode APPSECRET_NULL;
    public static final com.alibaba.sdk.android.error.ErrorCode APP_NOT_BIND;
    public static final com.alibaba.sdk.android.error.ErrorCode DM_APPKEY_INVALID;
    public static final com.alibaba.sdk.android.error.ErrorCode DM_DEVICEID_INVALID;
    public static final com.alibaba.sdk.android.error.ErrorCode DM_PACKAGENAME_INVALID;
    public static final com.alibaba.sdk.android.error.ErrorCode DM_TAIR_ERROR;
    public static final com.alibaba.sdk.android.error.ErrorCode ERROR_SHOULD_NEVER_HAPPEN;
    public static final int HTTP_CODE_DM_APPKEY_INVALID = 303;
    public static final int HTTP_CODE_DM_DEVICEID_INVALID = 302;
    public static final int HTTP_CODE_DM_PACKAGENAME_INVALID = 304;
    public static final int HTTP_CODE_DM_TAIR_ERROR = 102;
    public static final int HTTP_CODE_SUCCESS = 200;
    public static final com.alibaba.sdk.android.error.ErrorCode INAPP_CON_DISCONNECTED;
    public static final com.alibaba.sdk.android.error.ErrorCode MESSAGE_HOST_NULL;
    public static final com.alibaba.sdk.android.error.ErrorCode MESSAGE_QUEUE_FULL;
    public static final com.alibaba.sdk.android.error.ErrorCode MESSAGE_TOO_LARGE;
    public static final com.alibaba.sdk.android.error.ErrorCode NETWORKSDK_SPDY_CLOSE_ERROR;
    public static final com.alibaba.sdk.android.error.ErrorCode NETWORKSDK_SPDY_RES_ERROR;
    public static final com.alibaba.sdk.android.error.ErrorCode NETWORK_INAPP_ARGS_INVALID;
    public static final com.alibaba.sdk.android.error.ErrorCode NETWORK_INAPP_CONNECT_FAIL;
    public static final com.alibaba.sdk.android.error.ErrorCode NETWORK_INAPP_EXCEPTION;
    public static final com.alibaba.sdk.android.error.ErrorCode NETWORK_INAPP_NO_STRATEGY;
    public static final com.alibaba.sdk.android.error.ErrorCode NETWORK_INAPP_TIMEOUT;
    public static final com.alibaba.sdk.android.error.ErrorCode NO_NETWORK;
    public static final com.alibaba.sdk.android.error.ErrorCode PARAMETER_ERROR;
    public static final com.alibaba.sdk.android.error.ErrorCode REQ_TIME_OUT;
    public static final com.alibaba.sdk.android.error.ErrorCode RESPONSE_PARSE_ERROR;
    public static final com.alibaba.sdk.android.error.ErrorCode SEND_LOCAL_EXCEPTION;
    public static final com.alibaba.sdk.android.error.ErrorCode SERVER_UNKNOWN_ERROR;
    public static final com.alibaba.sdk.android.error.ErrorCode SERVIER_HIGH_LIMIT;
    public static final com.alibaba.sdk.android.error.ErrorCode SERVIER_HIGH_LIMIT_BRUSH;
    public static final com.alibaba.sdk.android.error.ErrorCode SERVIER_LOW_LIMIT;
    public static final com.alibaba.sdk.android.error.ErrorCode SPDY_AUTH_EXCEPTION;
    public static final com.alibaba.sdk.android.error.ErrorCode SPDY_AUTH_PARAM_ERROR;
    public static final com.alibaba.sdk.android.error.ErrorCode SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA;
    public static final com.alibaba.sdk.android.error.ErrorCode SPDY_CON_DISCONNECTED;
    public static final com.alibaba.sdk.android.error.ErrorCode SPDY_PING_TIME_OUT;
    public static final com.alibaba.sdk.android.error.ErrorCode SUCCESS;
    public static final com.alibaba.sdk.android.error.ErrorCode[] codes;
    public static final ErrorDefine define;

    static {
        ErrorDefine errorDefine = new ErrorDefine("EACCS", new IntCodeGenerator());
        define = errorDefine;
        SUCCESS = errorDefine.defineSdkError("200").msg("成功").build();
        APP_NOT_BIND = CompilerOutline.m1752J(define, "300", "通道未建立", "请先初始化，bindApp，再调用其它api");
        SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA = CompilerOutline.m1752J(define, "-1", "静默连接中断，无法发送消息", "内部会重试，如果一直失败，需要排查下静默通道是否正常");
        PARAMETER_ERROR = CompilerOutline.m1752J(define, "-2", "参数错误,发送的msg为null", "请检查发起请求的参数是否正确");
        RESPONSE_PARSE_ERROR = CompilerOutline.m1752J(define, "-3", "服务返回数据异常", "请关注错误信息中的服务返回数据，并联系阿里云技术支持同学确认原因");
        MESSAGE_TOO_LARGE = CompilerOutline.m1752J(define, "-4", "单次发送数据过大", "请减少一次发送的数据量，封装之后总的数据量要小于16KB");
        MESSAGE_HOST_NULL = CompilerOutline.m1752J(define, "-5", "发送服务地址为null", "请检查下初始化配置是否正确");
        SPDY_AUTH_PARAM_ERROR = CompilerOutline.m1752J(define, "-6", "静默通道长连接认证参数错误", "请检查初始化参数配置是否正确");
        SPDY_AUTH_EXCEPTION = CompilerOutline.m1752J(define, "-7", "静默通道长连接认证异常", "请查看错误信息，确认具体异常信息");
        SEND_LOCAL_EXCEPTION = CompilerOutline.m1752J(define, "-8", "发送数据异常", "请查看错误信息，确认具体异常信息");
        REQ_TIME_OUT = CompilerOutline.m1752J(define, "-9", "发送消息超时", "需要结合具体是查看为什么超时");
        SPDY_CON_DISCONNECTED = CompilerOutline.m1752J(define, "-10", "静默通道长连接断连", "断连需要查看之前的日志");
        INAPP_CON_DISCONNECTED = CompilerOutline.m1752J(define, "-11", "应用内长连接断开", "一般为长连接建连失败造成，需要看日志分析");
        SPDY_PING_TIME_OUT = define.defineSdkError("-12").msg("静默通道长连接ping超时").build();
        NO_NETWORK = CompilerOutline.m1752J(define, "-13", "无网络", "请检查网络连接");
        APPKEY_NULL = CompilerOutline.m1752J(define, "-14", "appKey不存在", "请检查初始化配置是否正确");
        APPSECRET_NULL = CompilerOutline.m1752J(define, "-15", "appSecret不存在", "请检查初始化配置是否正确");
        MESSAGE_QUEUE_FULL = define.defineServerError("70008").msg("长连接发送队列已满").solution("请确认是否有高并发发送消息，如果有，请限制发送频次").build();
        SERVIER_LOW_LIMIT = define.defineServerError("70020").msg("低级别限流").solution("请和部署同学确认限流策略").build();
        SERVIER_HIGH_LIMIT = define.defineServerError("70021").msg("高级别限流,不发送").solution("请和部署同学确认限流策略").build();
        SERVIER_HIGH_LIMIT_BRUSH = define.defineServerError("70023").msg("防刷解封后触发的限流，不发送").solution("请和部署同学确认限流策略").build();
        DM_TAIR_ERROR = define.defineServerError("102").msg("设备无效").solution("如果是测试时发现的，请清除应用数据重新尝试").build();
        DM_DEVICEID_INVALID = define.defineServerError("302").msg("设备无效").solution("如果是测试时发现的，请清除应用数据重新尝试").build();
        DM_APPKEY_INVALID = define.defineServerError("303").msg("appkey配置错误").solution("请检查appKey配置是否正确").build();
        DM_PACKAGENAME_INVALID = define.defineServerError("304").msg("包名错误").solution("请检查appKey和应用包名是否匹配").build();
        SERVER_UNKNOWN_ERROR = define.defineServerError("-20").msg("服务返回错误").solution("请关注下错误信息中的服务返回的错误码，并联系阿里云技术支持同学确认原因").build();
        NETWORKSDK_SPDY_CLOSE_ERROR = CompilerOutline.m1752J(define, "-22", "底层sdk连接关闭", "请关注下错误信息中的底层sdk返回的错误信息，并联系阿里云技术支持同学确认原因");
        NETWORKSDK_SPDY_RES_ERROR = CompilerOutline.m1752J(define, "-23", "发送数据返回错误", "请关注下错误信息中的底层sdk返回的错误信息，并联系阿里云技术支持同学确认原因");
        ERROR_SHOULD_NEVER_HAPPEN = CompilerOutline.m1752J(define, "-25", "不应该发生的错误", "请关注下错误信息，检查初始化是否存在错误");
        NETWORK_INAPP_ARGS_INVALID = CompilerOutline.m1752J(define, "-26", "建连参数错误", "请检查初始化配置是否正确");
        NETWORK_INAPP_TIMEOUT = define.defineSdkError("-27").msg("建连超时").solution("请查看具体错误信息排查").solution("请检查网络是否正常").build();
        NETWORK_INAPP_CONNECT_FAIL = define.defineSdkError("-28").msg("建连失败").solution("请查看具体错误信息排查").solution("请检查网络是否正常").build();
        NETWORK_INAPP_NO_STRATEGY = define.defineSdkError("-29").msg("连接地址不存在").solution("当前网络下无法解析长链接地址").solution("请检查网络是否正常").build();
        com.alibaba.sdk.android.error.ErrorCode errorCodeM1752J = CompilerOutline.m1752J(define, "-30", "建连异常", "请查看具体错误信息排查");
        NETWORK_INAPP_EXCEPTION = errorCodeM1752J;
        codes = new com.alibaba.sdk.android.error.ErrorCode[]{SUCCESS, APP_NOT_BIND, SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA, PARAMETER_ERROR, RESPONSE_PARSE_ERROR, MESSAGE_TOO_LARGE, MESSAGE_HOST_NULL, SPDY_AUTH_PARAM_ERROR, SPDY_AUTH_EXCEPTION, SEND_LOCAL_EXCEPTION, REQ_TIME_OUT, SPDY_CON_DISCONNECTED, INAPP_CON_DISCONNECTED, SPDY_PING_TIME_OUT, NO_NETWORK, APPKEY_NULL, APPSECRET_NULL, MESSAGE_QUEUE_FULL, SERVIER_LOW_LIMIT, SERVIER_HIGH_LIMIT, SERVIER_HIGH_LIMIT_BRUSH, DM_TAIR_ERROR, DM_DEVICEID_INVALID, DM_APPKEY_INVALID, DM_PACKAGENAME_INVALID, SERVER_UNKNOWN_ERROR, NETWORKSDK_SPDY_CLOSE_ERROR, NETWORKSDK_SPDY_RES_ERROR, ERROR_SHOULD_NEVER_HAPPEN, NETWORK_INAPP_ARGS_INVALID, NETWORK_INAPP_TIMEOUT, NETWORK_INAPP_CONNECT_FAIL, NETWORK_INAPP_NO_STRATEGY, errorCodeM1752J, convertNetworkSdkError(0, "底层网络库信息").solution("小于-10000时，加上10000是底层网络库对应的错误码，请接口底层网络库错误码信息排查").build()};
    }

    public static StringBuilder addThrowableInfo(StringBuilder sb, Throwable th) {
        while (true) {
            sb.append(th.getMessage());
            sb.append('\t');
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                sb.append(stackTrace[0].getClassName());
                sb.append(".");
                sb.append(stackTrace[0].getMethodName());
                sb.append('\t');
                for (int i = 1; i < stackTrace.length; i++) {
                    if (stackTrace[i].getClassName().startsWith("com.taobao") || stackTrace[i].getClassName().startsWith("com.aliyun") || stackTrace[i].getClassName().startsWith("org.android.agoo") || stackTrace[i].getClassName().startsWith("org.alibaba")) {
                        sb.append(stackTrace[i].getClassName());
                        sb.append(".");
                        sb.append(stackTrace[i].getMethodName());
                        sb.append("(");
                        sb.append(stackTrace[i].getFileName());
                        sb.append(":");
                        sb.append(stackTrace[i].getLineNumber());
                        sb.append(")");
                        sb.append('\t');
                        break;
                    }
                }
            }
            th = th.getCause();
            if (th == null) {
                return sb;
            }
            sb.append("caused by ");
            sb.append('\t');
        }
    }

    public static ErrorBuilder convertNetworkSdkError(int i, String str) {
        return define.defineSdkError(String.valueOf(i - 10000)).msg(str);
    }

    public static String getAllDetails(String str) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("[");
        sbM1765j.append(AccsState.getInstance().getState());
        sbM1765j.append("][");
        sbM1765j.append(AccsLogConfiguration.m5789a().m5793b());
        sbM1765j.append("][");
        sbM1765j.append(GlobalAppRuntimeInfo.isAppBackground());
        sbM1765j.append("]");
        sbM1765j.append(str);
        return sbM1765j.toString();
    }

    public static String getExceptionInfo(Throwable th) {
        return th == null ? "throwable null" : addThrowableInfo(new StringBuilder(), th).toString();
    }

    public static boolean isChannelError(int i) {
        return i == SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA.getCodeInt() || i == SPDY_AUTH_PARAM_ERROR.getCodeInt() || i == SPDY_AUTH_EXCEPTION.getCodeInt() || i == REQ_TIME_OUT.getCodeInt() || i == SPDY_CON_DISCONNECTED.getCodeInt() || i == INAPP_CON_DISCONNECTED.getCodeInt() || i == SPDY_PING_TIME_OUT.getCodeInt() || i == NETWORKSDK_SPDY_CLOSE_ERROR.getCodeInt() || i == NETWORK_INAPP_ARGS_INVALID.getCodeInt() || i == NETWORK_INAPP_TIMEOUT.getCodeInt() || i == NETWORK_INAPP_CONNECT_FAIL.getCodeInt() || i == NETWORK_INAPP_NO_STRATEGY.getCodeInt() || i == NETWORK_INAPP_EXCEPTION.getCodeInt();
    }

    public static com.alibaba.sdk.android.error.ErrorCode parseHttpCode(int i) {
        if (i == 102) {
            return DM_TAIR_ERROR;
        }
        if (i == 200) {
            return SUCCESS;
        }
        switch (i) {
            case 302:
                return DM_DEVICEID_INVALID;
            case 303:
                return DM_APPKEY_INVALID;
            case 304:
                return DM_PACKAGENAME_INVALID;
            default:
                return SERVER_UNKNOWN_ERROR.copy().detail("code:" + i).build();
        }
    }

    public static void printErrorCode() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sbM1765j = CompilerOutline.m1765j("ACCS错误码，一共");
        sbM1765j.append(codes.length);
        sbM1765j.append("个");
        sb.append(sbM1765j.toString());
        sb.append('\n');
        sb.append(com.alibaba.sdk.android.error.ErrorCode.docTitle());
        sb.append(com.alibaba.sdk.android.error.ErrorCode.docContent(codes));
        Log.w("ACCS_ERROR_CODE", sb.toString());
    }
}
