package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。

import android.app.AlarmManager;
import android.content.Context;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.R;
import com.android.launcher3.network.params.SynchronizeTimeParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.view.DialogUtil;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1424y5;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class SynchronizeTimeUtil {
    public static String TAG = "SynchronizeTimeUtil ";
    public static String TIMEZONE = "Asia/Shanghai";
    public static long lastOperateTime;

    public static void pullSynchronizeTime(final Context context, final boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - lastOperateTime <= 30000) {
            return;
        }
        lastOperateTime = jCurrentTimeMillis;
        if (C1424y5.b.f4202a.m3023R()) {
            return;
        }
        try {
            if (!TIMEZONE.equals(TimeZone.getDefault().getID())) {
                ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setTimeZone(TIMEZONE);
                C0850bc.m1403m("sync time zone Asia/Shanghai");
            }
        } catch (Throwable th) {
            C0850bc.m1393c(TAG + "---set time zone error:" + th.getMessage());
        }
        if (z) {
            DialogUtil.showDialog(context, context.getResources().getString(R.string.sync_timeing));
        }
        try {
            V2Params v2Params = new V2Params();
            SynchronizeTimeParams synchronizeTimeParams = new SynchronizeTimeParams(context);
            v2Params.setMethod(RequestUrl.DEVICE_UPDATE_ONLINE_TIME);
            v2Params.setParams(JSON.toJSONString(synchronizeTimeParams));
            C1355vb c1355vb = new C1355vb(new C1255rb());
            c1355vb.f3777a = RequestUrl.HTTP_URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<String>(String.class) { // from class: com.android.launcher3.network.SynchronizeTimeUtil.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    DialogUtil.hideDialog();
                    ExceptionHandler.handleException(context, response, true, false);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    DialogUtil.hideDialog();
                    ExceptionHandler.handleException(context, obj, true, false);
                }

                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(String str) {
                    C0850bc.m1403m(SynchronizeTimeUtil.TAG + " -- pullSynchronizeTime successfully .");
                    DialogUtil.hideDialog();
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    try {
                        Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str);
                        C0850bc.m1403m(SynchronizeTimeUtil.TAG + " -- 写入设备时间: " + date.getTime());
                        boolean zMo1312N = C0850bc.f2294f.mo1312N(date.getTime());
                        C1424y5 c1424y5 = C1424y5.b.f4202a;
                        if (c1424y5.f4136J != 1) {
                            c1424y5.f4136J = 1;
                            C0824ac c0824ac = c1424y5.f4130D;
                            c0824ac.f2200b.putInt("synchronize_time", 1);
                            c0824ac.f2200b.commit();
                        }
                        if (z) {
                            if (zMo1312N) {
                                C0850bc.m1415y(context, R.string.sync_time_finish);
                            } else {
                                C0850bc.m1415y(context, R.string.hw_sync_time_finish);
                            }
                        }
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }
            });
        } catch (Exception e) {
            DialogUtil.hideDialog();
            C0850bc.m1413w(context, context.getString(R.string.network_error_note), 0);
            C0850bc.m1393c(TAG + " -- pullSynchronizeTime error: " + e.getMessage());
        }
    }

    public static void pullSynchronizeTimeBoolean(Context context) {
        C1424y5 c1424y5 = C1424y5.b.f4202a;
        if (c1424y5.f4136J == 0) {
            c1424y5.f4136J = c1424y5.f4130D.f2199a.getInt("synchronize_time", 0);
        }
        if (c1424y5.f4136J == 0) {
            pullSynchronizeTime(context, false);
        }
    }
}
