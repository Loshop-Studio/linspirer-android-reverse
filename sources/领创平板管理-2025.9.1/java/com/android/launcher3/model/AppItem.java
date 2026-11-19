package com.android.launcher3.model;

import android.content.pm.ResolveInfo;
import android.support.annotation.NonNull;
import com.huawei.hem.C0948f6;
import java.io.Serializable;

/* loaded from: classes.dex */
public class AppItem implements Serializable, Comparable {
    public String activityName;
    public Object icon;
    public int isForce;
    public String name;
    public String pkgName;
    public ResolveInfo resolveInfo;
    public int tipCount;
    public int weight;

    public AppItem(String str) {
        setPkgName(str);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull Object obj) {
        if (this == obj) {
            return 0;
        }
        return getWeight() - ((AppItem) obj).getWeight();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AppItem.class == obj.getClass()) {
            return ((AppItem) obj).pkgName.equals(this.pkgName);
        }
        return false;
    }

    public String getActivityName() {
        return this.activityName;
    }

    public Object getIcon() {
        return this.icon;
    }

    public int getIsForce() {
        return this.isForce;
    }

    public String getName() {
        return this.name;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public ResolveInfo getResolveInfo() {
        return this.resolveInfo;
    }

    public int getTipCount() {
        return this.tipCount;
    }

    public int getWeight() {
        return this.weight;
    }

    public int hashCode() {
        return 31 + (hashStr() == null ? 0 : hashStr().hashCode());
    }

    public String hashStr() {
        return this.pkgName + this.activityName + this.name;
    }

    public void setActivityName(String str) {
        this.activityName = str;
    }

    public void setIcon(Object obj) {
        this.icon = obj;
    }

    public void setIsForce(int i) {
        this.isForce = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public void setResolveInfo(ResolveInfo resolveInfo) {
        this.resolveInfo = resolveInfo;
    }

    public void setTipCount(int i) {
        this.tipCount = i;
    }

    public void setWeight(int i) {
        this.weight = i;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("AppItem{pkgName='");
        C0948f6.m1781z(sbM1765j, this.pkgName, '\'', ", weight=");
        sbM1765j.append(this.weight);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    public AppItem(String str, String str2) {
        setPkgName(str);
        setActivityName(str2);
    }

    public AppItem(String str, int i) {
        setPkgName(str);
        setWeight(i);
    }
}
