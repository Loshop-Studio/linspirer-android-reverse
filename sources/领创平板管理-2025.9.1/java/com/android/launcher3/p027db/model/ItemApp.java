package com.android.launcher3.p027db.model;

import com.huawei.hem.C1424y5;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ItemApp implements Serializable {
    public static final long serialVersionUID = 5573832826736049153L;
    public boolean canuninstall;
    public int exception_white_url;
    public int hide_icon_status;

    /* renamed from: id */
    public String f1884id;
    public Long index;
    public int isForceApps;
    public int isNew;
    public int isTrust;
    public int isWhite;
    public boolean is_trust;
    public boolean isforce;
    public boolean isnew;
    public String md5sum;
    public String packagename;
    public String path;
    public String sha1;
    public int sort_weight;
    public int status;
    public String updated_at;
    public String userName;
    public int versioncode;
    public String versionname;

    public ItemApp(Long l, String str, int i, int i2, int i3, int i4, int i5, String str2, String str3, int i6, int i7, String str4, String str5, String str6, int i8, int i9) {
        this.index = l;
        this.f1884id = str;
        this.status = i;
        this.isNew = i2;
        this.exception_white_url = i3;
        this.isTrust = i4;
        this.hide_icon_status = i5;
        this.packagename = str2;
        this.versionname = str3;
        this.versioncode = i6;
        this.isForceApps = i7;
        this.sha1 = str4;
        this.updated_at = str5;
        this.userName = str6;
        this.isWhite = i8;
        this.sort_weight = i9;
    }

    public int getException_white_url() {
        return this.exception_white_url;
    }

    public int getHide_icon_status() {
        return this.hide_icon_status;
    }

    public String getId() {
        return this.f1884id;
    }

    public Long getIndex() {
        return this.index;
    }

    public int getIsForceApps() {
        return this.isForceApps;
    }

    public int getIsNew() {
        return this.isNew;
    }

    public int getIsTrust() {
        return this.isTrust;
    }

    public int getIsWhite() {
        return 1;
    }

    public String getMd5sum() {
        return this.md5sum;
    }

    public String getPackagename() {
        return this.packagename;
    }

    public String getPath() {
        return this.path;
    }

    public String getSha1() {
        return this.sha1;
    }

    public int getSort_weight() {
        return this.sort_weight;
    }

    public int getStatus() {
        return this.status;
    }

    public String getUpdated_at() {
        return this.updated_at;
    }

    public String getUserName() {
        return C1424y5.b.f4202a.m3052k();
    }

    public int getVersioncode() {
        return this.versioncode;
    }

    public String getVersionname() {
        return this.versionname;
    }

    public boolean isCanuninstall() {
        return this.canuninstall;
    }

    public boolean isIs_trust() {
        return this.is_trust;
    }

    public boolean isIsforce() {
        return this.isforce;
    }

    public boolean isIsnew() {
        return this.isnew;
    }

    public void setCanuninstall(boolean z) {
        this.canuninstall = z;
    }

    public void setException_white_url(int i) {
        this.exception_white_url = i;
    }

    public void setHide_icon_status(int i) {
        this.hide_icon_status = i;
    }

    public void setId(String str) {
        this.f1884id = str;
    }

    public void setIndex(Long l) {
        this.index = l;
    }

    public void setIsForceApps(int i) {
        this.isForceApps = i;
    }

    public void setIsNew(int i) {
        this.isNew = i;
    }

    public void setIsTrust(int i) {
        this.isTrust = i;
    }

    public void setIsWhite(int i) {
        this.isWhite = i;
    }

    public void setIs_trust(boolean z) {
        this.is_trust = z;
    }

    public void setIsforce(boolean z) {
        this.isforce = z;
    }

    public void setIsnew(boolean z) {
        this.isnew = z;
    }

    public void setMd5sum(String str) {
        this.md5sum = str;
    }

    public void setPackagename(String str) {
        this.packagename = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setSha1(String str) {
        this.sha1 = str;
    }

    public void setSort_weight(int i) {
        this.sort_weight = i;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setUpdated_at(String str) {
        this.updated_at = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public void setVersioncode(int i) {
        this.versioncode = i;
    }

    public void setVersionname(String str) {
        this.versionname = str;
    }

    public ItemApp() {
    }
}
