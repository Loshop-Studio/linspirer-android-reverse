.class public final Lcom/huawei/hem/x0;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/aliyun/ams/emas/push/notification/CPushMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;-><init>(Landroid/os/Parcel;Lcom/huawei/hem/x0;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    return-object p1
.end method
