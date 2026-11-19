package com.android.launcher3.p027db.model;

/* loaded from: classes.dex */
public class GesturePassword {
    public Long _id;
    public String gesture_password;
    public String user_name;

    public GesturePassword(Long l, String str, String str2) {
        this._id = l;
        this.user_name = str;
        this.gesture_password = str2;
    }

    public String getGesture_password() {
        return this.gesture_password;
    }

    public Long getId() {
        return this._id;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public Long get_id() {
        return this._id;
    }

    public void setGesture_password(String str) {
        this.gesture_password = str;
    }

    public void setId(Long l) {
        this._id = l;
    }

    public void setUser_name(String str) {
        this.user_name = str;
    }

    public void set_id(Long l) {
        this._id = l;
    }

    public GesturePassword() {
    }
}
