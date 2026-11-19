package android.p000os;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.List;

/* loaded from: classes.dex */
public class EduManager {
    public final Context mContext;
    public final IEduManager mService;

    public EduManager(Context context, IEduManager iEduManager) {
        this.mContext = context;
        this.mService = iEduManager;
    }

    public int AccessibilityServiceEnable(String str, String str2, boolean z) {
        try {
            return this.mService.AccessibilityServiceEnable(str, str2, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean AirPlaneOptionIsVisible() {
        try {
            return this.mService.AirPlaneOptionIsVisible();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AirPlaneOptionVisible(boolean z) {
        try {
            return this.mService.AirPlaneOptionVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppAccessEnable(boolean z) {
        try {
            return this.mService.AppAccessEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppAccessMobile(String str, boolean z) {
        try {
            return this.mService.AppAccessMobile(str, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppAccessWlan(String str, boolean z) {
        try {
            return this.mService.AppAccessWlan(str, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppAliveListAdd(String str) {
        try {
            return this.mService.AppAliveListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppAliveListClear() {
        try {
            return this.mService.AppAliveListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppAliveListDel(String str) {
        try {
            return this.mService.AppAliveListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppAliveListEnable(boolean z) {
        try {
            return this.mService.AppAliveListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppAliveListGet() {
        try {
            return this.mService.AppAliveListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppAliveListIsEnable() {
        try {
            return this.mService.AppAliveListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppAliveListRemove(List<String> list) {
        try {
            return this.mService.AppAliveListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppAliveListSet(List<String> list) {
        try {
            return this.mService.AppAliveListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppAllRunningGet() {
        try {
            return this.mService.AppAllRunningGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int AppCacheClear(String str) {
        try {
            return this.mService.AppCacheClear(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppCapScreenPermissionListAdd(String str) {
        try {
            return this.mService.AppCapScreenPermissionListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppCapScreenPermissionListClear() {
        try {
            return this.mService.AppCapScreenPermissionListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppCapScreenPermissionListDel(String str) {
        try {
            return this.mService.AppCapScreenPermissionListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppCapScreenPermissionListEnable(boolean z) {
        try {
            return this.mService.AppCapScreenPermissionListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppCapScreenPermissionListGet() {
        try {
            return this.mService.AppCapScreenPermissionListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppCapScreenPermissionListIsEnable() {
        try {
            return this.mService.AppCapScreenPermissionListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppCapScreenPermissionListRemove(List<String> list) {
        try {
            return this.mService.AppCapScreenPermissionListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppCapScreenPermissionListSet(List<String> list) {
        try {
            return this.mService.AppCapScreenPermissionListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppDataClear(String str) {
        try {
            return this.mService.AppDataClear(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean AppDetailOptionIsVisible() {
        try {
            return this.mService.AppDetailOptionIsVisible();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppDetailOptionVisible(boolean z) {
        try {
            return this.mService.AppDetailOptionVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppDisableSet(String str) {
        try {
            return this.mService.AppDisableSet(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppEnableSet(String str) {
        try {
            return this.mService.AppEnableSet(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppForceStart(String str) {
        try {
            return this.mService.AppForceStart(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppForceStop(String str) {
        try {
            return this.mService.AppForceStop(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppFreezeListAdd(String str) {
        try {
            return this.mService.AppFreezeListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppFreezeListClear() {
        try {
            return this.mService.AppFreezeListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppFreezeListDel(String str) {
        try {
            return this.mService.AppFreezeListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppFreezeListEnable(boolean z) {
        try {
            return this.mService.AppFreezeListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppFreezeListGet() {
        try {
            return this.mService.AppFreezeListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppFreezeListIsEnable() {
        try {
            return this.mService.AppFreezeListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppFreezeListRemove(List<String> list) {
        try {
            return this.mService.AppFreezeListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppFreezeListSet(List<String> list) {
        try {
            return this.mService.AppFreezeListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppGrantAllPermission(String str, boolean z) {
        try {
            return this.mService.AppGrantAllPermission(str, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppGrantUsageStatePermission(String str, boolean z) {
        try {
            return this.mService.AppGrantUsageStatePermission(str, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallBlackListAdd(String str) {
        try {
            return this.mService.AppInstallBlackListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallBlackListClear() {
        try {
            return this.mService.AppInstallBlackListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallBlackListDel(String str) {
        try {
            return this.mService.AppInstallBlackListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallBlackListEnable(boolean z) {
        try {
            return this.mService.AppInstallBlackListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppInstallBlackListGet() {
        try {
            return this.mService.AppInstallBlackListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppInstallBlackListIsEnable() {
        try {
            return this.mService.AppInstallBlackListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return true;
        }
    }

    public int AppInstallBlackListRemove(List<String> list) {
        try {
            return this.mService.AppInstallBlackListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallBlackListSet(List<String> list) {
        try {
            return this.mService.AppInstallBlackListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallWhiteListAdd(String str) {
        try {
            return this.mService.AppInstallWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallWhiteListClear() {
        try {
            return this.mService.AppInstallWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallWhiteListDel(String str) {
        try {
            return this.mService.AppInstallWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallWhiteListEnable(boolean z) {
        try {
            return this.mService.AppInstallWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppInstallWhiteListGet() {
        try {
            return this.mService.AppInstallWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppInstallWhiteListIsEnable() {
        try {
            return this.mService.AppInstallWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppInstallWhiteListRemove(List<String> list) {
        try {
            return this.mService.AppInstallWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppInstallWhiteListSet(List<String> list) {
        try {
            return this.mService.AppInstallWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppManualInstallEnable(boolean z) {
        try {
            return this.mService.AppManualInstallEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean AppManualInstallIsEnable() {
        try {
            return this.mService.AppManualInstallIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppNetworkBlackListAdd(String str) {
        try {
            return this.mService.AppNetworkBlackListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkBlackListClear() {
        try {
            return this.mService.AppNetworkBlackListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkBlackListDel(String str) {
        try {
            return this.mService.AppNetworkBlackListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkBlackListEnable(boolean z) {
        try {
            return this.mService.AppNetworkBlackListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppNetworkBlackListGet() {
        try {
            return this.mService.AppNetworkBlackListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppNetworkBlackListIsEnable() {
        try {
            return this.mService.AppNetworkBlackListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppNetworkBlackListRemove(List<String> list) {
        try {
            return this.mService.AppNetworkBlackListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkBlackListSet(List<String> list) {
        try {
            return this.mService.AppNetworkBlackListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkWhiteListAdd(String str) {
        try {
            return this.mService.AppNetworkWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkWhiteListClear() {
        try {
            return this.mService.AppNetworkWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkWhiteListDel(String str) {
        try {
            return this.mService.AppNetworkWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkWhiteListEnable(boolean z) {
        try {
            return this.mService.AppNetworkWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppNetworkWhiteListGet() {
        try {
            return this.mService.AppNetworkWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppNetworkWhiteListIsEnable() {
        try {
            return this.mService.AppNetworkWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppNetworkWhiteListRemove(List<String> list) {
        try {
            return this.mService.AppNetworkWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNetworkWhiteListSet(List<String> list) {
        try {
            return this.mService.AppNetworkWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNotifyWhiteListAdd(String str) {
        try {
            return this.mService.AppNotifyWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNotifyWhiteListClear() {
        try {
            return this.mService.AppNotifyWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNotifyWhiteListDel(String str) {
        try {
            return this.mService.AppNotifyWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNotifyWhiteListEnable(boolean z) {
        try {
            return this.mService.AppNotifyWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppNotifyWhiteListGet() {
        try {
            return this.mService.AppNotifyWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppNotifyWhiteListIsEnable() {
        try {
            return this.mService.AppNotifyWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppNotifyWhiteListRemove(List<String> list) {
        try {
            return this.mService.AppNotifyWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppNotifyWhiteListSet(List<String> list) {
        try {
            return this.mService.AppNotifyWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppSilentInstall(String str, boolean z) {
        try {
            return this.mService.AppSilentInstall(str, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppSilentInstallPackage(String str, String str2, String str3, boolean z) {
        try {
            return this.mService.AppSilentInstallPackage(str, str2, str3, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppSilentUninstall(String str, boolean z) {
        try {
            return this.mService.AppSilentUninstall(str, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public String AppTopRunningGet() {
        try {
            return this.mService.AppTopRunningGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int AppTrustedListAdd(String str) {
        try {
            return this.mService.AppTrustedListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppTrustedListClear() {
        try {
            return this.mService.AppTrustedListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppTrustedListDel(String str) {
        try {
            return this.mService.AppTrustedListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppTrustedListEnable(boolean z) {
        try {
            return this.mService.AppTrustedListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppTrustedListGet() {
        try {
            return this.mService.AppTrustedListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppTrustedListIsEnable() {
        try {
            return this.mService.AppTrustedListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppTrustedListRemove(List<String> list) {
        try {
            return this.mService.AppTrustedListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppTrustedListSet(List<String> list) {
        try {
            return this.mService.AppTrustedListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnBlockNetworkWhiteListAdd(String str) {
        try {
            return this.mService.AppUnBlockNetworkWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnBlockNetworkWhiteListClear() {
        try {
            return this.mService.AppUnBlockNetworkWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnBlockNetworkWhiteListDel(String str) {
        try {
            return this.mService.AppUnBlockNetworkWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnBlockNetworkWhiteListEnable(boolean z) {
        try {
            return this.mService.AppUnBlockNetworkWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppUnBlockNetworkWhiteListGet() {
        try {
            return this.mService.AppUnBlockNetworkWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppUnBlockNetworkWhiteListIsEnable() {
        try {
            return this.mService.AppUnBlockNetworkWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppUnBlockNetworkWhiteListRemove(List<String> list) {
        try {
            return this.mService.AppUnBlockNetworkWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnBlockNetworkWhiteListSet(List<String> list) {
        try {
            return this.mService.AppUnBlockNetworkWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnFreezeListAdd(String str) {
        try {
            return this.mService.AppUnFreezeListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnFreezeListClear() {
        try {
            return this.mService.AppUnFreezeListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnFreezeListDel(String str) {
        try {
            return this.mService.AppUnFreezeListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnFreezeListEnable(boolean z) {
        try {
            return this.mService.AppUnFreezeListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppUnFreezeListGet() {
        try {
            return this.mService.AppUnFreezeListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppUnFreezeListIsEnable() {
        try {
            return this.mService.AppUnFreezeListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppUnFreezeListRemove(List<String> list) {
        try {
            return this.mService.AppUnFreezeListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUnFreezeListSet(List<String> list) {
        try {
            return this.mService.AppUnFreezeListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallBlackListAdd(String str) {
        try {
            return this.mService.AppUninstallBlackListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallBlackListClear() {
        try {
            return this.mService.AppUninstallBlackListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallBlackListDel(String str) {
        try {
            return this.mService.AppUninstallBlackListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallBlackListEnable(boolean z) {
        try {
            return this.mService.AppUninstallBlackListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean AppUninstallBlackListIsEnable() {
        try {
            return this.mService.AppUninstallBlackListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppUninstallBlackListRemove(List<String> list) {
        try {
            return this.mService.AppUninstallBlackListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallBlackListSet(List<String> list) {
        try {
            return this.mService.AppUninstallBlackListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallWhiteListAdd(String str) {
        try {
            return this.mService.AppUninstallWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallWhiteListClear() {
        try {
            return this.mService.AppUninstallWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallWhiteListDel(String str) {
        try {
            return this.mService.AppUninstallWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallWhiteListEnable(boolean z) {
        try {
            return this.mService.AppUninstallWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> AppUninstallWhiteListGet() {
        try {
            return this.mService.AppUninstallWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean AppUninstallWhiteListIsEnable() {
        try {
            return this.mService.AppUninstallWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int AppUninstallWhiteListRemove(List<String> list) {
        try {
            return this.mService.AppUninstallWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int AppUninstallWhiteListSet(List<String> list) {
        try {
            return this.mService.AppUninstallWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> ApppUninstallBlackListGet() {
        try {
            return this.mService.ApppUninstallBlackListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int AutoBrightnessEnable(boolean z) {
        try {
            return this.mService.AutoBrightnessEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean AutoBrightnessIsEnable() {
        try {
            return this.mService.AutoBrightnessIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int BackKeyEnable(boolean z) {
        try {
            return this.mService.BackKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean BackKeyIsEnable() {
        try {
            return this.mService.BackKeyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int BluetoothBlackListAdd(String str) {
        try {
            return this.mService.BluetoothBlackListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothBlackListClear() {
        try {
            return this.mService.BluetoothBlackListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothBlackListDel(String str) {
        try {
            return this.mService.BluetoothBlackListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothBlackListEnable(boolean z) {
        try {
            return this.mService.BluetoothBlackListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> BluetoothBlackListGet() {
        try {
            return this.mService.BluetoothBlackListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean BluetoothBlackListIsEnable() {
        try {
            return this.mService.BluetoothBlackListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int BluetoothBlackListRemove(List<String> list) {
        try {
            return this.mService.BluetoothBlackListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothBlackListSet(List<String> list) {
        try {
            return this.mService.BluetoothBlackListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothEnable(boolean z) {
        try {
            return this.mService.BluetoothEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothFirewallEnable(boolean z) {
        try {
            return this.mService.BluetoothFirewallEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean BluetoothFirewallIsEnable() {
        try {
            return this.mService.BluetoothFirewallIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int BluetoothFirewallTypeGet() {
        try {
            return this.mService.BluetoothFirewallTypeGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothFirewallTypeSet(int i) {
        try {
            return this.mService.BluetoothFirewallTypeSet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean BluetoothIsEnable() {
        try {
            return this.mService.BluetoothIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int BluetoothOpen(boolean z) {
        try {
            return this.mService.BluetoothOpen(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothTransEnable(boolean z) {
        try {
            return this.mService.BluetoothTransEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean BluetoothTransIsEnable() {
        try {
            return this.mService.BluetoothTransIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int BluetoothWhiteListAdd(String str) {
        try {
            return this.mService.BluetoothWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothWhiteListClear() {
        try {
            return this.mService.BluetoothWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothWhiteListDel(String str) {
        try {
            return this.mService.BluetoothWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothWhiteListEnable(boolean z) {
        try {
            return this.mService.BluetoothWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> BluetoothWhiteListGet() {
        try {
            return this.mService.BluetoothWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean BluetoothWhiteListIsEnable() {
        try {
            return this.mService.BluetoothWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int BluetoothWhiteListRemove(List<String> list) {
        try {
            return this.mService.BluetoothWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BluetoothWhiteListSet(List<String> list) {
        try {
            return this.mService.BluetoothWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BrowserWhiteListClear() {
        try {
            return this.mService.BrowserWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BrowserWhiteListDel(String str) {
        try {
            return this.mService.BrowserWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BrowserWhiteListEnable(boolean z) {
        try {
            return this.mService.BrowserWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> BrowserWhiteListGet() {
        try {
            return this.mService.BrowserWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean BrowserWhiteListIsEnable() {
        try {
            return this.mService.BrowserWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int BrowserWhiteListRemove(List<String> list) {
        try {
            return this.mService.BrowserWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BrowserWhiteListSet(List<String> list) {
        try {
            return this.mService.BrowserWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int BrowserWhiteListadd(String str) {
        try {
            return this.mService.BrowserWhiteListadd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int CameraEnable(boolean z) {
        try {
            return this.mService.CameraEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean CameraIsEnable() {
        try {
            return this.mService.CameraIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int CameraPhotoShutterSoundEnable(boolean z) {
        try {
            return this.mService.CameraPhotoShutterSoundEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean CameraPhotoShutterSoundIsEnable() {
        try {
            return this.mService.CameraPhotoShutterSoundIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int CameraVideoShutterSoundEnable(boolean z) {
        try {
            return this.mService.CameraVideoShutterSoundEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean CameraVideoShutterSoundIsEnable() {
        try {
            return this.mService.CameraVideoShutterSoundIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefAirPlaneEnable(boolean z) {
        try {
            return this.mService.DefAirPlaneEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefAirPlaneIsEnable() {
        try {
            return this.mService.DefAirPlaneIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefApnEnable(boolean z) {
        try {
            return this.mService.DefApnEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefApnIsEnable() {
        try {
            return this.mService.DefApnIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefAutoTimeEnable(boolean z) {
        try {
            return this.mService.DefAutoTimeEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefBatterySaverEnable(boolean z) {
        try {
            return this.mService.DefBatterySaverEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefBatterySaverIsEnable() {
        try {
            return this.mService.DefBatterySaverIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefBrowserClear() {
        try {
            return this.mService.DefBrowserClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefBrowserSet(String str) {
        try {
            return this.mService.DefBrowserSet(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefClipboardEnable(boolean z) {
        try {
            return this.mService.DefClipboardEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefClipboardIsEnable() {
        try {
            return this.mService.DefClipboardIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefDeviceAdminActive(String str, String str2) {
        try {
            return this.mService.DefDeviceAdminActive(str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefDeviceOwner(String str, String str2) {
        try {
            return this.mService.DefDeviceOwner(str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefFactoryResetEnable(boolean z) {
        try {
            return this.mService.DefFactoryResetEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefFactoryResetIsEnable() {
        try {
            return this.mService.DefFactoryResetIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefFileShareEnable(boolean z) {
        try {
            return this.mService.DefFileShareEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefFileShareIsEnable() {
        try {
            return this.mService.DefFileShareIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefGpsLocationEnable(boolean z) {
        try {
            return this.mService.DefGpsLocationEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefGpsLocationIsEnable() {
        try {
            return this.mService.DefGpsLocationIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefHomeLauncherClear() {
        try {
            return this.mService.DefHomeLauncherClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefHomeLauncherSet(String str, String str2) {
        try {
            return this.mService.DefHomeLauncherSet(str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefInputMethodClear() {
        try {
            return this.mService.DefInputMethodClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefInputMethodSet(String str) {
        try {
            return this.mService.DefInputMethodSet(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefInstallUnknownApkEnable(boolean z) {
        try {
            return this.mService.DefInstallUnknownApkEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefInstallUnknownApkIsEnable() {
        try {
            return this.mService.DefInstallUnknownApkIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefLockScreenEnable(boolean z) {
        try {
            return this.mService.DefLockScreenEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefLockScreenIsEnable() {
        try {
            return this.mService.DefLockScreenIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefLockScreenNotifyEnable(boolean z) {
        try {
            return this.mService.DefLockScreenNotifyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefLockScreenNotifyIsEnable() {
        try {
            return this.mService.DefLockScreenNotifyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefMultiUserEnable(boolean z) {
        try {
            return this.mService.DefMultiUserEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefMultiUserIsEnable() {
        try {
            return this.mService.DefMultiUserIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefNoColorReadEnable(boolean z) {
        try {
            return this.mService.DefNoColorReadEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefNoColorReadIsEnable() {
        try {
            return this.mService.DefNoColorReadIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefNotifySendEnable(boolean z) {
        try {
            return this.mService.DefNotifySendEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefNotifySendIsEnable() {
        try {
            return this.mService.DefNotifySendIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefOtaUpdateEnable(boolean z) {
        try {
            return this.mService.DefOtaUpdateEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefOtaUpdateIsEnable() {
        try {
            return this.mService.DefOtaUpdateIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefPowerOffEnable(boolean z) {
        try {
            return this.mService.DefPowerOffEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefPowerOffIsEnable() {
        try {
            return this.mService.DefPowerOffIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefPowerSleepEnable(boolean z) {
        try {
            return this.mService.DefPowerSleepEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefPowerSleepIsEnable() {
        try {
            return this.mService.DefPowerSleepIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefSafeModeEnable(boolean z) {
        try {
            return this.mService.DefSafeModeEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefSafeModeIsEnable() {
        try {
            return this.mService.DefSafeModeIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefScreenColorAdjustEnable(boolean z, int i) {
        try {
            return this.mService.DefScreenColorAdjustEnable(z, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefScreenColorAdjustIsEnable() {
        try {
            return this.mService.DefScreenColorAdjustIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefScreenShotEnable(boolean z) {
        try {
            return this.mService.DefScreenShotEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefScreenShotIsEnable() {
        try {
            return this.mService.DefScreenShotIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefShutdownRebootEnable(boolean z) {
        try {
            return this.mService.DefShutdownRebootEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefShutdownRebootIsEnable() {
        try {
            return this.mService.DefShutdownRebootIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefSystemSettingEnable(boolean z) {
        try {
            return this.mService.DefSystemSettingEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefSystemSettingIsEnable() {
        try {
            return this.mService.DefSystemSettingIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefSystemUpdateEnable(boolean z) {
        try {
            return this.mService.DefSystemUpdateEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefTimeSetEnable(boolean z) {
        try {
            return this.mService.DefTimeSetEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefUnknowSourceDetailEnable(boolean z) {
        try {
            return this.mService.DefUnknowSourceDetailEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefUnknowSourceDetailIsEnable() {
        try {
            return this.mService.DefUnknowSourceDetailIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DefVideoPlayerClear() {
        try {
            return this.mService.DefVideoPlayerClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefVideoPlayerSet(String str) {
        try {
            return this.mService.DefVideoPlayerSet(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DefVolumeAdjustEnable(boolean z) {
        try {
            return this.mService.DefVolumeAdjustEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DefVolumeAdjustIsEnable() {
        try {
            return this.mService.DefVolumeAdjustIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean DevelopmentOptionIsVisible() {
        try {
            return this.mService.DevelopmentOptionIsVisible();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int DevelopmentOptionVisible(boolean z) {
        try {
            return this.mService.DevelopmentOptionVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int DistanceProtectionEnable(boolean z) {
        try {
            return this.mService.DistanceProtectionEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean DistanceProtectionIsEnable() {
        try {
            return this.mService.DistanceProtectionIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String EduVersion() {
        try {
            return this.mService.EduVersion();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public int ExternalStorageEnable(boolean z) {
        try {
            return this.mService.ExternalStorageEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean ExternalStorageIsEnable() {
        try {
            return this.mService.ExternalStorageIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int EyeComfortEnable(boolean z) {
        try {
            return this.mService.EyeComfortEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean EyeComfortIsEnable() {
        try {
            return this.mService.EyeComfortIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int FatigueAlertEnable(boolean z, int i) {
        try {
            return this.mService.FatigueAlertEnable(z, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean FatigueAlertIsEnable() {
        try {
            return this.mService.FatigueAlertIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String FirmwareVersionGet() {
        try {
            return this.mService.FirmwareVersionGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public int GlobalNetworkBlackListAdd(String str) {
        try {
            return this.mService.GlobalNetworkBlackListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkBlackListClear() {
        try {
            return this.mService.GlobalNetworkBlackListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkBlackListDel(String str) {
        try {
            return this.mService.GlobalNetworkBlackListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkBlackListEnable(boolean z) {
        try {
            return this.mService.GlobalNetworkBlackListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> GlobalNetworkBlackListGet() {
        try {
            return this.mService.GlobalNetworkBlackListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean GlobalNetworkBlackListIsEnable() {
        try {
            return this.mService.GlobalNetworkBlackListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int GlobalNetworkBlackListRemove(List<String> list) {
        try {
            return this.mService.GlobalNetworkBlackListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkBlackListSet(List<String> list) {
        try {
            return this.mService.GlobalNetworkBlackListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkWhiteListAdd(String str) {
        try {
            return this.mService.GlobalNetworkWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkWhiteListClear() {
        try {
            return this.mService.GlobalNetworkWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkWhiteListDel(String str) {
        try {
            return this.mService.GlobalNetworkWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkWhiteListEnable(boolean z) {
        try {
            return this.mService.GlobalNetworkWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> GlobalNetworkWhiteListGet() {
        try {
            return this.mService.GlobalNetworkWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean GlobalNetworkWhiteListIsEnable() {
        try {
            return this.mService.GlobalNetworkWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int GlobalNetworkWhiteListRemove(List<String> list) {
        try {
            return this.mService.GlobalNetworkWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int GlobalNetworkWhiteListSet(List<String> list) {
        try {
            return this.mService.GlobalNetworkWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean GpsLocationIsOn() {
        try {
            return this.mService.GpsLocationIsOn();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int GpsLocationOn(boolean z) {
        try {
            return this.mService.GpsLocationOn(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int HeadsetEnable(boolean z) {
        try {
            return this.mService.HeadsetEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean HeadsetIsEnable() {
        try {
            return this.mService.HeadsetIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int HomeKeyEnable(boolean z) {
        try {
            return this.mService.HomeKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean HomeKeyIsEnable() {
        try {
            return this.mService.HomeKeyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int MMSReceiveEnable(boolean z) {
        try {
            return this.mService.MMSReceiveEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean MMSReceiveIsEnable() {
        try {
            return this.mService.MMSReceiveIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int MMSSendEnable(boolean z) {
        try {
            return this.mService.MMSSendEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean MMSSendIsEnable() {
        try {
            return this.mService.MMSSendIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int MenuKeyEnable(boolean z) {
        try {
            return this.mService.MenuKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean MenuKeyIsEnable() {
        try {
            return this.mService.MenuKeyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int MicphoneEnable(boolean z) {
        try {
            return this.mService.MicphoneEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean MicphoneIsEnable() {
        try {
            return this.mService.MicphoneIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int MobileDataConnectivityEnable(boolean z) {
        try {
            return this.mService.MobileDataConnectivityEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean MobileDataConnectivityIsEnable() {
        try {
            return this.mService.MobileDataConnectivityIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean MobileDataIsOn() {
        try {
            return this.mService.MobileDataIsOn();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int MobileDataOn(boolean z) {
        try {
            return this.mService.MobileDataOn(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NavBackButtonEnable(boolean z) {
        try {
            return this.mService.NavBackButtonEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean NavBackButtonIsEnable() {
        try {
            return this.mService.NavBackButtonIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int NavBackButtonVisible(boolean z) {
        try {
            return this.mService.NavBackButtonVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NavBarHide() {
        try {
            return this.mService.NavBarHide();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean NavBarIsShow() {
        try {
            return this.mService.NavBarIsShow();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int NavBarShow() {
        try {
            return this.mService.NavBarShow();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NavHomeButtonEnable(boolean z) {
        try {
            return this.mService.NavHomeButtonEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean NavHomeButtonIsEnable() {
        try {
            return this.mService.NavHomeButtonIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int NavHomeButtonVisible(boolean z) {
        try {
            return this.mService.NavHomeButtonVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NavMenuButtonVisible(boolean z) {
        try {
            return this.mService.NavMenuButtonVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NavRecentButtonEnable(boolean z) {
        try {
            return this.mService.NavRecentButtonEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean NavRecentButtonIsEnable() {
        try {
            return this.mService.NavRecentButtonIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int NavRecentButtonVisible(boolean z) {
        try {
            return this.mService.NavRecentButtonVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NavScreenshotButtonVisible(boolean z) {
        try {
            return this.mService.NavScreenshotButtonVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NavVolumeDownButtonVisible(boolean z) {
        try {
            return this.mService.NavVolumeDownButtonVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NavVolumeUpButtonVisible(boolean z) {
        try {
            return this.mService.NavVolumeUpButtonVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NetworkAccessEnable(boolean z) {
        try {
            return this.mService.NetworkAccessEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NetworkFirewallEnable(boolean z) {
        try {
            return this.mService.NetworkFirewallEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean NetworkFirewallIsEnable() {
        try {
            return this.mService.NetworkFirewallIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int NetworkFirewallTypeGet() {
        try {
            return this.mService.NetworkFirewallTypeGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NetworkFirewallTypeSet(int i) {
        try {
            return this.mService.NetworkFirewallTypeSet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NetworkFirewallWorkTypeGet() {
        try {
            return this.mService.NetworkFirewallWorkTypeGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int NetworkFirewallWorkTypeSet(int i) {
        try {
            return this.mService.NetworkFirewallWorkTypeSet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean NetworkResetOptionIsVisible() {
        try {
            return this.mService.NetworkResetOptionIsVisible();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int NetworkResetOptionVisible(boolean z) {
        try {
            return this.mService.NetworkResetOptionVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int PhoneCallBlackListAdd(String str) {
        try {
            return this.mService.PhoneCallBlackListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int PhoneCallBlackListClear() {
        try {
            return this.mService.PhoneCallBlackListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int PhoneCallBlackListDel(String str) {
        try {
            return this.mService.PhoneCallBlackListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int PhoneCallBlackListEnable(boolean z) {
        try {
            return this.mService.PhoneCallBlackListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> PhoneCallBlackListGet() {
        try {
            return this.mService.PhoneCallBlackListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean PhoneCallBlackListIsEnable() {
        try {
            return this.mService.PhoneCallBlackListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int PhoneCallBlackListSet(List<String> list) {
        try {
            return this.mService.PhoneCallBlackListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int PhoneCallEnable(boolean z) {
        try {
            return this.mService.PhoneCallEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean PhoneCallIsEnable() {
        try {
            return this.mService.PhoneCallIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int PhoneCallWhiteListAdd(String str) {
        try {
            return this.mService.PhoneCallWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int PhoneCallWhiteListClear() {
        try {
            return this.mService.PhoneCallWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int PhoneCallWhiteListDel(String str) {
        try {
            return this.mService.PhoneCallWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int PhoneCallWhiteListEnable(boolean z) {
        try {
            return this.mService.PhoneCallWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> PhoneCallWhiteListGet() {
        try {
            return this.mService.PhoneCallWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean PhoneCallWhiteListIsEnable() {
        try {
            return this.mService.PhoneCallWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int PhoneCallWhiteListSet(List<String> list) {
        try {
            return this.mService.PhoneCallWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public String PhoneNumerGet(int i) {
        try {
            return this.mService.PhoneNumerGet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int PhoneVoiceInEnable(boolean z) {
        try {
            return this.mService.PhoneVoiceInEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean PhoneVoiceInIsEnable() {
        try {
            return this.mService.PhoneVoiceInIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int PhoneVoiceOutEnable(boolean z) {
        try {
            return this.mService.PhoneVoiceOutEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean PhoneVoiceOutIsEnable() {
        try {
            return this.mService.PhoneVoiceOutIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String PlatformNameGet() {
        try {
            return this.mService.PlatformNameGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public int PowerKeyEnable(boolean z) {
        try {
            return this.mService.PowerKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean PowerKeyIsEnable() {
        try {
            return this.mService.PowerKeyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int PowerKeyLongPressEnable(boolean z) {
        try {
            return this.mService.PowerKeyLongPressEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean PowerKeyLongPressIsEnable() {
        try {
            return this.mService.PowerKeyLongPressIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int PowerKeyShortPressEnable(boolean z) {
        try {
            return this.mService.PowerKeyShortPressEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean PowerKeyShortPressIsEnable() {
        try {
            return this.mService.PowerKeyShortPressIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String ProjectNameGet() {
        try {
            return this.mService.ProjectNameGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public int RecentKeyEnable(boolean z) {
        try {
            return this.mService.RecentKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean RecentKeyIsEnable() {
        try {
            return this.mService.RecentKeyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int RecentTaskAllClear() {
        try {
            return this.mService.RecentTaskAllClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int ReverseAlertEnable(boolean z) {
        try {
            return this.mService.ReverseAlertEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean ReverseAlertIsEnable() {
        try {
            return this.mService.ReverseAlertIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SMSEnable(boolean z) {
        try {
            return this.mService.SMSEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean SMSIsEnable() {
        try {
            return this.mService.SMSIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SdcardStorageEnable(boolean z) {
        try {
            return this.mService.SdcardStorageEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean SdcardStorageIsEnable() {
        try {
            return this.mService.SdcardStorageIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean SettingAllOptionIsVisible() {
        try {
            return this.mService.SettingAllOptionIsVisible();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SettingAllOptionVisible(boolean z) {
        try {
            return this.mService.SettingAllOptionVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean SettingOptionIsVisible(int i) {
        try {
            return this.mService.SettingOptionIsVisible(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SettingOptionVisible(int i, boolean z) {
        try {
            return this.mService.SettingOptionVisible(i, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean SettingSearchOptionIsVisible() {
        try {
            return this.mService.SettingSearchOptionIsVisible();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SettingSearchOptionVisible(boolean z) {
        try {
            return this.mService.SettingSearchOptionVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int ShakeAlertEnable(boolean z) {
        try {
            return this.mService.ShakeAlertEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean ShakeAlertIsEnable() {
        try {
            return this.mService.ShakeAlertIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SimEnable(boolean z) {
        try {
            return this.mService.SimEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public String SimImeiGet(int i) {
        try {
            return this.mService.SimImeiGet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int SimImeiNumGet() {
        try {
            return this.mService.SimImeiNumGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean SimIsEnable() {
        try {
            return this.mService.SimIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SimSlotNumGet() {
        try {
            return this.mService.SimSlotNumGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int StatusBarDropEnable(boolean z) {
        try {
            return this.mService.StatusBarDropEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean StatusBarDropIsEnable() {
        try {
            return this.mService.StatusBarDropIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int StatusBarExpandPanelEnable(boolean z) {
        try {
            return this.mService.StatusBarExpandPanelEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean StatusBarExpandPanelIsEnable() {
        try {
            return this.mService.StatusBarExpandPanelIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int StatusBarHide() {
        try {
            return this.mService.StatusBarHide();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int StatusBarNotifyEnable(boolean z) {
        try {
            return this.mService.StatusBarNotifyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean StatusBarNotifyIsEnable() {
        try {
            return this.mService.StatusBarNotifyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int StatusBarShow() {
        try {
            return this.mService.StatusBarShow();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean StatusbarIsShow() {
        try {
            return this.mService.StatusbarIsShow();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SysBacklightEnable(boolean z) {
        try {
            return this.mService.SysBacklightEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean SysBacklightIsEnable() {
        try {
            return this.mService.SysBacklightIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SysBacklightValAdjust(int i) {
        try {
            return this.mService.SysBacklightValAdjust(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysBootanimationClear() {
        try {
            return this.mService.SysBootanimationClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysBootanimationSet(String str) {
        try {
            return this.mService.SysBootanimationSet(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysDateSet(int i, int i2, int i3) {
        try {
            return this.mService.SysDateSet(i, i2, i3);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysDateTimeSet(int i, int i2, int i3, int i4, int i5, int i6) {
        try {
            return this.mService.SysDateTimeSet(i, i2, i3, i4, i5, i6);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysDisplayDensityGet(int i) {
        try {
            return this.mService.SysDisplayDensityGet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysDisplaySizeGet() {
        try {
            return this.mService.SysDisplaySizeGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysDisplaySizeSet(int i) {
        try {
            return this.mService.SysDisplaySizeSet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysFaceRecognition() {
        try {
            return this.mService.SysFaceRecognition();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysFactoryRest() {
        try {
            return this.mService.SysFactoryRest();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysFontSizeGet() {
        try {
            return this.mService.SysFontSizeGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysFontSizeSet(int i) {
        try {
            return this.mService.SysFontSizeSet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysFontSizeValueSet(float f) {
        try {
            return this.mService.SysFontSizeValueSet(f);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysGoSleep() {
        try {
            return this.mService.SysGoSleep();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean SysIsRoot() {
        try {
            return this.mService.SysIsRoot();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SysLockPassword(String str) {
        try {
            return this.mService.SysLockPassword(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysMemoryClear() {
        try {
            return this.mService.SysMemoryClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysPowerSaveMode(int i) {
        try {
            return this.mService.SysPowerSaveMode(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysReboot() {
        try {
            return this.mService.SysReboot();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysRoot(boolean z) {
        try {
            return this.mService.SysRoot(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScheduledPowerOff(boolean z) {
        try {
            return this.mService.SysScheduledPowerOff(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScheduledPowerOn(boolean z) {
        try {
            return this.mService.SysScheduledPowerOn(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScheduledTimePowerOff(boolean z, int i, int i2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        try {
            return this.mService.SysScheduledTimePowerOff(z, i, i2, z2, z3, z4, z5, z6, z7, z8);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScheduledTimePowerOn(boolean z, int i, int i2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        try {
            return this.mService.SysScheduledTimePowerOn(z, i, i2, z2, z3, z4, z5, z6, z7, z8);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScreenLock() {
        try {
            return this.mService.SysScreenLock();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScreenLockClear() {
        try {
            return this.mService.SysScreenLockClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScreenLockType(int i) {
        try {
            return this.mService.SysScreenLockType(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScreenOff() {
        try {
            return this.mService.SysScreenOff();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScreenOn() {
        try {
            return this.mService.SysScreenOn();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScreenRecordStart(boolean z) {
        try {
            return this.mService.SysScreenRecordStart(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public String SysScreenRecordStop() {
        try {
            return this.mService.SysScreenRecordStop();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int SysScreenUnLock() {
        try {
            return this.mService.SysScreenUnLock();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysScreenshot(String str) {
        try {
            return this.mService.SysScreenshot(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public Bitmap SysScreenshotBmp() {
        try {
            return this.mService.SysScreenshotBmp();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String SysScreenshotPath() {
        try {
            return this.mService.SysScreenshotPath();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String SysSerialnoGet() {
        try {
            return this.mService.SysSerialnoGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int SysShutdown() {
        try {
            return this.mService.SysShutdown();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysTimeSet(int i, int i2, int i3) {
        try {
            return this.mService.SysTimeSet(i, i2, i3);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysTimeStampSet(long j) {
        try {
            return this.mService.SysTimeStampSet(j);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysVolumeMuteEnable(boolean z) {
        try {
            return this.mService.SysVolumeMuteEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean SysVolumeMuteIsEnable() {
        try {
            return this.mService.SysVolumeMuteIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int SysWakeUp() {
        try {
            return this.mService.SysWakeUp();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int SysZenModeOn(boolean z) {
        try {
            return this.mService.SysZenModeOn(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int TouchScreenEnable(boolean z) {
        try {
            return this.mService.TouchScreenEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean TouchScreenIsEnable() {
        try {
            return this.mService.TouchScreenIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int UsbDebugEnable(boolean z) {
        try {
            return this.mService.UsbDebugEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean UsbDebugIsEnable() {
        try {
            return this.mService.UsbDebugIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int UsbMtpEnable(boolean z) {
        try {
            return this.mService.UsbMtpEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean UsbMtpIsEnable() {
        try {
            return this.mService.UsbMtpIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int UsbOtgEnable(boolean z) {
        try {
            return this.mService.UsbOtgEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean UsbOtgIsEnable() {
        try {
            return this.mService.UsbOtgIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int UsbStorageEnable(boolean z) {
        try {
            return this.mService.UsbStorageEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean UsbStorageIsEnable() {
        try {
            return this.mService.UsbStorageIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int VolumeDownKeyEnable(boolean z) {
        try {
            return this.mService.VolumeDownKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean VolumeDownKeyIsEnable() {
        try {
            return this.mService.VolumeDownKeyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int VolumeKeyEnable(boolean z) {
        try {
            return this.mService.VolumeKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean VolumeKeyIsEnable() {
        try {
            return this.mService.VolumeKeyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int VolumeUpKeyEnable(boolean z) {
        try {
            return this.mService.VolumeUpKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean VolumeUpKeyIsEnable() {
        try {
            return this.mService.VolumeUpKeyIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean VpnOptionIsVisible() {
        try {
            return this.mService.VpnOptionIsVisible();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int VpnOptionVisible(boolean z) {
        try {
            return this.mService.VpnOptionVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean WifiAdvanceOptionIsVisible() {
        try {
            return this.mService.WifiAdvanceOptionIsVisible();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int WifiAdvanceOptionVisible(boolean z) {
        try {
            return this.mService.WifiAdvanceOptionVisible(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiBlackListAdd(String str) {
        try {
            return this.mService.WifiBlackListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiBlackListClear() {
        try {
            return this.mService.WifiBlackListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiBlackListDel(String str) {
        try {
            return this.mService.WifiBlackListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiBlackListEnable(boolean z) {
        try {
            return this.mService.WifiBlackListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> WifiBlackListGet() {
        try {
            return this.mService.WifiBlackListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean WifiBlackListIsEnable() {
        try {
            return this.mService.WifiBlackListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int WifiBlackListRemove(List<String> list) {
        try {
            return this.mService.WifiBlackListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiBlackListSet(List<String> list) {
        try {
            return this.mService.WifiBlackListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiConfigurationClear() {
        try {
            return this.mService.WifiConfigurationClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiConfigurationDel(String str) {
        try {
            return this.mService.WifiConfigurationDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiConnectSSID(String str, String str2) {
        try {
            return this.mService.WifiConnectSSID(str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiDirectEnable(boolean z) {
        try {
            return this.mService.WifiDirectEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean WifiDirectIsEnable() {
        try {
            return this.mService.WifiDirectIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int WifiEnable(boolean z) {
        try {
            return this.mService.WifiEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiFirewallEnable(boolean z) {
        try {
            return this.mService.WifiFirewallEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean WifiFirewallIsEnable() {
        try {
            return this.mService.WifiFirewallIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int WifiFirewallTypeGet() {
        try {
            return this.mService.WifiFirewallTypeGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiFirewallTypeSet(int i) {
        try {
            return this.mService.WifiFirewallTypeSet(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean WifiIsEnable() {
        try {
            return this.mService.WifiIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String WifiMacGet() {
        try {
            return this.mService.WifiMacGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int WifiOpen(boolean z) {
        try {
            return this.mService.WifiOpen(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiWhiteListAdd(String str) {
        try {
            return this.mService.WifiWhiteListAdd(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiWhiteListClear() {
        try {
            return this.mService.WifiWhiteListClear();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiWhiteListDel(String str) {
        try {
            return this.mService.WifiWhiteListDel(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiWhiteListEnable(boolean z) {
        try {
            return this.mService.WifiWhiteListEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public List<String> WifiWhiteListGet() {
        try {
            return this.mService.WifiWhiteListGet();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean WifiWhiteListIsEnable() {
        try {
            return this.mService.WifiWhiteListIsEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int WifiWhiteListRemove(List<String> list) {
        try {
            return this.mService.WifiWhiteListRemove(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int WifiWhiteListSet(List<String> list) {
        try {
            return this.mService.WifiWhiteListSet(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }
}
