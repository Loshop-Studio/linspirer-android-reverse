package com.android.launcher3.p027db.model;

import java.io.Serializable;

/* loaded from: classes.dex */
public class PushMsg implements Serializable {
    public static final long serialVersionUID = 5573832826736049153L;
    public String active;
    public String command;

    /* renamed from: id */
    public Long f1890id;
    public long sendtime;
    public int type;
    public String userId;

    public PushMsg(Long l, int i, String str, String str2, long j, String str3) {
        this.f1890id = l;
        this.type = i;
        this.command = str;
        this.active = str2;
        this.sendtime = j;
        this.userId = str3;
    }

    public String getActive() {
        return this.active;
    }

    public String getCommand() {
        return this.command;
    }

    public Long getId() {
        return this.f1890id;
    }

    public long getSendtime() {
        return this.sendtime;
    }

    public int getType() {
        return this.type;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setActive(String str) {
        this.active = str;
    }

    public void setCommand(String str) {
        this.command = str;
    }

    public void setId(Long l) {
        this.f1890id = l;
    }

    public void setSendtime(long j) {
        this.sendtime = j;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public PushMsg() {
    }
}
