.class public Lcom/alibaba/sdk/android/push/common/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/common/a/d$a;
    }
.end annotation


# static fields
.field public static final A:Lcom/alibaba/sdk/android/error/ErrorDefine;

.field public static final a:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final b:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final c:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final d:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final e:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final f:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final g:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final h:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final i:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final j:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final k:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final l:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final m:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final n:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final o:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final p:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final q:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final r:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final s:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final t:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final u:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final v:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final w:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final x:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final y:Lcom/alibaba/sdk/android/error/ErrorCode;

.field public static final z:[Lcom/alibaba/sdk/android/error/ErrorCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/alibaba/sdk/android/error/ErrorDefine;

    new-instance v1, Lcom/alibaba/sdk/android/push/common/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/push/common/a/d$a;-><init>(Lcom/alibaba/sdk/android/push/common/a/d$1;)V

    const-string v2, "PUSH"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/error/CodeGenerator;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->a:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "10101"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u53c2\u6570\u7f3a\u5931"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5\u8bf7\u6c42\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->b:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "10102"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u53c2\u6570\u65e0\u6548"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->c:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "10103"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u7aef\u7b7e\u540d\u4e0e\u5ba2\u6237\u7aef\u4e0d\u5339\u914d"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5\u63a8\u9001\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->d:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "10104"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "Tag\u76f8\u5173\u9519\u8bef"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u6839\u636e\u5177\u4f53\u9519\u8bef\u4fe1\u606f\u6392\u67e5\uff0c\u5982\u679c\u4e0d\u80fd\u89e3\u51b3\uff0c\u8bf7\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->e:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "10105"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "Alias\u76f8\u5173\u9519\u8bef"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->f:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "10106"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u670d\u52a1\u7aef\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u8bf7\u6839\u636e\u5177\u4f53\u9519\u8bef\u4fe1\u606f\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->g:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v3, "10107"

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineAndroidError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v3, "\u7f51\u7edcIO\u9519\u8bef"

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v3, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u53ef\u7528"

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->h:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v4, "10108"

    const-string v5, "\u8fd4\u56de\u7ed3\u679c\u89e3\u6790\u9519\u8bef"

    const-string v6, "\u8bf7\u4fdd\u7559\u5177\u4f53\u9519\u8bef\u4fe1\u606f\uff0c\u8054\u7cfb\u963f\u91cc\u4e91\u6280\u672f\u652f\u6301\u6392\u67e5"

    invoke-static {v0, v4, v5, v6}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->i:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v4, "10109"

    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25,\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"

    invoke-static {v0, v4, v5, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->j:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v4, "10114"

    const-string v5, "\u5185\u90e8\u9519\u8bef"

    invoke-static {v0, v4, v5, v6}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->k:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v4, "10115"

    const-string v5, "\u901a\u9053\u6ce8\u518c\u72b6\u6001\u5f02\u5e38"

    invoke-static {v0, v4, v5, v6}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->l:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v4, "10118"

    invoke-virtual {v0, v4}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineServerError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v4, "\u5176\u5b83\u63a5\u53e3\u9519\u8bef"

    invoke-virtual {v0, v4}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->m:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "10119"

    const-string v4, "\u975e\u4e3b\u8fdb\u7a0b\u4e0d\u7528\u521d\u59cb\u5316"

    const-string v5, "\u5728\u975e\u4e3b\u8fdb\u7a0b\u6267\u884c\u521d\u59cb\u5316\u65f6\u89e6\u53d1\uff0c\u53ef\u4ee5\u5ffd\u7565"

    invoke-static {v0, v2, v4, v5}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->n:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "10120"

    const-string v4, "\u63a8\u9001\u6ce8\u518c\u8d85\u65f6"

    invoke-static {v0, v2, v4, v6}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->o:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v2, "10121"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineAndroidError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u53ef\u7528"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->p:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20101"

    const-string v2, "\u53c2\u6570\u8f93\u5165\u975e\u6cd5"

    const-string v3, "\u8bf7\u68c0\u67e5\u8bf7\u6c42\u7684\u8f93\u5165\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->q:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20102"

    const-string v2, "\u9759\u9ed8\u8fde\u63a5\u8fdb\u7a0b\u540d\u8bbe\u7f6e\u9519\u8bef,\u8fdb\u7a0b\u540d\u4e0d\u80fd\u4e3a\u7a7a\u4e14\u5fc5\u987b\u4e0emanifest\u6587\u4ef6\u914d\u7f6e\u76f8\u7b26\u3002\u7cfb\u7edf\u81ea\u52a8\u8bbe\u7f6e\u4e3amanifest\u6240\u914d\u7f6e\u8fdb\u7a0b\u540d"

    const-string v3, "\u5f00\u542fdebug\u4f1a\u68c0\u67e5\u6b64\u9519\u8bef\uff0c\u76ee\u524d\u8fdb\u7a0b\u540d\u4e0d\u652f\u6301\u4fee\u6539\uff0c\u8bf7\u4e0d\u8981\u4fee\u6539\u7ec4\u4ef6\u8fdb\u7a0b\u914d\u7f6e"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->r:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20103"

    const-string v2, "appversion\u53c2\u6570\u9519\u8bef,\u8bf7\u68c0\u67e5\u60a8\u7684\u7248\u672c\u53f7,\u7248\u672c\u53f7\u4e0d\u80fd\u4e3anull\u6216\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc732\u4f4d"

    const-string v3, "\u5f00\u542fdebug\u4f1a\u68c0\u67e5\u6b64\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u5e94\u7528\u7248\u672c\u53f7\u662f\u5426\u8fc7\u957f"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->s:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20105"

    const-string v2, "ChannelService\u672a\u8bbe\u7f6e\u8f85\u52a9\u8fdb\u7a0b"

    const-string v3, "\u5f00\u542fdebug\u4f1a\u68c0\u67e5\u6b64\u9519\u8bef\uff0c\u5982\u679c\u4e0d\u662f\u7279\u6b8a\u573a\u666f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u4fee\u6539\u4e86\u63a8\u9001\u7ec4\u4ef6\u7684\u8fdb\u7a0b\u914d\u7f6e"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->t:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20106"

    const-string v2, "\u6838\u5fc3\u7ec4\u4ef6\u672a\u914d\u7f6e"

    const-string v3, "\u5f00\u542fdebug\u4f1a\u68c0\u67e5\u6b64\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5220\u9664\u4e86\u63a8\u9001\u7ec4\u4ef6\u7684\u58f0\u660e"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->u:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20107"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u8fde\u7eedcrash\uff0c\u63a8\u9001\u670d\u52a1\u5173\u95ed"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u521d\u59cb\u5316\u63a8\u9001\u540e\u5d29\u6e83\uff0c\u4f1a\u5728\u4e0b\u6b21\u542f\u52a8\u5173\u95ed\u63a8\u9001\u670d\u52a1\u3002\u8bf7\u68c0\u67e5\u5e94\u7528\u7684\u5d29\u6e83\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5f00\u53d1\u6d4b\u8bd5\u573a\u666f\u4e0b\uff0c\u4eba\u4e3a\u89e6\u53d1\u7684\uff0c\u8bf7\u6e05\u9664\u5e94\u7528\u6570\u636e\u6062\u590d"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u7ebf\u4e0a\u573a\u666f\u4f1a\u5c1d\u8bd5\u81ea\u52a8\u6062\u590d\uff0c\u5982\u679c\u4ecd\u7136\u5d29\u6e83\uff0c\u9700\u8981\u5347\u7ea7\u5e94\u7528\u7248\u672c\u624d\u4f1a\u6062\u590d"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->v:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20108"

    const-string v2, "\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5148\u8c03\u7528 PushServiceFactory\u7684init\u65b9\u6cd5"

    const-string v3, "\u8bf7\u786e\u8ba4\u662f\u5426\u6b63\u5e38\u521d\u59cb\u5316"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->w:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20109"

    const-string v2, "\u5e9f\u5f03\u63a5\u53e3"

    const-string v3, "\u8bf7\u67e5\u770b\u6587\u6863\uff0c\u4f7f\u7528\u5408\u9002\u7684api"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->J(Lcom/alibaba/sdk/android/error/ErrorDefine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->x:Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    const-string v1, "20110"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5df2\u7ecf\u8c03\u7528\u6ce8\u518c\uff0c\u91cd\u590d\u8c03\u7528\u65e0\u6548"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "register\u65b9\u6cd5\u5982\u679c\u5931\u8d25\u4e86\uff0c\u4f1a\u81ea\u52a8\u91cd\u8bd5\uff0c\u4e00\u822c\u60c5\u51b5\u4e0b\u4e0d\u9700\u8981\u91cd\u590d\u8c03\u7528"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u5982\u679c\u5e0c\u671b\u5185\u90e8\u91cd\u8bd5\u5931\u8d25\u7684\u60c5\u51b5\uff0c\u7531\u5916\u90e8\u91cd\u65b0\u8c03\u7528register\uff0c\u8bf7\u81f3\u5c11\u5728\u4e0a\u4e00\u6b21register\u5931\u8d25\u56de\u8c03\u4e24\u6b21\uff08\u786e\u8ba4\u5185\u90e8\u91cd\u8bd5\u8fd8\u662f\u5931\u8d25\uff09\u7684\u60c5\u51b5\u4e0b\uff0c\u5148\u8c03\u7528PushControlService\u7684reset\u65b9\u6cd5\uff0c\u7136\u540e\u518d\u8c03\u7528\u4e0b\u4e00\u6b21register\u65b9\u6cd5"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->y:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v1, 0x1b

    new-array v1, v1, [Lcom/alibaba/sdk/android/error/ErrorCode;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->a:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->b:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->c:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->d:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->e:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->f:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->g:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->h:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->i:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->j:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->k:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->l:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->m:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->n:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->o:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->p:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->q:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->r:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->s:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->t:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->u:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->v:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->w:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->x:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const/16 v0, 0x7b

    const-string v2, "accs\u9519\u8bef\u4fe1\u606f"

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/push/common/a/d;->a(ILjava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u683c\u5f0fACCS_123, 123\u4e3aaccs\u9519\u8bef\u7801\uff0c\u8bf7\u7ed3\u5408accs\u9519\u8bef\u7801\u6392\u67e5"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "xxx"

    const-string v2, "agoo\u9519\u8bef\u4fe1\u606f"

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/push/common/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v2, "\u683c\u5f0fAGOO_xxx, xxx\u4e3aagoo\u9519\u8bef\u7801\uff0c\u8bf7\u7ed3\u5408agoo\u9519\u8bef\u7801\u6392\u67e5"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->solution(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    sput-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->z:[Lcom/alibaba/sdk/android/error/ErrorCode;

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACCS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->A:Lcom/alibaba/sdk/android/error/ErrorDefine;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/error/ErrorDefine;->defineSdkError(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorCode;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "InvalidParam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "AliasError"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "OK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "SignNotMatch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "TagError"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "MissingParam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "InternalError"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->m:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/alibaba/sdk/android/push/common/a/d;->g:Lcom/alibaba/sdk/android/error/ErrorCode;

    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p0

    goto :goto_2

    :pswitch_1
    sget-object p0, Lcom/alibaba/sdk/android/push/common/a/d;->f:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_3

    :pswitch_2
    sget-object p0, Lcom/alibaba/sdk/android/push/common/a/d;->e:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_3

    :pswitch_3
    sget-object p0, Lcom/alibaba/sdk/android/push/common/a/d;->d:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_3

    :pswitch_4
    sget-object p0, Lcom/alibaba/sdk/android/push/common/a/d;->c:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_3

    :pswitch_5
    sget-object p0, Lcom/alibaba/sdk/android/push/common/a/d;->b:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_3

    :pswitch_6
    sget-object p0, Lcom/alibaba/sdk/android/push/common/a/d;->a:Lcom/alibaba/sdk/android/error/ErrorCode;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x64ef06d5 -> :sswitch_6
        -0x3b671519 -> :sswitch_5
        -0x2b1bc952 -> :sswitch_4
        -0xfd96c51 -> :sswitch_3
        0x9dc -> :sswitch_2
        0x25b99b8 -> :sswitch_1
        0x285c2cf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
