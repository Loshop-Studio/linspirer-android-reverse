package com.huawei.updatesdk.service.otaupdate;

import com.huawei.updatesdk.service.appmgr.bean.Param;
import java.util.List;

/* loaded from: classes.dex */
public class UpdateParams {
    public boolean isShowImmediate;
    public int minIntervalDay;
    public boolean mustBtnOne;
    public List<String> packageList;
    public List<Param> paramList;
    public String serviceZone;
    public String targetPkgName;

    public static final class Builder {
        public boolean isShowImmediate;
        public int minIntervalDay;
        public boolean mustBtnOne;
        public List<String> packageList;
        public List<Param> paramList;
        public String serviceZone = C1676f.m3889f().m3892b();
        public String targetPkgName;

        public UpdateParams build() {
            return new UpdateParams(this);
        }

        public Builder setIsShowImmediate(boolean z) {
            this.isShowImmediate = z;
            return this;
        }

        public Builder setMinIntervalDay(int i) {
            this.minIntervalDay = i;
            return this;
        }

        public Builder setMustBtnOne(boolean z) {
            this.mustBtnOne = z;
            return this;
        }

        public Builder setPackageList(List<String> list) {
            this.packageList = list;
            return this;
        }

        public Builder setParamList(List<Param> list) {
            this.paramList = list;
            return this;
        }

        public Builder setServiceZone(String str) {
            this.serviceZone = str;
            return this;
        }

        public Builder setTargetPkgName(String str) {
            this.targetPkgName = str;
            return this;
        }
    }

    public UpdateParams(Builder builder) {
        this.isShowImmediate = false;
        this.minIntervalDay = 0;
        this.mustBtnOne = false;
        this.serviceZone = builder.serviceZone;
        this.targetPkgName = builder.targetPkgName;
        this.isShowImmediate = builder.isShowImmediate;
        this.minIntervalDay = builder.minIntervalDay;
        this.mustBtnOne = builder.mustBtnOne;
        this.packageList = builder.packageList;
        this.paramList = builder.paramList;
    }

    public int getMinIntervalDay() {
        return this.minIntervalDay;
    }

    public List<String> getPackageList() {
        return this.packageList;
    }

    public List<Param> getParamList() {
        return this.paramList;
    }

    public String getServiceZone() {
        return this.serviceZone;
    }

    public String getTargetPkgName() {
        return this.targetPkgName;
    }

    public boolean isMustBtnOne() {
        return this.mustBtnOne;
    }

    public boolean isShowImmediate() {
        return this.isShowImmediate;
    }

    public void resetParamList() {
        this.paramList = null;
    }
}
