package com.android.launcher3.network.params;

import android.content.Context;
import android.os.Build;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherDeviceUtils;

/* loaded from: classes.dex */
public class InitLoginParams extends Params {
    public String appstore_version;
    public String classname;
    public String interest_class;
    public String jdclassid;
    public String launcher_version;
    public String rom_version;
    public String schoolid;

    /* renamed from: sn */
    public String f2033sn;
    public String username;

    public InitLoginParams(Context context) {
        super(context);
        setSn(LauncherDeviceUtils.m1592i());
        setLauncher_version(LTKDateUtil.m1398h("com.android.launcher3", context));
        setAppstore_version(LTKDateUtil.m1398h("com.ndwill.swd.appstore", context));
        setRom_version(Build.DISPLAY);
    }

    public String getAppstore_version() {
        return this.appstore_version;
    }

    public String getClassname() {
        return this.classname;
    }

    public String getInterest_class() {
        return this.interest_class;
    }

    public String getJdclassid() {
        return this.jdclassid;
    }

    public String getLauncher_version() {
        return this.launcher_version;
    }

    public String getRom_version() {
        return this.rom_version;
    }

    public String getSchoolid() {
        return this.schoolid;
    }

    public String getSn() {
        return this.f2033sn;
    }

    public String getUsername() {
        return this.username;
    }

    public void setAppstore_version(String str) {
        this.appstore_version = str;
    }

    public void setClassname(String str) {
        this.classname = str;
    }

    public void setInterest_class(String str) {
        this.interest_class = str;
    }

    public void setJdclassid(String str) {
        this.jdclassid = str;
    }

    public void setLauncher_version(String str) {
        this.launcher_version = str;
    }

    public void setRom_version(String str) {
        this.rom_version = str;
    }

    public void setSchoolid(String str) {
        this.schoolid = str;
    }

    public void setSn(String str) {
        this.f2033sn = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }
}
