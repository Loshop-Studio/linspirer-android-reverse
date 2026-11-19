package com.huawei.hem;

import java.io.Serializable;

/* compiled from: UsageAppData.java */
/* renamed from: com.huawei.hem.l5 */
/* loaded from: classes.dex */
public class C1098l5 implements Serializable {
    public String mAppName;
    public long mBeginTimeStamp;
    public long mEndTimeStamp;
    public String mPackageName;

    public String getmAppName() {
        return this.mAppName;
    }

    public long getmBeginTimeStamp() {
        return this.mBeginTimeStamp;
    }

    public long getmEndTimeStamp() {
        return this.mEndTimeStamp;
    }

    public String getmPackageName() {
        return this.mPackageName;
    }

    public void setmAppName(String str) {
        this.mAppName = str;
    }

    public void setmBeginTimeStamp(long j) {
        this.mBeginTimeStamp = j;
    }

    public void setmEndTimeStamp(long j) {
        this.mEndTimeStamp = j;
    }

    public void setmPackageName(String str) {
        this.mPackageName = str;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("UsageAppData{mPackageName='");
        C0948f6.m1781z(sbM1765j, this.mPackageName, '\'', ", mBeginTimeStamp=");
        sbM1765j.append(this.mBeginTimeStamp);
        sbM1765j.append(", mEndTimeStamp=");
        sbM1765j.append(this.mEndTimeStamp);
        sbM1765j.append(", mAppName='");
        sbM1765j.append(this.mAppName);
        sbM1765j.append('\'');
        sbM1765j.append('}');
        return sbM1765j.toString();
    }
}
