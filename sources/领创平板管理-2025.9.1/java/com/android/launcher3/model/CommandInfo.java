package com.android.launcher3.model;

/* loaded from: classes.dex */
public class CommandInfo {
    public int active;
    public String command;
    public long sendtime;
    public int type;

    public int getActive() {
        return this.active;
    }

    public String getCommand() {
        return this.command;
    }

    public long getSendtime() {
        return this.sendtime;
    }

    public int getType() {
        return this.type;
    }

    public void setActive(int i) {
        this.active = i;
    }

    public void setCommand(String str) {
        this.command = str;
    }

    public void setSendtime(long j) {
        this.sendtime = j;
    }

    public void setType(int i) {
        this.type = i;
    }
}
