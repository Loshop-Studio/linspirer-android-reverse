.class public final synthetic Lcom/huawei/hem/g4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/huawei/hem/license/HemLicenseStatusListener;


# static fields
.field public static final synthetic a:Lcom/huawei/hem/g4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hem/g4;

    invoke-direct {v0}, Lcom/huawei/hem/g4;-><init>()V

    sput-object v0, Lcom/huawei/hem/g4;->a:Lcom/huawei/hem/g4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatus(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->l(ILjava/lang/String;)V

    return-void
.end method
