package com.android.launcher3.p027db.model;

/* loaded from: classes.dex */
public class ManageDevice {
    public boolean command_bluetooth;
    public boolean command_camera;
    public boolean command_connect_usb;
    public boolean command_recording;
    public boolean command_wifi_switch;

    /* renamed from: id */
    public Long f1888id;

    public ManageDevice(Long l, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.f1888id = l;
        this.command_camera = z;
        this.command_bluetooth = z2;
        this.command_connect_usb = z3;
        this.command_recording = z4;
        this.command_wifi_switch = z5;
    }

    public boolean getCommand_bluetooth() {
        return this.command_bluetooth;
    }

    public boolean getCommand_camera() {
        return this.command_camera;
    }

    public boolean getCommand_connect_usb() {
        return this.command_connect_usb;
    }

    public boolean getCommand_recording() {
        return this.command_recording;
    }

    public boolean getCommand_wifi_switch() {
        return this.command_wifi_switch;
    }

    public Long getId() {
        return this.f1888id;
    }

    public boolean isCommand_bluetooth() {
        return this.command_bluetooth;
    }

    public boolean isCommand_camera() {
        return this.command_camera;
    }

    public boolean isCommand_connect_usb() {
        return this.command_connect_usb;
    }

    public boolean isCommand_recording() {
        return this.command_recording;
    }

    public boolean isCommand_wifi_switch() {
        return this.command_wifi_switch;
    }

    public void setCommand_bluetooth(boolean z) {
        this.command_bluetooth = z;
    }

    public void setCommand_camera(boolean z) {
        this.command_camera = z;
    }

    public void setCommand_connect_usb(boolean z) {
        this.command_connect_usb = z;
    }

    public void setCommand_recording(boolean z) {
        this.command_recording = z;
    }

    public void setCommand_wifi_switch(boolean z) {
        this.command_wifi_switch = z;
    }

    public void setId(Long l) {
        this.f1888id = l;
    }

    public ManageDevice() {
    }
}
