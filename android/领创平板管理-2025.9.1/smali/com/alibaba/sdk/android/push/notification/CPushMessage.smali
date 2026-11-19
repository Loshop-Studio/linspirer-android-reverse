.class public Lcom/alibaba/sdk/android/push/notification/CPushMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/sdk/android/push/notification/CPushMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appId:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public traceInfo:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->content:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static from(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)Lcom/alibaba/sdk/android/push/notification/CPushMessage;
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;-><init>()V

    .line 1
    iget-object v1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setAppId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setMessageId(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setTitle(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setContent(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setTraceInfo(Ljava/lang/String;)V

    return-object v0
.end method

.method public static to(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;
    .locals 2

    new-instance v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    invoke-direct {v0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 1
    iput-object v1, v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getTraceInfo()Ljava/lang/String;

    move-result-object p0

    .line 9
    iput-object p0, v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->appId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->title:Ljava/lang/String;

    return-void
.end method

.method public setTraceInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
