package com.android.launcher3.model;

import com.android.launcher3.p027db.model.WeekTactics;
import java.util.List;

/* loaded from: classes.dex */
public class AppTimeLimit {
    public List<AppInfoLimit> app_list;
    public List<String> callsms;
    public WeekTactics time_limit;

    public List<AppInfoLimit> getApp_list() {
        return this.app_list;
    }

    public List<String> getCallsms() {
        return this.callsms;
    }

    public WeekTactics getTime_limit() {
        return this.time_limit;
    }

    public void setApp_list(List<AppInfoLimit> list) {
        this.app_list = list;
    }

    public void setCallsms(List<String> list) {
        this.callsms = list;
    }

    public void setTime_limit(WeekTactics weekTactics) {
        this.time_limit = weekTactics;
    }
}
