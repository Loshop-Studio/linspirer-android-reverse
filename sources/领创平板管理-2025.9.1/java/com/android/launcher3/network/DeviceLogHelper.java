package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.R;
import com.android.launcher3.network.params.ListParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.UserEvent;
import com.android.launcher3.p027db.model.UserEventDao;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.HttpCore;
import com.huawei.hem.DBController;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* loaded from: classes.dex */
public class DeviceLogHelper {
    public static final String TAG = "DeviceLogHelper ";
    public Context mContext;
    public HttpCore mHttpCore;
    public UserEventDao mUserEventDao;
    public UserInfoUtil mUserInfoUtil;

    public static class DeviceLogHolder {
        public static final DeviceLogHelper instance = new DeviceLogHelper();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface EventConfig {
        public static final String ACCOUNT_LOGIN = "account_login";
        public static final String ACCOUNT_LOGOUT = "account_logout";
        public static final String ADMIN_LOGIN = "admin_login";
        public static final String CHANGE_SIMCARD_NORMAL = "change_simcard_normal";
        public static final String CLICK_CLEAN_ALL = "click_clean_all";
        public static final String CLOSE_BLUETOOTH_NORMAL = "close_bluetooth_normal";
        public static final String ENTER_CLEAN_APP = "enter_clean_app";
        public static final String FIRST_USED = "first_init_used";
        public static final String NOT_GRANTED_PERMISSION = "not_granted_permission";
        public static final String OPEN_BLUETOOTH_NORMAL = "open_bluetooth_normal";
        public static final String PROHIBITED_APP_NORMAL = "prohibited_app_normal";
        public static final String SDCARD_PLUG_IN_NORMAL = "sdcard_plug_in_normal";
        public static final String SDCARD_PLUG_OUT_NORMAL = "sdcard_plug_out_normal";
        public static final String START_APP_NORMAL = "start_app_normal";
        public static final String UNINSTALL_APP_NORMAL = "uninstall_app_normal";
        public static final String USB_PLUG_IN_NORMAL = "usb_plug_in_normal";
        public static final String USB_PLUG_OUT_NORMAL = "usb_plug_out_normal";
    }

    private void createUserEvent(String str, String str2) {
        if (this.mUserInfoUtil.m3023R() || TextUtils.isEmpty(this.mUserInfoUtil.m3052k())) {
            LTKDateUtil.m1403m("DeviceLogHelper device is release or has no email no need record");
            return;
        }
        UserEvent userEvent = new UserEvent();
        userEvent.setEventName(str);
        userEvent.setDescription(str2);
        userEvent.setUserName(this.mUserInfoUtil.m3052k());
        userEvent.setEventTime(LTKDateUtil.m1399i());
        List<UserEvent> listLoadAll = this.mUserEventDao.loadAll();
        if (!AbstractC1102l9.m2273N(listLoadAll) && listLoadAll.size() >= 500) {
            LTKDateUtil.m1403m("DeviceLogHelper  db cache is too large");
            this.mUserEventDao.deleteAll();
        }
        this.mUserEventDao.insert(userEvent);
    }

    public static DeviceLogHelper getInstance() {
        return DeviceLogHolder.instance;
    }

    public void recordAccountLogin() {
        createUserEvent(EventConfig.ACCOUNT_LOGIN, String.format(this.mContext.getResources().getString(R.string.event_account_login), this.mUserInfoUtil.m3052k()));
    }

    public void recordAccountOfflineLogin() {
        createUserEvent(EventConfig.ACCOUNT_LOGIN, String.format(this.mContext.getResources().getString(R.string.event_account_offline_login), this.mUserInfoUtil.m3052k()));
    }

    public void recordAccountOut(String str) {
        createUserEvent(EventConfig.ACCOUNT_LOGOUT, String.format(str, this.mUserInfoUtil.m3052k()));
    }

    public void recordAdminEvent() {
        createUserEvent(EventConfig.ADMIN_LOGIN, this.mContext.getResources().getString(R.string.event_admin_login));
    }

    public void recordBluetoothEvent(boolean z) throws Resources.NotFoundException {
        String string;
        String str;
        if (z) {
            string = this.mContext.getResources().getString(R.string.event_open_bluethooth);
            str = EventConfig.OPEN_BLUETOOTH_NORMAL;
        } else {
            string = this.mContext.getResources().getString(R.string.event_close_bluethooth);
            str = EventConfig.CLOSE_BLUETOOTH_NORMAL;
        }
        createUserEvent(str, string);
    }

    public void recordClearEvent() {
        createUserEvent(EventConfig.CLICK_CLEAN_ALL, this.mContext.getResources().getString(R.string.event_clear_cache));
    }

    public void recordFirstUesed(String str) {
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        String strM3052k = c1424y5.m3052k();
        LTKDateUtil.m1403m("DeviceLogHelper ===cache email:" + strM3052k);
        if (TextUtils.isEmpty(strM3052k)) {
            c1424y5.m3030Y(str);
            createUserEvent(EventConfig.FIRST_USED, " first logined in this device");
        }
    }

    public void recordInstalledEvent(String str) {
        createUserEvent(EventConfig.PROHIBITED_APP_NORMAL, str);
    }

    public void recordOpenApp(String str) {
        createUserEvent(EventConfig.START_APP_NORMAL, str);
    }

    public void recordOpenClearApp() {
        createUserEvent(EventConfig.ENTER_CLEAN_APP, this.mContext.getResources().getString(R.string.event_enter_clean_app));
    }

    public void recordPermissionEvent(String str) {
        if (TextUtils.isEmpty(this.mUserInfoUtil.m3052k())) {
            LTKDateUtil.m1403m("DeviceLogHelper no permission event no need reocrd by email is empty");
        } else {
            createUserEvent("not_granted_permission", str);
        }
    }

    public void recordSDEvent(boolean z) throws Resources.NotFoundException {
        String string;
        String str;
        if (z) {
            string = this.mContext.getResources().getString(R.string.event_enter_sd);
            str = EventConfig.SDCARD_PLUG_IN_NORMAL;
        } else {
            string = this.mContext.getResources().getString(R.string.event_out_sd);
            str = EventConfig.SDCARD_PLUG_OUT_NORMAL;
        }
        createUserEvent(str, string);
    }

    public void recordSIMCardEvent(boolean z) {
        createUserEvent(EventConfig.CHANGE_SIMCARD_NORMAL, z ? this.mContext.getResources().getString(R.string.event_enter_sim) : this.mContext.getResources().getString(R.string.event_out_sim));
    }

    public void recordUninstalledEvent(String str) {
        createUserEvent(EventConfig.UNINSTALL_APP_NORMAL, str);
    }

    public void recordUsbEvent(boolean z) throws Resources.NotFoundException {
        String string;
        String str;
        if (z) {
            string = this.mContext.getResources().getString(R.string.event_usb_connect);
            str = EventConfig.USB_PLUG_IN_NORMAL;
        } else {
            string = this.mContext.getResources().getString(R.string.event_usb_disconnect);
            str = EventConfig.USB_PLUG_OUT_NORMAL;
        }
        createUserEvent(str, string);
    }

    public void uploadEvent() {
        if (!LauncherMenuHelper.m3005z()) {
            LTKDateUtil.m1403m("DeviceLogHelper device is release no need upload");
            return;
        }
        List<UserEvent> listLoadAll = this.mUserEventDao.loadAll();
        if (AbstractC1102l9.m2273N(listLoadAll)) {
            LTKDateUtil.m1403m("DeviceLogHelper logs empty no need upload");
            return;
        }
        try {
            V2Params v2Params = new V2Params();
            ListParams listParams = new ListParams(this.mContext);
            listParams.setReportlist(listLoadAll);
            listParams.setEmail(this.mUserInfoUtil.m3052k());
            v2Params.setMethod(RequestUrl.DEVICE_LOG_REPORT_PARAM);
            v2Params.setParams(JSON.toJSONString(listParams));
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.UPLOAD_EVENT_URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.DeviceLogHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    LTKDateUtil.m1403m("DeviceLogHelper upload device failed");
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    LTKDateUtil.m1403m("DeviceLogHelper  upload device failure");
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    LTKDateUtil.m1403m("DeviceLogHelper  device logs upload sucess");
                    DeviceLogHelper.this.mUserEventDao.deleteAll();
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public DeviceLogHelper() {
        this.mContext = GuardSecureApplication.f1640b;
        this.mUserInfoUtil = UserInfoUtil.b.f4202a;
        this.mUserEventDao = DBController.m2715a().f3751c.getUserEventDao();
        this.mHttpCore = new HttpCore();
    }
}
