package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import com.alibaba.fastjson.JSON;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.network.params.ListParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.LocationInfo;
import com.android.launcher3.p027db.model.LocationInfoDao;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1297t3;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LocationHelper {
    public static final String TAG = "LocationHelper ";
    public Context mContext;
    public AMapLocationClient mLocationClient;
    public AMapLocationListener mLocationListener;
    public AMapLocationClientOption mLocationOption;
    public C1424y5 mUserInfoUtil;

    public static class LocationHolder {
        public static final LocationHelper instance = new LocationHelper();
    }

    public static LocationHelper getInstance() {
        return LocationHolder.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLocation(AMapLocation aMapLocation) {
        String str;
        if (aMapLocation != null) {
            if (aMapLocation.getErrorCode() != 0) {
                StringBuilder sbM1765j = C0948f6.m1765j("LocationHelper location Error, ErrCode:");
                sbM1765j.append(aMapLocation.getErrorCode());
                sbM1765j.append(", errInfo:");
                sbM1765j.append(aMapLocation.getErrorInfo());
                C0850bc.m1393c(sbM1765j.toString());
                return;
            }
            C0850bc.m1403m("LocationHelper location sucess");
            try {
                str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(aMapLocation.getTime()));
            } catch (Throwable th) {
                th.printStackTrace();
                str = "";
            }
            StringBuilder sbM1765j2 = C0948f6.m1765j("");
            sbM1765j2.append(aMapLocation.getLatitude());
            String string = sbM1765j2.toString();
            StringBuilder sbM1765j3 = C0948f6.m1765j("");
            sbM1765j3.append(aMapLocation.getLongitude());
            prepareUpload(new LocationInfo(string, sbM1765j3.toString(), aMapLocation.getAddress(), str));
        }
    }

    private void initLocation() {
        AMapLocationClient aMapLocationClient = new AMapLocationClient(this.mContext);
        this.mLocationClient = aMapLocationClient;
        aMapLocationClient.setLocationListener(this.mLocationListener);
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        this.mLocationOption = aMapLocationClientOption;
        aMapLocationClientOption.setLocationMode(AMapLocationClientOption.AMapLocationMode.Hight_Accuracy);
        this.mLocationOption.setOnceLocation(true);
        this.mLocationOption.setOnceLocationLatest(true);
        this.mLocationOption.setLocationCacheEnable(false);
        this.mLocationClient.setLocationOption(this.mLocationOption);
    }

    private void prepareUpload(LocationInfo locationInfo) {
        if (!C1423y4.m3005z()) {
            C0850bc.m1403m("LocationHelper no need upload");
            return;
        }
        String strM3052k = this.mUserInfoUtil.m3052k();
        locationInfo.setEmail(strM3052k);
        locationInfo.setUsername(this.mUserInfoUtil.m3074v());
        LocationInfoDao locationInfoDao = C1297t3.m2715a().f3751c.getLocationInfoDao();
        List<LocationInfo> listLoadAll = locationInfoDao.loadAll();
        if (listLoadAll == null) {
            listLoadAll = new ArrayList<>();
        }
        if (listLoadAll.size() >= 100) {
            C0850bc.m1403m("LocationHelper  db location size too large need clear");
            locationInfoDao.deleteAll();
        }
        listLoadAll.add(locationInfo);
        locationInfoDao.insert(locationInfo);
        uploadLocation(listLoadAll, locationInfoDao, strM3052k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopLoaction() {
        C0850bc.m1403m("LocationHelper location over and stop location server");
        AMapLocationClient aMapLocationClient = this.mLocationClient;
        if (aMapLocationClient != null) {
            aMapLocationClient.stopLocation();
            this.mLocationClient.onDestroy();
        }
    }

    private void uploadLocation(List<LocationInfo> list, final LocationInfoDao locationInfoDao, String str) {
        try {
            ListParams listParams = new ListParams(this.mContext);
            listParams.setEmail(str);
            listParams.setReportlist(list);
            V2Params v2Params = new V2Params();
            v2Params.setParams(JSON.toJSONString(listParams));
            v2Params.setMethod(RequestUrl.UPLOAD_LOCATION_METHOD);
            C1355vb c1355vb = new C1355vb(new C1255rb());
            c1355vb.f3777a = RequestUrl.UPLOAD_EVENT_URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.LocationHelper.2
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    C0850bc.m1403m("LocationHelper  upload location failed");
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    C0850bc.m1403m("LocationHelper  upload location failure");
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    C0850bc.m1403m("LocationHelper  upload location sucess");
                    locationInfoDao.deleteAll();
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void startLocation() {
        initLocation();
        this.mLocationClient.startLocation();
    }

    public LocationHelper() {
        this.mLocationClient = null;
        this.mLocationOption = null;
        this.mLocationListener = new AMapLocationListener() { // from class: com.android.launcher3.network.LocationHelper.1
            @Override // com.amap.api.location.AMapLocationListener
            public void onLocationChanged(AMapLocation aMapLocation) {
                C0850bc.m1403m("LocationHelper on location changed");
                LocationHelper.this.handleLocation(aMapLocation);
                LocationHelper.this.stopLoaction();
            }
        };
        this.mContext = GuardSecureApplication.f1640b;
        this.mUserInfoUtil = C1424y5.b.f4202a;
    }
}
