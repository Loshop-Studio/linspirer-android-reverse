package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.R;
import com.android.launcher3.activity.LockActivity;
import com.android.launcher3.model.TacticsIllegal;
import com.android.launcher3.network.params.ListParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.Illegal;
import com.android.launcher3.p027db.model.IllegalEvent;
import com.android.launcher3.p027db.model.IllegalEventDao;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.android.launcher3.p027db.model.ManageDevice;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.DeskSPF;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.TimeReceiverViolationCallback;
import com.huawei.hem.HttpCore;
import com.huawei.hem.DBController;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.IllegalCallBack;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public class IllegalHelper {
    public static final String TAG = "IllegalHelper ";
    public IllegalCallBack illegalCallBack;
    public List<Illegal> illegals;
    public Context mContext;
    public HttpCore mHttpCore;
    public UserInfoUtil mUserInfoUtil;

    public @interface IllegalConfig {
        public static final String CHANGE_SIMCARD = "change_simcard";
        public static final String INTERNAL_STORAGE_OVERFLOW = "internal_storage_overflow";
        public static final String NOT_GRANTED_PERMISSION = "not_granted_permission";
        public static final String OPEN_BLUETOOTH = "open_bluetooth";
        public static final String PROHIBITED_APP = "prohibited_app";
        public static final String SDCARD_PLUG_IN = "sdcard_plug_in";
        public static final String SDCARD_PLUG_OUT = "sdcard_plug_out";
        public static final String SPECIAL_INTERFACES_USED = "special_interfaces_used";
        public static final String UNINSTALL_APP = "uninstall_app";
        public static final String USB_PLUG_IN = "usb_plug_in";
        public static final String USB_PLUG_OUT = "usb_plug_out";
    }

    public static class IllegalHolder {
        public static final IllegalHelper instance = new IllegalHelper();
    }

    private Illegal getIllegalEvent(String str) {
        for (Illegal illegal : this.illegals) {
            if (str.equals(illegal.getName())) {
                return illegal;
            }
        }
        return null;
    }

    public static IllegalHelper getInstance() {
        return IllegalHolder.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIllegal(Illegal illegal) {
        if (illegal == null || !illegal.isEnable()) {
            return;
        }
        if (illegal.isEliminate_data()) {
            LTKDateUtil.f2294f.mo1329t(true);
        } else if (illegal.isLock_workspace()) {
            LauncherMenuHelper.m2996q(this.mContext);
            UserInfoUtil.b.f4202a.m3039d0(10, true);
        }
    }

    private void initData() {
        List<Illegal> listLoadAll = DBController.m2715a().f3750b.getIllegalDao().loadAll();
        if (listLoadAll != null) {
            this.illegals.addAll(listLoadAll);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insertDB(List<IllegalEvent> list, List<IllegalEvent> list2, IllegalEventDao illegalEventDao) {
        if (!MobileSdkPlatformUtilities.m2273N(list) && list.size() >= 500) {
            LTKDateUtil.m1403m("IllegalHelper illegal db cache is too large need clear");
            illegalEventDao.deleteAll();
        }
        illegalEventDao.insertInTx(list2);
        LTKDateUtil.m1403m("IllegalHelper  illeag upload failed need cache to db");
    }

    private boolean isIllegal(String str) {
        List<ItemApp> list = DBController.m2715a().m2717c().queryBuilder().where(ItemAppDao.Properties.IsForceApps.m5870eq(1), new WhereCondition[0]).list();
        ArrayList arrayList = new ArrayList();
        if (!MobileSdkPlatformUtilities.m2273N(list)) {
            Iterator<ItemApp> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getPackagename());
            }
        }
        if (!MobileSdkPlatformUtilities.m2273N(arrayList)) {
            return arrayList.contains(str);
        }
        LTKDateUtil.m1403m("IllegalHelper has no force apps");
        return false;
    }

    private void uploadEvent(List<IllegalEvent> list, final Illegal illegal) {
        if (!LauncherMenuHelper.m3005z()) {
            LTKDateUtil.m1403m("IllegalHelper device is release no need upload");
            return;
        }
        LTKDateUtil.m1403m("IllegalHelper upload illegal logs");
        final IllegalEventDao illegalEventDao = DBController.m2715a().f3751c.getIllegalEventDao();
        final List<IllegalEvent> listLoadAll = illegalEventDao.loadAll();
        ArrayList arrayList = new ArrayList();
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            list = new ArrayList<>();
        }
        final List<IllegalEvent> list2 = list;
        arrayList.addAll(list2);
        if (!MobileSdkPlatformUtilities.m2273N(listLoadAll)) {
            arrayList.addAll(listLoadAll);
        }
        try {
            V2Params v2Params = new V2Params();
            ListParams listParams = new ListParams(this.mContext);
            listParams.setReportlist(arrayList);
            listParams.setEmail(this.mUserInfoUtil.m3052k());
            v2Params.setMethod(RequestUrl.UPLOAD_ILLEGAL_METHOD);
            v2Params.setParams(JSON.toJSONString(listParams));
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.UPLOAD_EVENT_URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.IllegalHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    LTKDateUtil.m1403m("IllegalHelper upload illegal failed");
                    IllegalHelper.this.insertDB(listLoadAll, list2, illegalEventDao);
                    IllegalHelper.this.handleIllegal(illegal);
                    if (IllegalHelper.this.illegalCallBack != null) {
                        TimeReceiverViolationCallback c1023i5 = (TimeReceiverViolationCallback) IllegalHelper.this.illegalCallBack;
                        if (c1023i5 == null) {
                            throw null;
                        }
                        LTKDateUtil.f2294f.mo1324h0();
                        LauncherMenuHelper.m2976W(c1023i5.f2892a, LockActivity.class);
                    }
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    LTKDateUtil.m1403m("IllegalHelper  upload illegal failure");
                    IllegalHelper.this.insertDB(listLoadAll, list2, illegalEventDao);
                    IllegalHelper.this.handleIllegal(illegal);
                    if (IllegalHelper.this.illegalCallBack != null) {
                        TimeReceiverViolationCallback c1023i5 = (TimeReceiverViolationCallback) IllegalHelper.this.illegalCallBack;
                        if (c1023i5 == null) {
                            throw null;
                        }
                        LTKDateUtil.f2294f.mo1324h0();
                        LauncherMenuHelper.m2976W(c1023i5.f2892a, LockActivity.class);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    LTKDateUtil.m1403m("IllegalHelper  illegal logs upload sucess");
                    illegalEventDao.deleteAll();
                    IllegalHelper.this.handleIllegal(illegal);
                    if (IllegalHelper.this.illegalCallBack != null) {
                        TimeReceiverViolationCallback c1023i5 = (TimeReceiverViolationCallback) IllegalHelper.this.illegalCallBack;
                        if (c1023i5 == null) {
                            throw null;
                        }
                        LTKDateUtil.f2294f.mo1324h0();
                        LauncherMenuHelper.m2976W(c1023i5.f2892a, LockActivity.class);
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LTKDateUtil.m1403m("IllegalHelper  upload illegal Exception");
        }
    }

    public void recordChangeSIM(String str) {
        UserInfoUtil c1424y5 = this.mUserInfoUtil;
        if (c1424y5.f4180n0 == null) {
            c1424y5.f4180n0 = c1424y5.f4130D.f2199a.getString("sim_info", null);
        }
        if (str.equals(c1424y5.f4180n0)) {
            LTKDateUtil.m1403m("IllegalHelper plug sim but not change sim ");
            return;
        }
        UserInfoUtil c1424y52 = this.mUserInfoUtil;
        if (c1424y52.f4180n0 != str) {
            c1424y52.f4180n0 = str;
            DeskSPF c0824ac = c1424y52.f4130D;
            c0824ac.f2200b.putString("sim_info", str);
            c0824ac.f2200b.commit();
        }
        Illegal illegalEvent = getIllegalEvent("change_simcard");
        if (illegalEvent == null || !illegalEvent.isEnable()) {
            LTKDateUtil.m1403m("IllegalHelper has no change sim check ");
            return;
        }
        LTKDateUtil.m1403m("IllegalHelper record plug sim ");
        IllegalEvent illegalEvent2 = new IllegalEvent();
        illegalEvent2.setEvent("change_simcard");
        illegalEvent2.setDescription(str);
        illegalEvent2.setEmail(this.mUserInfoUtil.m3052k());
        illegalEvent2.setClienttime(LTKDateUtil.m1399i());
        illegalEvent2.setNotify(illegalEvent.getNotify_admin() ? 1 : 0);
        illegalEvent2.setReset(illegalEvent.getEliminate_data() ? 1 : 0);
        illegalEvent2.setLock(illegalEvent.getLock_workspace() ? 1 : 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(illegalEvent2);
        uploadEvent(arrayList, illegalEvent);
    }

    public void recordConnectUsb() throws Resources.NotFoundException {
        List<ManageDevice> listLoadAll = DBController.m2715a().m2718d().loadAll();
        if (MobileSdkPlatformUtilities.m2273N(listLoadAll)) {
            LTKDateUtil.m1403m("IllegalHelper record device manage is empty ");
            return;
        }
        if (listLoadAll.get(0).isCommand_connect_usb()) {
            LTKDateUtil.m1403m("IllegalHelper usb is allow to use ");
            return;
        }
        LTKDateUtil.m1403m("IllegalHelper record usb connect ");
        IllegalEvent illegalEvent = new IllegalEvent();
        illegalEvent.setEvent(IllegalConfig.USB_PLUG_IN);
        String string = this.mContext.getResources().getString(R.string.event_usb_connect);
        Illegal illegalEvent2 = getIllegalEvent(TacticsIllegal.USB_TO_PC);
        if (illegalEvent2 != null && illegalEvent2.isEnable()) {
            illegalEvent.setNotify(illegalEvent2.getNotify_admin() ? 1 : 0);
            illegalEvent.setReset(illegalEvent2.getEliminate_data() ? 1 : 0);
            illegalEvent.setLock(illegalEvent2.getLock_workspace() ? 1 : 0);
        }
        illegalEvent.setDescription(string);
        illegalEvent.setEmail(this.mUserInfoUtil.m3052k());
        illegalEvent.setClienttime(LTKDateUtil.m1399i());
        ArrayList arrayList = new ArrayList();
        arrayList.add(illegalEvent);
        uploadEvent(arrayList, illegalEvent2);
    }

    public void recordDisconnectUsb() {
        List<ManageDevice> listLoadAll = DBController.m2715a().m2718d().loadAll();
        if (MobileSdkPlatformUtilities.m2273N(listLoadAll)) {
            return;
        }
        if (listLoadAll.get(0).isCommand_connect_usb()) {
            LTKDateUtil.m1403m("IllegalHelper usb is allow to use ");
            return;
        }
        LTKDateUtil.m1403m("IllegalHelper record usb disconnect event ");
        IllegalEvent illegalEvent = new IllegalEvent();
        illegalEvent.setEvent(IllegalConfig.USB_PLUG_OUT);
        illegalEvent.setDescription(this.mContext.getResources().getString(R.string.event_usb_disconnect));
        illegalEvent.setEmail(this.mUserInfoUtil.m3052k());
        illegalEvent.setClienttime(LTKDateUtil.m1399i());
        ArrayList arrayList = new ArrayList();
        arrayList.add(illegalEvent);
        uploadEvent(arrayList, null);
    }

    public void recordInstalledApp(List<String> list) {
        Illegal illegalEvent = getIllegalEvent("prohibited_app");
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            IllegalEvent illegalEvent2 = new IllegalEvent();
            illegalEvent2.setEvent("prohibited_app");
            illegalEvent2.setDescription(str);
            if (illegalEvent != null && illegalEvent.isEnable()) {
                illegalEvent2.setNotify(illegalEvent.getNotify_admin() ? 1 : 0);
                illegalEvent2.setReset(illegalEvent.getEliminate_data() ? 1 : 0);
                illegalEvent2.setLock(illegalEvent.getLock_workspace() ? 1 : 0);
            }
            illegalEvent2.setEmail(this.mUserInfoUtil.m3052k());
            illegalEvent2.setClienttime(LTKDateUtil.m1399i());
            arrayList.add(illegalEvent2);
        }
        LTKDateUtil.m1403m("IllegalHelper record install illegal app");
        uploadEvent(arrayList, illegalEvent);
    }

    public void recordInternalStorageOverFlow(String str) {
        String strM3052k = this.mUserInfoUtil.m3052k();
        if (TextUtils.isEmpty(strM3052k)) {
            LTKDateUtil.m1403m("IllegalHelper internal storage overflow event no need record by email is empty");
            return;
        }
        LTKDateUtil.m1403m("IllegalHelper internal storage overflow need upload illegal event");
        IllegalEvent illegalEvent = new IllegalEvent();
        illegalEvent.setEvent(IllegalConfig.INTERNAL_STORAGE_OVERFLOW);
        illegalEvent.setDescription(str);
        illegalEvent.setEmail(strM3052k);
        illegalEvent.setClienttime(LTKDateUtil.m1399i());
        ArrayList arrayList = new ArrayList();
        arrayList.add(illegalEvent);
        uploadEvent(arrayList, null);
    }

    public void recordNoPermission(String str) {
        String strM3052k = this.mUserInfoUtil.m3052k();
        if (TextUtils.isEmpty(strM3052k)) {
            LTKDateUtil.m1403m("IllegalHelper no permission event no need reocrd by email is empty");
            return;
        }
        LTKDateUtil.m1403m("IllegalHelper permission not granted need upload illegal event");
        IllegalEvent illegalEvent = new IllegalEvent();
        illegalEvent.setEvent("not_granted_permission");
        illegalEvent.setDescription(str);
        illegalEvent.setEmail(strM3052k);
        illegalEvent.setClienttime(LTKDateUtil.m1399i());
        ArrayList arrayList = new ArrayList();
        arrayList.add(illegalEvent);
        uploadEvent(arrayList, null);
    }

    public void recordOpenBluetooth() {
        List<ManageDevice> listLoadAll = DBController.m2715a().m2718d().loadAll();
        if (MobileSdkPlatformUtilities.m2273N(listLoadAll)) {
            return;
        }
        if (listLoadAll.get(0).isCommand_bluetooth()) {
            LTKDateUtil.m1403m("IllegalHelper bluetooth is allow to use ");
            return;
        }
        IllegalEvent illegalEvent = new IllegalEvent();
        illegalEvent.setEvent(IllegalConfig.OPEN_BLUETOOTH);
        illegalEvent.setDescription(this.mContext.getResources().getString(R.string.event_open_bluethooth));
        illegalEvent.setEmail(this.mUserInfoUtil.m3052k());
        illegalEvent.setClienttime(LTKDateUtil.m1399i());
        ArrayList arrayList = new ArrayList();
        arrayList.add(illegalEvent);
        uploadEvent(arrayList, null);
    }

    public void recordSD(boolean z, boolean z2) throws Resources.NotFoundException {
        String string;
        if (this.mUserInfoUtil.m3009D() == 1 && z) {
            LTKDateUtil.m1403m("IllegalHelper sdcard allow to use");
            return;
        }
        if (this.mUserInfoUtil.m3076w() == 1 && !z) {
            LTKDateUtil.m1403m("IllegalHelper otg allow to use");
            return;
        }
        LTKDateUtil.m1403m("IllegalHelper record sd illegal event" + z2);
        IllegalEvent illegalEvent = new IllegalEvent();
        if (z2) {
            illegalEvent.setEvent(IllegalConfig.SDCARD_PLUG_IN);
            string = this.mContext.getResources().getString(R.string.event_enter_sd);
        } else {
            illegalEvent.setEvent(IllegalConfig.SDCARD_PLUG_OUT);
            string = this.mContext.getResources().getString(R.string.event_out_sd);
        }
        illegalEvent.setDescription(string);
        illegalEvent.setEmail(this.mUserInfoUtil.m3052k());
        illegalEvent.setClienttime(LTKDateUtil.m1399i());
        ArrayList arrayList = new ArrayList();
        arrayList.add(illegalEvent);
        uploadEvent(arrayList, null);
    }

    public void recordSpecialInterface(String str) {
        String strM3052k = this.mUserInfoUtil.m3052k();
        if (TextUtils.isEmpty(strM3052k)) {
            LTKDateUtil.m1403m("IllegalHelper no permission event no need record by email is empty");
            return;
        }
        LTKDateUtil.m1403m("IllegalHelper special interface used need upload illegal event");
        IllegalEvent illegalEvent = new IllegalEvent();
        illegalEvent.setEvent(IllegalConfig.SPECIAL_INTERFACES_USED);
        illegalEvent.setDescription(str);
        illegalEvent.setEmail(strM3052k);
        illegalEvent.setClienttime(LTKDateUtil.m1399i());
        ArrayList arrayList = new ArrayList();
        arrayList.add(illegalEvent);
        uploadEvent(arrayList, null);
    }

    public void recordUninstallApp(String str) {
        if (isIllegal(str)) {
            LTKDateUtil.m1403m("IllegalHelper record uninstall force app" + str);
            IllegalEvent illegalEvent = new IllegalEvent();
            illegalEvent.setEvent(IllegalConfig.UNINSTALL_APP);
            illegalEvent.setDescription(str);
            illegalEvent.setEmail(this.mUserInfoUtil.m3052k());
            illegalEvent.setClienttime(LTKDateUtil.m1399i());
            ArrayList arrayList = new ArrayList();
            arrayList.add(illegalEvent);
            uploadEvent(arrayList, null);
        }
    }

    public void setIllegalCallBack(IllegalCallBack interfaceC0996h3) {
        this.illegalCallBack = interfaceC0996h3;
    }

    public void updateData(List<Illegal> list) {
        this.illegals.clear();
        this.illegals.addAll(list);
    }

    public IllegalHelper() {
        this.mUserInfoUtil = UserInfoUtil.b.f4202a;
        this.mContext = GuardSecureApplication.f1640b;
        this.illegals = new ArrayList();
        this.mHttpCore = new HttpCore();
        initData();
    }
}
