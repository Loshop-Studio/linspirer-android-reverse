.class public Lcom/android/launcher3/db/model/GesturePassword;
.super Ljava/lang/Object;
.source "GesturePassword.java"


# instance fields
.field public _id:Ljava/lang/Long;

.field public gesture_password:Ljava/lang/String;

.field public user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/db/model/GesturePassword;->_id:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/launcher3/db/model/GesturePassword;->user_name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/db/model/GesturePassword;->gesture_password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGesture_password()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/GesturePassword;->gesture_password:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/GesturePassword;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/GesturePassword;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/GesturePassword;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public setGesture_password(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/GesturePassword;->gesture_password:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/GesturePassword;->_id:Ljava/lang/Long;

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/GesturePassword;->user_name:Ljava/lang/String;

    return-void
.end method

.method public set_id(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/GesturePassword;->_id:Ljava/lang/Long;

    return-void
.end method
