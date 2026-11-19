.class public Lcom/android/launcher3/model/AppInfoLimit;
.super Ljava/lang/Object;
.source "AppInfoLimit.java"


# instance fields
.field public packagename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackagename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/AppInfoLimit;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppInfoLimit;->packagename:Ljava/lang/String;

    return-void
.end method
