.class public Lcom/taobao/accs/AccsErrorCode;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final APPKEY_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final APPSECRET_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final DM_APPKEY_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final DM_DEVICEID_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final DM_PACKAGENAME_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final DM_TAIR_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final ERROR_SHOULD_NEVER_HAPPEN:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final HTTP_CODE_DM_APPKEY_INVALID:I = 0x12f

.field public static final HTTP_CODE_DM_DEVICEID_INVALID:I = 0x12e

.field public static final HTTP_CODE_DM_PACKAGENAME_INVALID:I = 0x130

.field public static final HTTP_CODE_DM_TAIR_ERROR:I = 0x66

.field public static final HTTP_CODE_SUCCESS:I = 0xc8

.field public static final INAPP_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final MESSAGE_HOST_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final MESSAGE_TOO_LARGE:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORKSDK_SPDY_RES_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_ARGS_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final PARAMETER_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final RESPONSE_PARSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SEND_LOCAL_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVER_UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SERVIER_LOW_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SPDY_AUTH_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SPDY_AUTH_PARAM_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SPDY_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SPDY_PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final codes:[Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final define:Lcom/alibaba/sdk/android/error/ErrorDefine;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/alibaba/sdk/android/error/ErrorDefine;

    new-instance v1, Lcom/alibaba/sdk/android/error/IntCodeGenerator;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/error/IntCodeGenerator;-><init>()V

    const-string v2, "EACCS"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/error/CodeGenerator;)V

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "200"

    .line 2
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u6210\u529f"

    .line 3
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 5
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "300"

    const-string v2, "\u901a\u9053\u672a\u5efa\u7acb"

    const-string v3, "\u8bf7\u5148\u521d\u59cb\u5316\uff0cbindApp\uff0c\u518d\u8c03\u7528\u5176\u5b83api"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 7
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-1"

    const-string v2, "\u9759\u9ed8\u8fde\u63a5\u4e2d\u65ad\uff0c\u65e0\u6cd5\u53d1\u9001\u6d88\u606f"

    const-string v3, "\u5185\u90e8\u4f1a\u91cd\u8bd5\uff0c\u5982\u679c\u4e00\u76f4\u5931\u8d25\uff0c\u9700\u8981\u6392\u67e5\u4e0b\u9759\u9ed8\u901a\u9053\u662f\u5426\u6b63\u5e38"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 9
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-2"

    const-string v2, "\u53c2\u6570\u9519\u8bef,\u53d1\u9001\u7684msg\u4e3anull"

    const-string v3, "\u8bf7\u68c0\u67e5\u53d1\u8d77\u8bf7\u6c42\u7684\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->PARAMETER_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 11
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-3"

    const-string v2, "\u670d\u52a1\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    const-string v3, "\u8bf7\u5173\u6ce8\u9519\u8bef\u4fe1\u606f\u4e2d\u7684\u670d\u52a1\u8fd4\u56de\u6570\u636e\uff0c\u5e76\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301\u540c\u5b66\u786e\u8ba4\u539f\u56e0"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->RESPONSE_PARSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 13
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-4"

    const-string v2, "\u5355\u6b21\u53d1\u9001\u6570\u636e\u8fc7\u5927"

    const-string v3, "\u8bf7\u51cf\u5c11\u4e00\u6b21\u53d1\u9001\u7684\u6570\u636e\u91cf\uff0c\u5c01\u88c5\u4e4b\u540e\u603b\u7684\u6570\u636e\u91cf\u8981\u5c0f\u4e8e16KB"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->MESSAGE_TOO_LARGE:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 15
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-5"

    const-string v2, "\u53d1\u9001\u670d\u52a1\u5730\u5740\u4e3anull"

    const-string v3, "\u8bf7\u68c0\u67e5\u4e0b\u521d\u59cb\u5316\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 16
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->MESSAGE_HOST_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 17
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-6"

    const-string v2, "\u9759\u9ed8\u901a\u9053\u957f\u8fde\u63a5\u8ba4\u8bc1\u53c2\u6570\u9519\u8bef"

    const-string v3, "\u8bf7\u68c0\u67e5\u521d\u59cb\u5316\u53c2\u6570\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_AUTH_PARAM_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 19
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-7"

    const-string v2, "\u9759\u9ed8\u901a\u9053\u957f\u8fde\u63a5\u8ba4\u8bc1\u5f02\u5e38"

    const-string v3, "\u8bf7\u67e5\u770b\u9519\u8bef\u4fe1\u606f\uff0c\u786e\u8ba4\u5177\u4f53\u5f02\u5e38\u4fe1\u606f"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_AUTH_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 21
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-8"

    const-string v2, "\u53d1\u9001\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SEND_LOCAL_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 23
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-9"

    const-string v2, "\u53d1\u9001\u6d88\u606f\u8d85\u65f6"

    const-string v3, "\u9700\u8981\u7ed3\u5408\u5177\u4f53\u662f\u67e5\u770b\u4e3a\u4ec0\u4e48\u8d85\u65f6"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 25
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-10"

    const-string v2, "\u9759\u9ed8\u901a\u9053\u957f\u8fde\u63a5\u65ad\u8fde"

    const-string v3, "\u65ad\u8fde\u9700\u8981\u67e5\u770b\u4e4b\u524d\u7684\u65e5\u5fd7"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 27
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-11"

    const-string v2, "\u5e94\u7528\u5185\u957f\u8fde\u63a5\u65ad\u5f00"

    const-string v3, "\u4e00\u822c\u4e3a\u957f\u8fde\u63a5\u5efa\u8fde\u5931\u8d25\u9020\u6210\uff0c\u9700\u8981\u770b\u65e5\u5fd7\u5206\u6790"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->INAPP_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 29
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-12"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u9759\u9ed8\u901a\u9053\u957f\u8fde\u63a5ping\u8d85\u65f6"

    .line 30
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 32
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-13"

    const-string v2, "\u65e0\u7f51\u7edc"

    const-string v3, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 33
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 34
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-14"

    const-string v2, "appKey\u4e0d\u5b58\u5728"

    const-string v3, "\u8bf7\u68c0\u67e5\u521d\u59cb\u5316\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->APPKEY_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 36
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-15"

    const-string v2, "appSecret\u4e0d\u5b58\u5728"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->APPSECRET_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 38
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "70008"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u957f\u8fde\u63a5\u53d1\u9001\u961f\u5217\u5df2\u6ee1"

    .line 39
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u786e\u8ba4\u662f\u5426\u6709\u9ad8\u5e76\u53d1\u53d1\u9001\u6d88\u606f\uff0c\u5982\u679c\u6709\uff0c\u8bf7\u9650\u5236\u53d1\u9001\u9891\u6b21"

    .line 40
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 42
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "70020"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u4f4e\u7ea7\u522b\u9650\u6d41"

    .line 43
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u548c\u90e8\u7f72\u540c\u5b66\u786e\u8ba4\u9650\u6d41\u7b56\u7565"

    .line 44
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SERVIER_LOW_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 46
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "70021"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u9ad8\u7ea7\u522b\u9650\u6d41,\u4e0d\u53d1\u9001"

    .line 47
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 50
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "70023"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u9632\u5237\u89e3\u5c01\u540e\u89e6\u53d1\u7684\u9650\u6d41\uff0c\u4e0d\u53d1\u9001"

    .line 51
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 54
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "102"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bbe\u5907\u65e0\u6548"

    .line 55
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u5982\u679c\u662f\u6d4b\u8bd5\u65f6\u53d1\u73b0\u7684\uff0c\u8bf7\u6e05\u9664\u5e94\u7528\u6570\u636e\u91cd\u65b0\u5c1d\u8bd5"

    .line 56
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->DM_TAIR_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 58
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v4, "302"

    invoke-virtual {v0, v4}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->DM_DEVICEID_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 62
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "303"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "appkey\u914d\u7f6e\u9519\u8bef"

    .line 63
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5appKey\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    .line 64
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->DM_APPKEY_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 66
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "304"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5305\u540d\u9519\u8bef"

    .line 67
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5appKey\u548c\u5e94\u7528\u5305\u540d\u662f\u5426\u5339\u914d"

    .line 68
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->DM_PACKAGENAME_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 70
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-20"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u8fd4\u56de\u9519\u8bef"

    .line 71
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u5173\u6ce8\u4e0b\u9519\u8bef\u4fe1\u606f\u4e2d\u7684\u670d\u52a1\u8fd4\u56de\u7684\u9519\u8bef\u7801\uff0c\u5e76\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301\u540c\u5b66\u786e\u8ba4\u539f\u56e0"

    .line 72
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->SERVER_UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 74
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-22"

    const-string v2, "\u5e95\u5c42sdk\u8fde\u63a5\u5173\u95ed"

    const-string v4, "\u8bf7\u5173\u6ce8\u4e0b\u9519\u8bef\u4fe1\u606f\u4e2d\u7684\u5e95\u5c42sdk\u8fd4\u56de\u7684\u9519\u8bef\u4fe1\u606f\uff0c\u5e76\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301\u540c\u5b66\u786e\u8ba4\u539f\u56e0"

    invoke-static {v0, v1, v2, v4}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 75
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 76
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-23"

    const-string v2, "\u53d1\u9001\u6570\u636e\u8fd4\u56de\u9519\u8bef"

    invoke-static {v0, v1, v2, v4}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 77
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORKSDK_SPDY_RES_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 78
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-25"

    const-string v2, "\u4e0d\u5e94\u8be5\u53d1\u751f\u7684\u9519\u8bef"

    const-string v4, "\u8bf7\u5173\u6ce8\u4e0b\u9519\u8bef\u4fe1\u606f\uff0c\u68c0\u67e5\u521d\u59cb\u5316\u662f\u5426\u5b58\u5728\u9519\u8bef"

    invoke-static {v0, v1, v2, v4}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->ERROR_SHOULD_NEVER_HAPPEN:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 80
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-26"

    const-string v2, "\u5efa\u8fde\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 81
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_ARGS_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 82
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "-27"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5efa\u8fde\u8d85\u65f6"

    .line 83
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u67e5\u770b\u5177\u4f53\u9519\u8bef\u4fe1\u606f\u6392\u67e5"

    .line 84
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6b63\u5e38"

    .line 85
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 87
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v3, "-28"

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v3, "\u5efa\u8fde\u5931\u8d25"

    .line 88
    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 92
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v3, "-29"

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v3, "\u8fde\u63a5\u5730\u5740\u4e0d\u5b58\u5728"

    .line 93
    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v3, "\u5f53\u524d\u7f51\u7edc\u4e0b\u65e0\u6cd5\u89e3\u6790\u957f\u94fe\u63a5\u5730\u5740"

    .line 94
    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 97
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "-30"

    const-string v3, "\u5efa\u8fde\u5f02\u5e38"

    invoke-static {v0, v2, v3, v1}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 98
    sput-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v1, 0x23

    new-array v1, v1, [Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 99
    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->PARAMETER_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->RESPONSE_PARSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->MESSAGE_TOO_LARGE:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->MESSAGE_HOST_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SPDY_AUTH_PARAM_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SPDY_AUTH_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SEND_LOCAL_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SPDY_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->INAPP_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SPDY_PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->APPKEY_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->APPSECRET_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SERVIER_LOW_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->DM_TAIR_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->DM_DEVICEID_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->DM_APPKEY_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->DM_PACKAGENAME_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SERVER_UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->NETWORKSDK_SPDY_RES_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->ERROR_SHOULD_NEVER_HAPPEN:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_ARGS_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v0, "\u5e95\u5c42\u7f51\u7edc\u5e93\u4fe1\u606f"

    .line 100
    invoke-static {v3, v0}, Lcom/taobao/accs/AccsErrorCode;->convertNetworkSdkError(ILjava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u5c0f\u4e8e-10000\u65f6\uff0c\u52a0\u4e0a10000\u662f\u5e95\u5c42\u7f51\u7edc\u5e93\u5bf9\u5e94\u7684\u9519\u8bef\u7801\uff0c\u8bf7\u63a5\u53e3\u5e95\u5c42\u7f51\u7edc\u5e93\u9519\u8bef\u7801\u4fe1\u606f\u6392\u67e5"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    sput-object v1, Lcom/taobao/accs/AccsErrorCode;->codes:[Lcom/alibaba/sdk/android/error/ErrorCode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addThrowableInfo(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    array-length v2, v1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 5
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 6
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.taobao"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v1, v2

    .line 7
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.aliyun"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v1, v2

    .line 8
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.android.agoo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v1, v2

    .line 9
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.alibaba"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_1
    :goto_2
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    .line 11
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "caused by "

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    return-object p0
.end method

.method public static convertNetworkSdkError(ILjava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->define:Lcom/alibaba/sdk/android/error/ErrorDefine;

    add-int/lit16 p0, p0, -0x2710

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static getAllDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "["

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/AccsState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/accs/utl/i;->a()Lcom/taobao/accs/utl/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/utl/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "throwable null"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/taobao/accs/AccsErrorCode;->addThrowableInfo(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isChannelError(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_AUTH_PARAM_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_AUTH_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 3
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 4
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->INAPP_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 6
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->SPDY_PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 7
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 8
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_ARGS_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 9
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 10
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 11
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 12
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 13
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parseHttpCode(I)Lcom/alibaba/sdk/android/error/ErrorCode;
    .locals 3

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->SERVER_UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/taobao/accs/AccsErrorCode;->DM_PACKAGENAME_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/taobao/accs/AccsErrorCode;->DM_APPKEY_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/taobao/accs/AccsErrorCode;->DM_DEVICEID_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/taobao/accs/AccsErrorCode;->DM_TAIR_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printErrorCode()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACCS\u9519\u8bef\u7801\uff0c\u4e00\u5171"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->codes:[Lcom/alibaba/sdk/android/error/ErrorCode;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/alibaba/sdk/android/error/ErrorCode;->docTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->codes:[Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-static {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->docContent([Lcom/alibaba/sdk/android/error/ErrorCode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACCS_ERROR_CODE"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
