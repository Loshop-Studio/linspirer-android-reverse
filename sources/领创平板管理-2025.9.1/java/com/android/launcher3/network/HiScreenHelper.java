package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import com.alibaba.fastjson.JSON;
import com.android.launcher3.fragment.home.BaseHomeFragment;
import com.android.launcher3.fragment.home.HiBoardFragment;
import com.android.launcher3.model.HiBoardScreen;
import com.android.launcher3.network.params.Params;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.ScreenPartSettings;
import com.android.launcher3.p027db.model.ScreenPartSettingsDao;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.BaseRequestHelper;
import com.huawei.hem.HttpCore;
import com.huawei.hem.DBController;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.OnHiBoardChangeListener;
import com.huawei.hem.OnMainScreenChangeListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class HiScreenHelper extends BaseRequestHelper {
    public static final String TAG = "HiScreenHelper";
    public String mLogoPath;
    public List<ScreenPartSettings> mScreenPartSettings = new ArrayList();
    public OnHiBoardChangeListener onHiBoardChangeListener;
    public OnMainScreenChangeListener onMainScreenChangeListener;

    public static class HiScreenHolder {
        public static final HiScreenHelper instance = new HiScreenHelper();
    }

    public static HiScreenHelper getInstance() {
        return HiScreenHolder.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleHiBoardResult(HiBoardScreen hiBoardScreen) {
        ScreenPartSettingsDao screenPartSettingsDao = DBController.m2715a().f3751c.getScreenPartSettingsDao();
        List<ScreenPartSettings> module_setting = hiBoardScreen.getModule_setting();
        this.mScreenPartSettings.clear();
        if (MobileSdkPlatformUtilities.m2273N(module_setting)) {
            screenPartSettingsDao.deleteAll();
            this.mLogoPath = null;
            updateView(module_setting, null);
            return;
        }
        List<ScreenPartSettings> listLoadAll = screenPartSettingsDao.loadAll();
        ScreenPartSettings screenPartSettings = new ScreenPartSettings();
        screenPartSettings.setPosition(0);
        screenPartSettings.setB_img_path(hiBoardScreen.getLogo_path());
        module_setting.add(screenPartSettings);
        this.mScreenPartSettings.addAll(module_setting);
        this.mLogoPath = hiBoardScreen.getLogo_path();
        if (LTKDateUtil.m1401k(module_setting.toString()).equals(LTKDateUtil.m1401k(listLoadAll.toString()))) {
            LTKDateUtil.m1403m("HiScreenHelperhiboard data is same with last no need handle");
            return;
        }
        LTKDateUtil.m1403m("HiScreenHelperhiboard data is not same need handle");
        screenPartSettingsDao.deleteAll();
        screenPartSettingsDao.saveInTx(module_setting);
        updateView(module_setting, hiBoardScreen.getLogo_path());
    }

    private void updateView(List<ScreenPartSettings> list, String str) {
        OnMainScreenChangeListener interfaceC1122m3 = this.onMainScreenChangeListener;
        if (interfaceC1122m3 != null) {
            BaseHomeFragment baseHomeFragment = (BaseHomeFragment) interfaceC1122m3;
            if (baseHomeFragment == null) {
                throw null;
            }
            LTKDateUtil.m1403m("BaseHomeFragment  -- onMainScreenChanged --------------------- ");
            baseHomeFragment.f1916r = list;
            baseHomeFragment.f1915q = str;
            if (baseHomeFragment.m1238l()) {
                baseHomeFragment.f1917s = 1;
                baseHomeFragment.m1244r(false);
                baseHomeFragment.mo1240n();
            } else {
                LTKDateUtil.m1403m("BaseHomeFragment has no hiboard");
                baseHomeFragment.f1917s = 0;
                baseHomeFragment.mo1240n();
                baseHomeFragment.m1244r(false);
            }
            baseHomeFragment.f1912n = false;
        }
        OnHiBoardChangeListener interfaceC1096l3 = this.onHiBoardChangeListener;
        if (interfaceC1096l3 != null) {
            ((HiBoardFragment) interfaceC1096l3).m1252j(list);
        }
    }

    public String getLogoPath() {
        return this.mLogoPath;
    }

    public List<ScreenPartSettings> getScreenPartSettings() {
        return this.mScreenPartSettings;
    }

    public void setLogoPath(String str) {
        this.mLogoPath = str;
    }

    public HiScreenHelper setOnHiBoardChangeListener(OnHiBoardChangeListener interfaceC1096l3) {
        this.onHiBoardChangeListener = interfaceC1096l3;
        return this;
    }

    public HiScreenHelper setOnMainScreenChangeListener(OnMainScreenChangeListener interfaceC1122m3) {
        this.onMainScreenChangeListener = interfaceC1122m3;
        return this;
    }

    public void setScreenPartSettings(List<ScreenPartSettings> list) {
        this.mScreenPartSettings.clear();
        this.mScreenPartSettings = list;
    }

    public void updateScreenSettings() {
        if (!LauncherMenuHelper.m3004y()) {
            LTKDateUtil.m1390A("HiScreenHelper -- Unable to request the ScreenSettings data for unknown reason .");
            return;
        }
        try {
            V2Params v2Params = new V2Params();
            Params params = new Params(this.mContext);
            params.setEmail(this.userInfoUtil.m3052k());
            v2Params.setParams(JSON.toJSONString(params));
            v2Params.setMethod(RequestUrl.SETTINGS_SCREEN);
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<HiBoardScreen>(HiBoardScreen.class) { // from class: com.android.launcher3.network.HiScreenHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    LTKDateUtil.m1393c("HiScreenHelper -- update HiScreen Settings failed 01.");
                    ExceptionHandler.handleException(HiScreenHelper.this.mContext, response, false, false);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    LTKDateUtil.m1393c("HiScreenHelper -- update HiScreen Settings failed 02.");
                    ExceptionHandler.handleException(HiScreenHelper.this.mContext, obj, false, false);
                }

                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(HiBoardScreen hiBoardScreen) {
                    LTKDateUtil.m1403m("HiScreenHelper -- update Screen Settings successfully .");
                    HiScreenHelper.this.handleHiBoardResult(hiBoardScreen);
                }
            });
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HiScreenHelper -- get HiScreen Settings error = "));
        }
    }
}
