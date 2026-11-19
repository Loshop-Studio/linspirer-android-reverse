.class public final synthetic Lcom/huawei/hem/c5;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/huawei/hem/c5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hem/c5;

    invoke-direct {v0}, Lcom/huawei/hem/c5;-><init>()V

    sput-object v0, Lcom/huawei/hem/c5;->a:Lcom/huawei/hem/c5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/network/ControlHelper;->b()V

    return-void
.end method
