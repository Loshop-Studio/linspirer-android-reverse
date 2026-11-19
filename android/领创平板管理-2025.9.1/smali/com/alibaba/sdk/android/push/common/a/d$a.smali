.class public Lcom/alibaba/sdk/android/push/common/a/d$a;
.super Lcom/alibaba/sdk/android/error/CodeGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/common/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/error/CodeGenerator;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alibaba/sdk/android/push/common/a/d$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/common/a/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public generateCodeStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p2, "_"

    invoke-static {p1, p2, p3}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
