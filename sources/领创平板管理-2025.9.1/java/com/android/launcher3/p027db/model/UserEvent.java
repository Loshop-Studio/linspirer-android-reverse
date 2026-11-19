package com.android.launcher3.p027db.model;

import com.alibaba.fastjson.annotation.JSONField;

/* loaded from: classes.dex */
public class UserEvent {
    public String description;

    @JSONField(name = "event_name")
    public String eventName;

    @JSONField(name = "event_result")
    public String eventResult;

    @JSONField(name = "event_time")
    public String eventTime;

    /* renamed from: id */
    public Long f1894id;

    @JSONField(name = "event_is_illegal")
    public int isIllegal;

    @JSONField(name = "user_name")
    public String userName;

    public UserEvent(Long l, String str, String str2, String str3, int i, String str4, String str5) {
        this.f1894id = l;
        this.eventName = str;
        this.eventTime = str2;
        this.eventResult = str3;
        this.isIllegal = i;
        this.userName = str4;
        this.description = str5;
    }

    public String getDescription() {
        return this.description;
    }

    public String getEventName() {
        return this.eventName;
    }

    public String getEventResult() {
        return this.eventResult;
    }

    public String getEventTime() {
        return this.eventTime;
    }

    public Long getId() {
        return this.f1894id;
    }

    public int getIsIllegal() {
        return this.isIllegal;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEventName(String str) {
        this.eventName = str;
    }

    public void setEventResult(String str) {
        this.eventResult = str;
    }

    public void setEventTime(String str) {
        this.eventTime = str;
    }

    public void setId(Long l) {
        this.f1894id = l;
    }

    public void setIsIllegal(int i) {
        this.isIllegal = i;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public UserEvent() {
    }
}
