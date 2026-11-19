.class public Lcom/android/launcher3/db/model/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# instance fields
.field public address:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public location_time:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->id:Ljava/lang/Long;

    .line 4
    iput-object p2, p0, Lcom/android/launcher3/db/model/LocationInfo;->email:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/launcher3/db/model/LocationInfo;->username:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/android/launcher3/db/model/LocationInfo;->lat:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/android/launcher3/db/model/LocationInfo;->lng:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/android/launcher3/db/model/LocationInfo;->address:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/android/launcher3/db/model/LocationInfo;->location_time:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->lat:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/android/launcher3/db/model/LocationInfo;->lng:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/android/launcher3/db/model/LocationInfo;->address:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/android/launcher3/db/model/LocationInfo;->location_time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/LocationInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/LocationInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/LocationInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/LocationInfo;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/LocationInfo;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/LocationInfo;->location_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/LocationInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->lng:Ljava/lang/String;

    return-void
.end method

.method public setLocation_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->location_time:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/LocationInfo;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "LocationInfo{email=\'"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/db/model/LocationInfo;->email:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", username=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/LocationInfo;->username:Ljava/lang/String;

    const-string v3, ", lat=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/LocationInfo;->lat:Ljava/lang/String;

    const-string v3, ", lng=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/LocationInfo;->lng:Ljava/lang/String;

    const-string v3, ", address=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/LocationInfo;->address:Ljava/lang/String;

    const-string v3, ", location_time=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/LocationInfo;->location_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
