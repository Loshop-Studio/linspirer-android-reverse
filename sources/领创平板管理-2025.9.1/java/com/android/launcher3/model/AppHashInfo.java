package com.android.launcher3.model;

import com.huawei.hem.CompilerOutline;
import java.util.Objects;

/* loaded from: classes.dex */
public class AppHashInfo {
    public String appName;
    public String hash;
    public String packName;
    public String packWithHash;

    public AppHashInfo() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AppHashInfo.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.packName, ((AppHashInfo) obj).packName);
    }

    public String getAppName() {
        return this.appName;
    }

    public String getHash() {
        return this.hash;
    }

    public String getPackName() {
        return this.packName;
    }

    public String getPackWithHash() {
        return this.packWithHash;
    }

    public int hashCode() {
        return Objects.hash(this.packName);
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setHash(String str) {
        this.hash = str;
    }

    public void setPackName(String str) {
        this.packName = str;
    }

    public void setPackWithHash(String str) {
        this.packWithHash = str;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("AppHashInfo{packName='");
        CompilerOutline.m1781z(sbM1765j, this.packName, '\'', ", packWithHash='");
        CompilerOutline.m1781z(sbM1765j, this.packWithHash, '\'', ", hash='");
        CompilerOutline.m1781z(sbM1765j, this.hash, '\'', ", appName='");
        sbM1765j.append(this.appName);
        sbM1765j.append('\'');
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    public AppHashInfo(String str, String str2, String str3) {
        this.packName = str;
        this.packWithHash = str2;
        this.hash = str3;
    }
}
