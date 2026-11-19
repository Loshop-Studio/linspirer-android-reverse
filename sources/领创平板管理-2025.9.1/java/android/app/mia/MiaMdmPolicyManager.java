package android.app.mia;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MiaMdmPolicyManager {
    public List<String> list = new ArrayList();

    /* renamed from: s */
    public String f0s = null;

    public MiaMdmPolicyManager(Context context) {
    }

    public List<String> APPIPBlackListRead() {
        return null;
    }

    public List<String> APPIPWhiteListRead() {
        return null;
    }

    public boolean AddAppBlackRule(String str) {
        return false;
    }

    public boolean AddAppWhiteRule(String str) {
        return false;
    }

    public boolean ClearAppRules() {
        return false;
    }

    public boolean ClearURLListRules() {
        return false;
    }

    public boolean SetEnable(boolean z) {
        return false;
    }

    public boolean allowBluetoothDataTransfer(boolean z) {
        return false;
    }

    public List<String> appWhiteListRead() {
        return this.list;
    }

    public boolean appWhiteListWrite(List<String> list) {
        return false;
    }

    public void controlApp(String str, boolean z) {
    }

    public void deleteLockPattern(int i) {
    }

    public void disallowSetNotificationVolume_v3(boolean z) {
    }

    public void enableCaptureScreen(boolean z) {
    }

    public List<String> forceStopPackageWhiteListRead() {
        return this.list;
    }

    public boolean forceStopPackageWhiteListWrite(List<String> list) {
        return false;
    }

    public String getBtStatus() {
        return this.f0s;
    }

    public Bitmap getMiaScreen() {
        return null;
    }

    public String getWifiStatus() {
        return this.f0s;
    }

    public boolean isForbidOTG() {
        return false;
    }

    public void killApplicationProcess(String str) {
    }

    public void masterClearInbulitSD() {
    }

    public void mobileData(boolean z) {
    }

    public boolean setAppWhiteList(List<String> list) {
        return false;
    }

    public void setBackKey(boolean z) {
    }

    public void setCamera(boolean z) {
    }

    public boolean setCustomLauncher(String str) {
        return false;
    }

    public boolean setGps(boolean z) {
        return false;
    }

    public void setHomeKey(boolean z) {
    }

    public void setNavigaBar(boolean z) {
    }

    public void setNotificationVolumeValue_v3(int i) {
    }

    public void setOTA(boolean z) {
    }

    public void setOTG(boolean z) {
    }

    public void setPowerLongPressKey(boolean z) {
    }

    public void setPowerSingleClickKey(boolean z) {
    }

    public void setRecentKey(boolean z) {
    }

    public void setSIMStatus(boolean z) {
    }

    public void setScreenCaptureKey(boolean z) {
    }

    public void setTFcard(boolean z) {
    }

    public void setUsbOnlyCharging(boolean z) {
    }

    public void setVoiceSize(boolean z) {
    }

    public void setVolumedownKey(boolean z) {
    }

    public void setVolumeupKey(boolean z) {
    }

    public void setWifiProxy(boolean z) {
    }

    public void shutDown() {
    }

    public void silentInstall(String str) {
    }

    public void silentUnInstall(String str) {
    }

    public boolean updateSystemTime(String str) {
        return false;
    }

    public List<String> urlBlackListRead() {
        return null;
    }

    public boolean urlBlackListWrite(List<String> list) {
        return true;
    }

    public boolean urlSetEnable(boolean z) {
        return false;
    }

    public List<String> urlWhiteListRead() {
        return this.list;
    }

    public boolean urlWhiteListWrite(List<String> list) {
        return false;
    }
}
