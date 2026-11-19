package com.android.launcher3.model;

import com.android.launcher3.p027db.model.ItemApp;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LTKTactics {
    public boolean app_status;
    public TacticApp app_tactics;
    public DeviceSetting device_setting;
    public boolean device_status;
    public TacticDevice device_tactics;

    /* renamed from: id */
    public int f2030id;
    public boolean illegal_status;
    public TacticsIllegal illegal_tactics;
    public List<ItemApp> interest_applist;
    public String name;
    public int release_control;
    public List<ItemApp> totalApps;
    public boolean wifi_status;
    public ArrayList<String> wifi_tactics;
    public boolean workspace_status;
    public WorkTimeTactics workspace_tactics;

    public TacticApp getApp_tactics() {
        return this.app_tactics;
    }

    public DeviceSetting getDevice_setting() {
        return this.device_setting;
    }

    public TacticDevice getDevice_tactics() {
        return this.device_tactics;
    }

    public int getId() {
        return this.f2030id;
    }

    public TacticsIllegal getIllegal_tactics() {
        return this.illegal_tactics;
    }

    public List<ItemApp> getInterest_applist() {
        return this.interest_applist;
    }

    public String getName() {
        return this.name;
    }

    public int getRelease_control() {
        return this.release_control;
    }

    public List<ItemApp> getTotalApps() {
        return this.totalApps;
    }

    public ArrayList<String> getWifi_tactics() {
        return this.wifi_tactics;
    }

    public WorkTimeTactics getWorkspace_tactics() {
        return this.workspace_tactics;
    }

    public boolean isApp_status() {
        return this.app_status;
    }

    public boolean isDevice_status() {
        return this.device_status;
    }

    public boolean isIllegal_status() {
        return this.illegal_status;
    }

    public boolean isWifi_status() {
        return this.wifi_status;
    }

    public boolean isWorkspace_status() {
        return this.workspace_status;
    }

    public void setApp_status(boolean z) {
        this.app_status = z;
    }

    public void setApp_tactics(TacticApp tacticApp) {
        this.app_tactics = tacticApp;
    }

    public void setDevice_setting(DeviceSetting deviceSetting) {
        this.device_setting = deviceSetting;
    }

    public void setDevice_status(boolean z) {
        this.device_status = z;
    }

    public void setDevice_tactics(TacticDevice tacticDevice) {
        this.device_tactics = tacticDevice;
    }

    public void setId(int i) {
        this.f2030id = i;
    }

    public void setIllegal_status(boolean z) {
        this.illegal_status = z;
    }

    public void setIllegal_tactics(TacticsIllegal tacticsIllegal) {
        this.illegal_tactics = tacticsIllegal;
    }

    public void setInterest_applist(List<ItemApp> list) {
        this.interest_applist = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRelease_control(int i) {
        this.release_control = i;
    }

    public void setTotalApps(List<ItemApp> list) {
        this.totalApps = list;
    }

    public void setWifi_status(boolean z) {
        this.wifi_status = z;
    }

    public void setWifi_tactics(ArrayList<String> arrayList) {
        this.wifi_tactics = arrayList;
    }

    public void setWorkspace_status(boolean z) {
        this.workspace_status = z;
    }

    public void setWorkspace_tactics(WorkTimeTactics workTimeTactics) {
        this.workspace_tactics = workTimeTactics;
    }
}
