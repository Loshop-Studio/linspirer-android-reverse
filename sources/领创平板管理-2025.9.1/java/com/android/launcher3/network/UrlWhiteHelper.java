package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.network.params.Params;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKListResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.DeskSPF;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.DeviceTypeUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HttpCore;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.license.HemLicenseManager;
import com.huawei.hem.license.HemLicenseStatusListener;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class UrlWhiteHelper {
    public static final String TAG = "UrlWhiteHelper ";
    public List<String> defaultUrls;
    public Context mContext;
    public HttpCore mHttpCore;
    public UserInfoUtil userInfoUtil;

    public static class UrlWhiteHolder {
        public static final UrlWhiteHelper instance = new UrlWhiteHelper();
    }

    private void checkHemActive() {
        if (LTKDateUtil.f2294f.mo2066k()) {
            return;
        }
        HemLicenseManager hemLicenseManager = HemLicenseManager.getInstance(this.mContext);
        hemLicenseManager.setStatusListener(new HemLicenseStatusListener() { // from class: com.huawei.hem.e5
            @Override // com.huawei.hem.license.HemLicenseStatusListener
            public final void onStatus(int i, String str) {
                LTKDateUtil.m1403m("UrlWhiteHelper  -- hem msg = " + str + " -- msgCode = " + i);
            }
        });
        hemLicenseManager.activeLicense();
    }

    private List<String> convertIPs(List<String> list) {
        if (!DeviceTypeUtil.m1528u(LauncherDeviceUtils.m1589f())) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (String strM1762g : list) {
            if (strM1762g.endsWith(".0/24")) {
                String[] strArrSplit = strM1762g.split("\\.");
                StringBuilder sb = new StringBuilder();
                sb.append(strArrSplit[0]);
                sb.append(".");
                sb.append(strArrSplit[1]);
                sb.append(".");
                sb.append(strArrSplit[2]);
                sb.append(".0-");
                sb.append(strArrSplit[0]);
                sb.append(".");
                sb.append(strArrSplit[1]);
                sb.append(".");
                strM1762g = CompilerOutline.m1762g(sb, strArrSplit[2], ".255");
            } else if (strM1762g.endsWith(".0.0/16")) {
                String[] strArrSplit2 = strM1762g.split("\\.");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(strArrSplit2[0]);
                sb2.append(".");
                sb2.append(strArrSplit2[1]);
                sb2.append(".0.0-");
                sb2.append(strArrSplit2[0]);
                sb2.append(".");
                strM1762g = CompilerOutline.m1762g(sb2, strArrSplit2[1], ".255.255");
            }
            arrayList.add(strM1762g);
        }
        return arrayList;
    }

    public static UrlWhiteHelper getInstance() {
        return UrlWhiteHolder.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleByNoNeedRequest() throws NoSuchAlgorithmException {
        LTKDateUtil.m1403m("UrlWhiteHelper write url by no need request from server or request error");
        UserInfoUtil c1424y5 = this.userInfoUtil;
        if (c1424y5.f4135I == null) {
            c1424y5.f4135I = c1424y5.f4130D.f2199a.getString("server_url_white_list", "");
        }
        prepareToWriteUrls(AbstractC1102l9.m2277R(c1424y5.f4135I, ","));
    }

    private void initDefaultUrls() {
        this.defaultUrls.add("download.ndwill.com.w.kunlunea.com");
        this.defaultUrls.add("appstore.ndwill.com.w.kunlunea.com");
        this.defaultUrls.add("appstore.ndwill.com");
        this.defaultUrls.add("ndwill.com");
        this.defaultUrls.add("linspirer.com");
        this.defaultUrls.add("60.205.182.110");
        this.defaultUrls.add("ip.taobao.com");
        this.defaultUrls.add("cgicol.amap.com");
        this.defaultUrls.add("apilocate.amap.com");
        this.defaultUrls.add("apiinit.amap.com");
        this.defaultUrls.add("restapi.amap.com");
        this.defaultUrls.add("logs.amap.com");
        this.defaultUrls.add("mpush-api.aliyun.com");
        this.defaultUrls.add("acs4public.m.taobao.com");
        this.defaultUrls.add("accscdn4public.m.taobao.com");
        this.defaultUrls.add("msgacs.cn-zhangjiakou.aliyuncs.com");
        this.defaultUrls.add("jmacs.cn-zhangjiakou.aliyuncs.com");
        this.defaultUrls.add("192.168.0.0/16");
        this.defaultUrls.add("60.205.86.234");
        this.defaultUrls.add("60.205.176.16");
        this.defaultUrls.add("47.95.50.184");
        this.defaultUrls.add("hshh.org");
        this.defaultUrls.add("pool.ntp.org");
        this.defaultUrls.add("adups.cn");
        this.defaultUrls.add("adups.com");
        this.defaultUrls.add("mayitek.com");
        this.defaultUrls.add("ota.lenovo.com");
        this.defaultUrls.add("ota-cdn.lenovo.com");
        this.defaultUrls.add("ziyacloud.com");
        this.defaultUrls.add("asia.pool.ntp.org");
        this.defaultUrls.add("mdmconsole.smartedu.lenovo.com");
        this.defaultUrls.add("redstone.net.cn");
        this.defaultUrls.add("update.platform.hihonorcloud.com");
        this.defaultUrls.add("ntp3.aliyun.com");
        this.defaultUrls.add("2.android.pool.ntp.org");
        this.defaultUrls.add("tensafe.com");
        this.defaultUrls.add("log.aliyuncs.com");
        this.defaultUrls.add("connectivitycheck.platform.hicloud.com");
        this.defaultUrls.add("hemmdm-drcn.op.dbankcloud.com");
        this.defaultUrls.add("contentcenter-drcn.dbankcdn.com");
        this.defaultUrls.add("hem2c-drcn.op.dbankcloud.com");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareToWriteUrls(List<String> list) throws NoSuchAlgorithmException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("zyyx.cc");
        arrayList2.add("zykj.org");
        if (!AbstractC1102l9.m2273N(arrayList2)) {
            arrayList.addAll(arrayList2);
        }
        arrayList.addAll(this.defaultUrls);
        arrayList.addAll(list);
        String strM3068s = this.userInfoUtil.m3068s();
        if (!TextUtils.isEmpty(strM3068s)) {
            arrayList.addAll(AbstractC1102l9.m2277R(strM3068s, ","));
        }
        String strM1401k = LTKDateUtil.m1401k(arrayList.toString());
        UserInfoUtil c1424y5 = this.userInfoUtil;
        if (c1424y5.f4192t0 == null) {
            c1424y5.f4192t0 = c1424y5.f4130D.f2199a.getString("total_url_md5", null);
        }
        String str = c1424y5.f4192t0;
        if (!TextUtils.isEmpty(strM1401k) && !TextUtils.isEmpty(str) && strM1401k.equals(str)) {
            LTKDateUtil.m1403m("UrlWhiteHelper  white url are same no need write to system .");
            return;
        }
        writeUrls(convertIPs(arrayList));
        UserInfoUtil c1424y52 = this.userInfoUtil;
        String string = list.toString();
        if (c1424y52.f4135I != string) {
            c1424y52.f4135I = string;
            DeskSPF c0824ac = c1424y52.f4130D;
            c0824ac.f2200b.putString("server_url_white_list", string);
            c0824ac.f2200b.commit();
        }
        UserInfoUtil c1424y53 = this.userInfoUtil;
        c1424y53.f4192t0 = strM1401k;
        DeskSPF c0824ac2 = c1424y53.f4130D;
        c0824ac2.f2200b.putString("total_url_md5", strM1401k);
        c0824ac2.f2200b.commit();
    }

    private void writeUrls(List<String> list) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("UrlWhiteHelper  需要关注的日志，网址白名单是否包含空格和特殊符号：");
        sbM1765j.append(AbstractC1102l9.m2273N(list) ? null : list.toString());
        LTKDateUtil.m1393c(sbM1765j.toString());
        LTKDateUtil.f2294f.mo1316V(list);
    }

    public List<String> getLspDefaultUrl() {
        ArrayList arrayList = new ArrayList();
        if (!AbstractC1102l9.m2273N(this.defaultUrls)) {
            arrayList.addAll(this.defaultUrls);
        }
        return arrayList;
    }

    public void request() throws NoSuchAlgorithmException {
        if (!LauncherMenuHelper.m3004y()) {
            LTKDateUtil.m1403m("UrlWhiteHelper  other case no need request");
            handleByNoNeedRequest();
            return;
        }
        checkHemActive();
        try {
            V2Params v2Params = new V2Params();
            v2Params.setMethod(RequestUrl.WHITE_URL_METHOD);
            Params params = new Params(this.mContext);
            params.setEmail(this.userInfoUtil.m3052k());
            v2Params.setParams(JSON.toJSONString(params));
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.f3780d = true;
            c1355vb.m2869b(new LTKListResponseListener<String>(String.class) { // from class: com.android.launcher3.network.UrlWhiteHelper.1
                @Override // com.android.launcher3.network.response.LTKListResponseListener
                public void handleResult(List<String> list) throws NoSuchAlgorithmException {
                    LTKDateUtil.m1403m("UrlWhiteHelper get server url successfully ");
                    UrlWhiteHelper.this.prepareToWriteUrls(list);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) throws NoSuchAlgorithmException {
                    LTKDateUtil.m1393c("UrlWhiteHelper  request url white failed ");
                    ExceptionHandler.handleException(UrlWhiteHelper.this.mContext, response, true, true);
                    UrlWhiteHelper.this.handleByNoNeedRequest();
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) throws NoSuchAlgorithmException {
                    LTKDateUtil.m1393c("UrlWhiteHelper request url white failed by network ");
                    UrlWhiteHelper.this.handleByNoNeedRequest();
                }
            });
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("UrlWhiteHelper request white url exception "));
            handleByNoNeedRequest();
        }
    }

    public void writeUrlFromLocal() {
        LTKDateUtil.m1403m("UrlWhiteHelper application init must write white url");
        if (this.userInfoUtil.m3056m() != 1 && !this.userInfoUtil.m3023R()) {
            request();
        } else {
            LTKDateUtil.m1403m("UrlWhiteHelper disable firewall need clear white urls or device is release control");
            writeUrls(new ArrayList());
        }
    }

    public UrlWhiteHelper() {
        this.mContext = GuardSecureApplication.f1640b;
        this.userInfoUtil = UserInfoUtil.b.f4202a;
        this.defaultUrls = new ArrayList();
        this.mHttpCore = new HttpCore();
        initDefaultUrls();
    }
}
