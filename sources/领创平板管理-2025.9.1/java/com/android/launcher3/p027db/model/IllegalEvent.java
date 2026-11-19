package com.android.launcher3.p027db.model;

/* loaded from: classes.dex */
public class IllegalEvent {
    public String clienttime;
    public String description;
    public String email;
    public String event;

    /* renamed from: id */
    public Long f1882id;
    public int lock;
    public int notify;
    public int reset;

    public IllegalEvent(Long l, String str, String str2, int i, int i2, int i3, String str3, String str4) {
        this.f1882id = l;
        this.event = str;
        this.email = str2;
        this.notify = i;
        this.lock = i2;
        this.reset = i3;
        this.description = str3;
        this.clienttime = str4;
    }

    public String getClienttime() {
        return this.clienttime;
    }

    public String getDescription() {
        return this.description;
    }

    public String getEmail() {
        return this.email;
    }

    public String getEvent() {
        return this.event;
    }

    public Long getId() {
        return this.f1882id;
    }

    public int getLock() {
        return this.lock;
    }

    public int getNotify() {
        return this.notify;
    }

    public int getReset() {
        return this.reset;
    }

    public void setClienttime(String str) {
        this.clienttime = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public void setId(Long l) {
        this.f1882id = l;
    }

    public void setLock(int i) {
        this.lock = i;
    }

    public void setNotify(int i) {
        this.notify = i;
    }

    public void setReset(int i) {
        this.reset = i;
    }

    public IllegalEvent() {
    }
}
