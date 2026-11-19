package com.huawei.updatesdk.service.appmgr.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateJsonBean;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ApkUpgradeInfo extends UpdateJsonBean implements Serializable, Parcelable {
    public static final int APP_MUST_UPDATE = 1;
    public static final Parcelable.Creator<ApkUpgradeInfo> CREATOR = new ApkUpgradeInfoCreator();
    public static final int HUAWEI_OFFICIAL_APP = 1;
    public static final int NOT_AUTOUPDATE = 0;
    public static final String TAG = "ApkUpgradeInfo";
    public static final int UPGRADE_SAME_SIGNATURE = 0;
    public static final long serialVersionUID = 136275377334431721L;
    public long bundleSize_;
    public String detailId_;
    public int devType_;
    public String diffDownUrl;
    public String diffSha2_;
    public int diffSize_;
    public String downurl_;
    public String fullDownUrl_;
    public String icon_;
    public String id_;
    public int isAutoUpdate_;
    public int isCompulsoryUpdate_;
    public int maple_;
    public String name_;
    public String newFeatures_;
    public String notRcmReason_;
    public long obbSize_;
    public int oldVersionCode_;
    public String oldVersionName_;
    public String package_;
    public int packingType_;
    public String releaseDateDesc_;
    public String releaseDate_;
    public int sameS_;
    public String sha256_;
    public long size_;
    public int state_;
    public int versionCode_;
    public String version_;

    /* renamed from: com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo$a */
    public static class ApkUpgradeInfoCreator implements Parcelable.Creator<ApkUpgradeInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApkUpgradeInfo createFromParcel(Parcel parcel) {
            return new ApkUpgradeInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApkUpgradeInfo[] newArray(int i) {
            return new ApkUpgradeInfo[i];
        }
    }

    public ApkUpgradeInfo() {
        this.sameS_ = 0;
        this.state_ = 2;
        this.isAutoUpdate_ = 0;
        this.isCompulsoryUpdate_ = 0;
        this.devType_ = 0;
    }

    public ApkUpgradeInfo(Parcel parcel) {
        this.sameS_ = 0;
        this.state_ = 2;
        this.isAutoUpdate_ = 0;
        this.isCompulsoryUpdate_ = 0;
        this.devType_ = 0;
        this.id_ = parcel.readString();
        this.name_ = parcel.readString();
        this.package_ = parcel.readString();
        this.oldVersionName_ = parcel.readString();
        this.version_ = parcel.readString();
        this.diffSize_ = parcel.readInt();
        this.diffDownUrl = parcel.readString();
        this.diffSha2_ = parcel.readString();
        this.sameS_ = parcel.readInt();
        this.size_ = parcel.readLong();
        this.obbSize_ = parcel.readLong();
        this.releaseDate_ = parcel.readString();
        this.icon_ = parcel.readString();
        this.oldVersionCode_ = parcel.readInt();
        this.versionCode_ = parcel.readInt();
        this.downurl_ = parcel.readString();
        this.sha256_ = parcel.readString();
        this.newFeatures_ = parcel.readString();
        this.releaseDateDesc_ = parcel.readString();
        this.state_ = parcel.readInt();
        this.detailId_ = parcel.readString();
        this.isAutoUpdate_ = parcel.readInt();
        this.isCompulsoryUpdate_ = parcel.readInt();
        this.notRcmReason_ = parcel.readString();
        this.devType_ = parcel.readInt();
        this.fullDownUrl_ = parcel.readString();
        this.maple_ = parcel.readInt();
        this.packingType_ = parcel.readInt();
        this.bundleSize_ = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getBundleSize_() {
        return this.bundleSize_;
    }

    public String getDetailId_() {
        return this.detailId_;
    }

    public int getDevType_() {
        return this.devType_;
    }

    public String getDiffDownUrl_() {
        return this.diffDownUrl;
    }

    public String getDiffSha2_() {
        return this.diffSha2_;
    }

    public int getDiffSize_() {
        return this.diffSize_;
    }

    public String getDownurl_() {
        return this.downurl_;
    }

    public String getFullDownUrl_() {
        return this.fullDownUrl_;
    }

    public String getIcon_() {
        return this.icon_;
    }

    public String getId_() {
        return this.id_;
    }

    public int getIsAutoUpdate_() {
        return this.isAutoUpdate_;
    }

    public int getIsCompulsoryUpdate_() {
        return this.isCompulsoryUpdate_;
    }

    public long getLongSize_() {
        return this.size_;
    }

    public int getMaple_() {
        return this.maple_;
    }

    public String getName_() {
        return this.name_;
    }

    public String getNewFeatures_() {
        return this.newFeatures_;
    }

    public String getNotRcmReason_() {
        return this.notRcmReason_;
    }

    public long getObbSize_() {
        return this.obbSize_;
    }

    public int getOldVersionCode_() {
        return this.oldVersionCode_;
    }

    public String getOldVersionName_() {
        return this.oldVersionName_;
    }

    public String getPackage_() {
        return this.package_;
    }

    public int getPackingType_() {
        return this.packingType_;
    }

    public String getReleaseDateDesc_() {
        return this.releaseDateDesc_;
    }

    public String getReleaseDate_() {
        return this.releaseDate_;
    }

    public int getSameS_() {
        return this.sameS_;
    }

    public String getSha256_() {
        return this.sha256_;
    }

    @Deprecated
    public int getSize_() {
        return (int) this.size_;
    }

    public int getState_() {
        return this.state_;
    }

    public int getVersionCode_() {
        return this.versionCode_;
    }

    public String getVersion_() {
        return this.version_;
    }

    public void setBundleSize_(long j) {
        this.bundleSize_ = j;
    }

    public void setDetailId_(String str) {
        this.detailId_ = str;
    }

    public void setDevType_(int i) {
        this.devType_ = i;
    }

    public void setDiffDownUrl_(String str) {
        this.diffDownUrl = str;
    }

    public void setDiffSha2_(String str) {
        this.diffSha2_ = str;
    }

    public void setDiffSize_(int i) {
        this.diffSize_ = i;
    }

    public void setDownurl_(String str) {
        this.downurl_ = str;
    }

    public void setFullDownUrl_(String str) {
        this.fullDownUrl_ = str;
    }

    public void setIcon_(String str) {
        this.icon_ = str;
    }

    public void setId_(String str) {
        this.id_ = str;
    }

    public void setIsAutoUpdate_(int i) {
        this.isAutoUpdate_ = i;
    }

    public void setIsCompulsoryUpdate_(int i) {
        this.isCompulsoryUpdate_ = i;
    }

    public void setMaple_(int i) {
        this.maple_ = i;
    }

    public void setName_(String str) {
        this.name_ = str;
    }

    public void setNewFeatures_(String str) {
        this.newFeatures_ = str;
    }

    public void setNotRcmReason_(String str) {
        this.notRcmReason_ = str;
    }

    public void setObbSize_(long j) {
        this.obbSize_ = j;
    }

    public void setOldVersionCode_(int i) {
        this.oldVersionCode_ = i;
    }

    public void setOldVersionName_(String str) {
        this.oldVersionName_ = str;
    }

    public void setPackage_(String str) {
        this.package_ = str;
    }

    public void setPackingType_(int i) {
        this.packingType_ = i;
    }

    public void setReleaseDateDesc_(String str) {
        this.releaseDateDesc_ = str;
    }

    public void setReleaseDate_(String str) {
        this.releaseDate_ = str;
    }

    public void setSameS_(int i) {
        this.sameS_ = i;
    }

    public void setSha256_(String str) {
        this.sha256_ = str;
    }

    public void setSize_(long j) {
        this.size_ = j;
    }

    public void setState_(int i) {
        this.state_ = i;
    }

    public void setVersionCode_(int i) {
        this.versionCode_ = i;
    }

    public void setVersion_(String str) {
        this.version_ = str;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j(" {\n\tid_: ");
        sbM1765j.append(getId_());
        sbM1765j.append("\n\tname_: ");
        sbM1765j.append(getName_());
        sbM1765j.append("\n\tpackage_: ");
        sbM1765j.append(getPackage_());
        sbM1765j.append("\n\tversion_: ");
        sbM1765j.append(getVersion_());
        sbM1765j.append("\n\tdiffSize_: ");
        sbM1765j.append(getDiffSize_());
        sbM1765j.append("\n\tdiffDownUrl_: ");
        sbM1765j.append(getDiffDownUrl_());
        sbM1765j.append("\n\tdiffSha2_: ");
        sbM1765j.append(getDiffSha2_());
        sbM1765j.append("\n\tsameS_: ");
        sbM1765j.append(getSameS_());
        sbM1765j.append("\n\tsize_: ");
        sbM1765j.append(getLongSize_());
        sbM1765j.append("\n\treleaseDate_: ");
        sbM1765j.append(getReleaseDate_());
        sbM1765j.append("\n\ticon_: ");
        sbM1765j.append(getIcon_());
        sbM1765j.append("\n\toldVersionCode_: ");
        sbM1765j.append(getOldVersionCode_());
        sbM1765j.append("\n\tversionCode_: ");
        sbM1765j.append(getVersionCode_());
        sbM1765j.append("\n\tdownurl_: ");
        sbM1765j.append(getDownurl_());
        sbM1765j.append("\n\tnewFeatures_: ");
        sbM1765j.append(getNewFeatures_());
        sbM1765j.append("\n\treleaseDateDesc_: ");
        sbM1765j.append(getReleaseDateDesc_());
        sbM1765j.append("\n\tstate_: ");
        sbM1765j.append(getState_());
        sbM1765j.append("\n\tdetailId_: ");
        sbM1765j.append(getDetailId_());
        sbM1765j.append("\n\tfullDownUrl_: ");
        sbM1765j.append(getFullDownUrl_());
        sbM1765j.append("\n\tisCompulsoryUpdate_: ");
        sbM1765j.append(getIsCompulsoryUpdate_());
        sbM1765j.append("\n\tnotRcmReason_: ");
        sbM1765j.append(getNotRcmReason_());
        sbM1765j.append("\n\tdevType_: ");
        sbM1765j.append(getDevType_());
        sbM1765j.append("\n}");
        return sbM1765j.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id_);
        parcel.writeString(this.name_);
        parcel.writeString(this.package_);
        parcel.writeString(this.oldVersionName_);
        parcel.writeString(this.version_);
        parcel.writeInt(this.diffSize_);
        parcel.writeString(this.diffDownUrl);
        parcel.writeString(this.diffSha2_);
        parcel.writeInt(this.sameS_);
        parcel.writeLong(this.size_);
        parcel.writeLong(this.obbSize_);
        parcel.writeString(this.releaseDate_);
        parcel.writeString(this.icon_);
        parcel.writeInt(this.oldVersionCode_);
        parcel.writeInt(this.versionCode_);
        parcel.writeString(this.downurl_);
        parcel.writeString(this.sha256_);
        parcel.writeString(this.newFeatures_);
        parcel.writeString(this.releaseDateDesc_);
        parcel.writeInt(this.state_);
        parcel.writeString(this.detailId_);
        parcel.writeInt(this.isAutoUpdate_);
        parcel.writeInt(this.isCompulsoryUpdate_);
        parcel.writeString(this.notRcmReason_);
        parcel.writeInt(this.devType_);
        parcel.writeString(this.fullDownUrl_);
        parcel.writeInt(this.maple_);
        parcel.writeInt(this.packingType_);
        parcel.writeLong(this.bundleSize_);
    }
}
