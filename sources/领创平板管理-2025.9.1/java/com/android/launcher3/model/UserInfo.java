package com.android.launcher3.model;

import java.util.List;

/* loaded from: classes.dex */
public class UserInfo {
    public String email;
    public List<GroupInfo> groupInfo;

    /* renamed from: id */
    public long f2032id;
    public String name;
    public SchoolInfo schoolinfo;
    public int status;

    public String getEmail() {
        return this.email;
    }

    public List<GroupInfo> getGroupInfo() {
        return this.groupInfo;
    }

    public long getId() {
        return this.f2032id;
    }

    public String getName() {
        return this.name;
    }

    public SchoolInfo getSchoolinfo() {
        return this.schoolinfo;
    }

    public int getStatus() {
        return this.status;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setGroupInfo(List<GroupInfo> list) {
        this.groupInfo = list;
    }

    public void setId(long j) {
        this.f2032id = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSchoolinfo(SchoolInfo schoolInfo) {
        this.schoolinfo = schoolInfo;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
