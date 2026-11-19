package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.model.AppInfoLimit;
import com.android.launcher3.model.AppTimeLimit;
import com.android.launcher3.model.WorkTime;
import com.android.launcher3.network.params.Params;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKListResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.AppTimeLimitInfo;
import com.android.launcher3.p027db.model.AppTimeLimitInfoDao;
import com.android.launcher3.p027db.model.WeekTactics;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1219q0;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1297t3;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import com.taobao.accs.common.Constants;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class AppTimeLimitHelper {
    public static final String LIMIT_USED_PHONE = "com.linspirer.phone";
    public static final String LIMIT_USED_SMS = "com.linspirer.message";
    public static final String TAG = "AppTimeLimitHelper ";
    public List<AppTimeLimitInfo> appTimeLimitInfos;
    public boolean isDisablePhone;
    public boolean isDisableSMS;
    public List<String> lastDisableApps;
    public AppTimeLimitInfoDao mAppTimeLimitDao;
    public Context mContext;
    public C1255rb mHttpCore;
    public volatile TimerCountDownTimer timerCountDownTimer;
    public C1424y5 userInfoUtil;

    public static class AppTimeLimitHolder {
        public static final AppTimeLimitHelper instance = new AppTimeLimitHelper();
    }

    public class TimerCountDownTimer extends CountDownTimer {
        public TimerCountDownTimer(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            AppTimeLimitHelper.this.checkTimeLimit();
        }
    }

    private void actionEnableLastData(List<AppTimeLimitInfo> list) {
        for (AppTimeLimitInfo appTimeLimitInfo : list) {
            List<String> listM2277R = AbstractC1102l9.m2277R(appTimeLimitInfo.getPackageNames(), ",");
            StringBuilder sbM1765j = C0948f6.m1765j("AppTimeLimitHelper enable last local apps");
            sbM1765j.append(appTimeLimitInfo.getPackageNames());
            C0850bc.m1403m(sbM1765j.toString());
            C0850bc.f2294f.mo1304B0(listM2277R);
            handlePhoneStatus(true, listM2277R, null);
            handleSMStatus(true, listM2277R, null);
        }
    }

    private void convertData(List<AppTimeLimit> list) {
        C0850bc.m1403m("AppTimeLimitHelper  convert server limit data");
        this.appTimeLimitInfos.clear();
        ArrayList arrayList = new ArrayList();
        for (AppTimeLimit appTimeLimit : list) {
            ArrayList arrayList2 = new ArrayList();
            List<AppInfoLimit> app_list = appTimeLimit.getApp_list();
            if (!AbstractC1102l9.m2273N(app_list)) {
                for (AppInfoLimit appInfoLimit : app_list) {
                    if (!TextUtils.isEmpty(appInfoLimit.getPackagename())) {
                        arrayList2.add(appInfoLimit.getPackagename());
                    }
                }
            }
            List<String> callsms = appTimeLimit.getCallsms();
            if (!AbstractC1102l9.m2273N(callsms)) {
                arrayList2.addAll(callsms);
                arrayList.addAll(callsms);
            }
            if (AbstractC1102l9.m2273N(arrayList2)) {
                C0850bc.m1403m("AppTimeLimitHelper  set apptime limit no apps no need save and handle");
            } else {
                AppTimeLimitInfo appTimeLimitInfo = new AppTimeLimitInfo();
                WeekTactics time_limit = appTimeLimit.getTime_limit();
                appTimeLimitInfo.setFriday(time_limit.getFriday());
                appTimeLimitInfo.setMonday(time_limit.getMonday());
                appTimeLimitInfo.setSaturday(time_limit.getSaturday());
                appTimeLimitInfo.setSunday(time_limit.getSunday());
                appTimeLimitInfo.setThursday(time_limit.getThursday());
                appTimeLimitInfo.setTuesday(time_limit.getTuesday());
                appTimeLimitInfo.setWednesday(time_limit.getWednesday());
                appTimeLimitInfo.setPackageNames(arrayList2.toString());
                appTimeLimitInfo.setPkgs(arrayList2);
                this.appTimeLimitInfos.add(appTimeLimitInfo);
            }
        }
        if (arrayList.contains(LIMIT_USED_PHONE)) {
            C1424y5 c1424y5 = this.userInfoUtil;
            if (c1424y5.f4164f0 != 1) {
                c1424y5.f4164f0 = 1;
                C0824ac c0824ac = c1424y5.f4130D;
                c0824ac.f2200b.putInt("is_time_limit_phone", 1);
                c0824ac.f2200b.commit();
            }
        } else {
            C1424y5 c1424y52 = this.userInfoUtil;
            if (c1424y52.f4164f0 != -1) {
                c1424y52.f4164f0 = -1;
                C0824ac c0824ac2 = c1424y52.f4130D;
                c0824ac2.f2200b.putInt("is_time_limit_phone", -1);
                c0824ac2.f2200b.commit();
            }
        }
        if (arrayList.contains(LIMIT_USED_SMS)) {
            C1424y5 c1424y53 = this.userInfoUtil;
            if (c1424y53.f4162e0 != 1) {
                c1424y53.f4162e0 = 1;
                C0824ac c0824ac3 = c1424y53.f4130D;
                c0824ac3.f2200b.putInt("is_time_limit_sms", 1);
                c0824ac3.f2200b.commit();
                return;
            }
            return;
        }
        C1424y5 c1424y54 = this.userInfoUtil;
        if (c1424y54.f4162e0 != -1) {
            c1424y54.f4162e0 = -1;
            C0824ac c0824ac4 = c1424y54.f4130D;
            c0824ac4.f2200b.putInt("is_time_limit_sms", -1);
            c0824ac4.f2200b.commit();
        }
    }

    public static AppTimeLimitHelper getInstance() {
        return AppTimeLimitHolder.instance;
    }

    private String getLimitTime(AppTimeLimitInfo appTimeLimitInfo) {
        switch (Calendar.getInstance().get(7) - 1) {
            case 0:
                return appTimeLimitInfo.getSunday();
            case 1:
                return appTimeLimitInfo.getMonday();
            case 2:
                return appTimeLimitInfo.getTuesday();
            case 3:
                return appTimeLimitInfo.getWednesday();
            case 4:
                return appTimeLimitInfo.getThursday();
            case 5:
                return appTimeLimitInfo.getFriday();
            case 6:
                return appTimeLimitInfo.getSaturday();
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAppTimeLimit(List<AppTimeLimit> list) {
        List<AppTimeLimitInfo> listLoadAll = this.mAppTimeLimitDao.loadAll();
        if (AbstractC1102l9.m2273N(list) && AbstractC1102l9.m2273N(listLoadAll)) {
            C0850bc.m1403m("AppTimeLimitHelper set no app time limit");
            return;
        }
        convertData(list);
        if (AbstractC1102l9.m2273N(listLoadAll)) {
            checkTimeLimit();
            saveData();
        } else if (AbstractC1102l9.m2273N(list)) {
            actionEnableLastData(listLoadAll);
            saveData();
        } else {
            if (C0850bc.m1401k(listLoadAll.toString()).equals(C0850bc.m1401k(this.appTimeLimitInfos.toString()))) {
                C0850bc.m1403m("AppTimeLimitHelper last and new is the same no need check");
                return;
            }
            actionEnableLastData(listLoadAll);
            checkTimeLimit();
            saveData();
        }
    }

    private void handlePhoneStatus(boolean z, List<String> list, List<String> list2) {
        if (AbstractC1102l9.m2273N(list) || !list.contains(LIMIT_USED_PHONE)) {
            return;
        }
        int iM3079z = this.userInfoUtil.m3079z();
        C0850bc.m1403m("AppTimeLimitHelper read isv phone status:" + iM3079z);
        if (iM3079z != -1) {
            C0850bc.m1403m("AppTimeLimitHelper isv control phone status no need handle time limit");
            return;
        }
        C0850bc.m1403m("AppTimeLimitHelper handle phone time limit status:" + z);
        if (!C1219q0.m2524t()) {
            List<String> listM2500B = C1219q0.m2500B();
            if (z) {
                C0850bc.f2294f.mo1304B0(listM2500B);
                this.isDisablePhone = false;
            } else {
                C0850bc.f2294f.mo1326k0(listM2500B);
                this.isDisablePhone = true;
            }
        } else if (z) {
            C0850bc.f2294f.enableSpeech();
            this.isDisablePhone = false;
        } else {
            C0850bc.f2294f.disableSpeech();
            this.isDisablePhone = true;
        }
        if (list2 == null || z) {
            return;
        }
        list2.add(LIMIT_USED_PHONE);
    }

    private void handleSMStatus(boolean z, List<String> list, List<String> list2) {
        if (AbstractC1102l9.m2273N(list) || !list.contains(LIMIT_USED_SMS)) {
            return;
        }
        int iM3011F = this.userInfoUtil.m3011F();
        C0850bc.m1403m("AppTimeLimitHelper read isv  sms status:" + iM3011F);
        if (iM3011F != -1) {
            C0850bc.m1403m("AppTimeLimitHelper isv control sms status no need handle time limit");
            return;
        }
        C0850bc.m1403m("AppTimeLimitHelper handle sms time limit status:" + z);
        if (!C1219q0.m2525u()) {
            List<String> listM2499A = C1219q0.m2499A();
            if (z) {
                C0850bc.f2294f.mo1304B0(listM2499A);
                this.isDisableSMS = false;
            } else {
                C0850bc.f2294f.mo1326k0(listM2499A);
                this.isDisableSMS = true;
            }
        } else if (z) {
            C0850bc.f2294f.mo1322g0();
            this.isDisableSMS = false;
        } else {
            C0850bc.f2294f.mo1315S();
            this.isDisableSMS = true;
        }
        if (list2 == null || z) {
            return;
        }
        list2.add(LIMIT_USED_SMS);
    }

    private void initLocalData() {
        List<AppTimeLimitInfo> listLoadAll = this.mAppTimeLimitDao.loadAll();
        if (!AbstractC1102l9.m2273N(listLoadAll)) {
            for (AppTimeLimitInfo appTimeLimitInfo : listLoadAll) {
                appTimeLimitInfo.setPkgs(AbstractC1102l9.m2277R(appTimeLimitInfo.getPackageNames(), ","));
            }
            this.appTimeLimitInfos.addAll(listLoadAll);
        }
        C0850bc.m1403m("AppTimeLimitHelper init local limit data");
    }

    private void saveData() {
        this.mAppTimeLimitDao.deleteAll();
        this.mAppTimeLimitDao.saveInTx(this.appTimeLimitInfos);
    }

    public void cancelTimer() {
        if (this.timerCountDownTimer != null) {
            this.timerCountDownTimer.cancel();
            this.timerCountDownTimer = null;
        }
    }

    public void checkTimeLimit() {
        ArrayList arrayList = new ArrayList();
        String str = new SimpleDateFormat("HH:mm").format(new Date());
        if (str.equals("00:00")) {
            str = "24:00";
        }
        for (AppTimeLimitInfo appTimeLimitInfo : this.appTimeLimitInfos) {
            String limitTime = getLimitTime(appTimeLimitInfo);
            StringBuilder sbM1769n = C0948f6.m1769n("AppTimeLimitHelper  limit times:", limitTime, " to packagenames:");
            sbM1769n.append(appTimeLimitInfo.getPackageNames());
            C0850bc.m1403m(sbM1769n.toString());
            List<WorkTime> array = JSON.parseArray(limitTime, WorkTime.class);
            boolean z = false;
            if (AbstractC1102l9.m2273N(array)) {
                C1219q0.m2519o(appTimeLimitInfo.getPkgs());
                handlePhoneStatus(false, appTimeLimitInfo.getPkgs(), arrayList);
                handleSMStatus(false, appTimeLimitInfo.getPkgs(), arrayList);
                arrayList.addAll(appTimeLimitInfo.getPkgs());
            } else {
                for (WorkTime workTime : array) {
                    String start = workTime.getStart();
                    String end = workTime.getEnd();
                    if (end.equals("23:59:59")) {
                        end = "24:00";
                    }
                    if (C0850bc.m1391a(str, start) >= 0 && C0850bc.m1391a(end, str) > 0) {
                        z = true;
                    }
                }
                if (z) {
                    C0850bc.f2294f.mo1304B0(appTimeLimitInfo.getPkgs());
                } else {
                    C1219q0.m2519o(appTimeLimitInfo.getPkgs());
                    arrayList.addAll(appTimeLimitInfo.getPkgs());
                }
                handlePhoneStatus(z, appTimeLimitInfo.getPkgs(), arrayList);
                handleSMStatus(z, appTimeLimitInfo.getPkgs(), arrayList);
            }
        }
        if (arrayList.toString().equals(this.lastDisableApps.toString())) {
            return;
        }
        C0850bc.m1403m("AppTimeLimitHelper refresh desktop by time limit");
        C1423y4.m2959F(this.mContext);
        this.lastDisableApps.clear();
        this.lastDisableApps.addAll(arrayList);
    }

    public void checkTimeLimitByScreenOn() {
        this.appTimeLimitInfos.clear();
        initLocalData();
        checkTimeLimit();
    }

    public void clearData() {
        this.appTimeLimitInfos.clear();
        this.mAppTimeLimitDao.deleteAll();
    }

    public boolean getPhoneState() {
        return this.isDisablePhone;
    }

    public boolean getSMSState() {
        return this.isDisableSMS;
    }

    public void handleFromInstalled(String str) {
        StringBuilder sbM1765j = C0948f6.m1765j("AppTimeLimitHelper   already in disabled apps need disable");
        sbM1765j.append(this.lastDisableApps.toString());
        C0850bc.m1403m(sbM1765j.toString());
        if (this.lastDisableApps.contains(str)) {
            C0850bc.m1403m("AppTimeLimitHelper  already in disabled apps need disable");
            if (((ArrayList) C1219q0.m2502D()).contains(str)) {
                return;
            }
            C0850bc.f2294f.mo1320e(str);
        }
    }

    public void request() {
        if (!C1423y4.m3004y()) {
            C0850bc.m1403m("AppTimeLimitHelper   other case no need request");
            return;
        }
        try {
            V2Params v2Params = new V2Params();
            v2Params.setMethod(RequestUrl.METHOD_APPTIMELIMIT);
            Params params = new Params(this.mContext);
            params.setEmail(this.userInfoUtil.m3052k());
            v2Params.setParams(JSON.toJSONString(params));
            C1255rb c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.f3780d = true;
            c1355vb.m2869b(new LTKListResponseListener<AppTimeLimit>(AppTimeLimit.class) { // from class: com.android.launcher3.network.AppTimeLimitHelper.1
                @Override // com.android.launcher3.network.response.LTKListResponseListener
                public void handleResult(List<AppTimeLimit> list) {
                    C0850bc.m1403m("AppTimeLimitHelper   get app time limit  successfully ");
                    AppTimeLimitHelper.this.handleAppTimeLimit(list);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    C0850bc.m1393c("AppTimeLimitHelper  request app time limit failed ");
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    C0850bc.m1393c("AppTimeLimitHelper  request app time limit failed by network ");
                }
            });
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("AppTimeLimitHelper  request app time limit exception "));
        }
    }

    public void startTimerWhenScreenOff() {
        cancelTimer();
        this.timerCountDownTimer = new TimerCountDownTimer(Constants.CLIENT_FLUSH_INTERVAL, 60000L);
        this.timerCountDownTimer.start();
    }

    public AppTimeLimitHelper() {
        this.mContext = GuardSecureApplication.f1640b;
        this.userInfoUtil = C1424y5.b.f4202a;
        this.mHttpCore = new C1255rb();
        this.appTimeLimitInfos = new ArrayList();
        this.lastDisableApps = new ArrayList();
        this.mAppTimeLimitDao = C1297t3.m2715a().f3751c.getAppTimeLimitInfoDao();
        initLocalData();
    }
}
