.class public Lcom/android/launcher3/db/model/ManageDevice;
.super Ljava/lang/Object;
.source "ManageDevice.java"


# instance fields
.field public command_bluetooth:Z

.field public command_camera:Z

.field public command_connect_usb:Z

.field public command_recording:Z

.field public command_wifi_switch:Z

.field public id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/db/model/ManageDevice;->id:Ljava/lang/Long;

    .line 3
    iput-boolean p2, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_camera:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_bluetooth:Z

    .line 5
    iput-boolean p4, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_connect_usb:Z

    .line 6
    iput-boolean p5, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_recording:Z

    .line 7
    iput-boolean p6, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_wifi_switch:Z

    return-void
.end method


# virtual methods
.method public getCommand_bluetooth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_bluetooth:Z

    return v0
.end method

.method public getCommand_camera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_camera:Z

    return v0
.end method

.method public getCommand_connect_usb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_connect_usb:Z

    return v0
.end method

.method public getCommand_recording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_recording:Z

    return v0
.end method

.method public getCommand_wifi_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_wifi_switch:Z

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public isCommand_bluetooth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_bluetooth:Z

    return v0
.end method

.method public isCommand_camera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_camera:Z

    return v0
.end method

.method public isCommand_connect_usb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_connect_usb:Z

    return v0
.end method

.method public isCommand_recording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_recording:Z

    return v0
.end method

.method public isCommand_wifi_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_wifi_switch:Z

    return v0
.end method

.method public setCommand_bluetooth(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_bluetooth:Z

    return-void
.end method

.method public setCommand_camera(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_camera:Z

    return-void
.end method

.method public setCommand_connect_usb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_connect_usb:Z

    return-void
.end method

.method public setCommand_recording(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_recording:Z

    return-void
.end method

.method public setCommand_wifi_switch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ManageDevice;->command_wifi_switch:Z

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ManageDevice;->id:Ljava/lang/Long;

    return-void
.end method
