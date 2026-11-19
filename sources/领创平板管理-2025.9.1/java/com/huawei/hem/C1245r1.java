package com.huawei.hem;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.util.Log;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;

/* compiled from: BOE_API.java */
/* renamed from: com.huawei.hem.r1 */
/* loaded from: classes.dex */
public class C1245r1 {

    /* renamed from: a */
    public static C1245r1 f3594a;

    @TargetApi(23)
    public C1245r1(Context context) {
        Log.v("API", "BOE_API()");
    }

    /* renamed from: a */
    public ArrayList<String> m2647a(Context context) {
        Log.v("API", "GetAppInstallWhiteList");
        String string = Settings.System.getString(context.getContentResolver(), "appWhiteList");
        if (string == null) {
            string = "";
        }
        String[] strArrSplit = string.split(",");
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : strArrSplit) {
            arrayList.add(str);
        }
        Log.v("API", "appList = " + string);
        return arrayList;
    }

    /* renamed from: b */
    public ArrayList<String> m2648b(Context context) {
        Log.v("API", "GetWebWhiteList");
        String string = Settings.System.getString(context.getContentResolver(), "WebWhiteList");
        if (string == null) {
            string = "";
        }
        String[] strArrSplit = string.split(",");
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : strArrSplit) {
            arrayList.add(str);
        }
        Log.v("API", "webList = " + string);
        return arrayList;
    }

    /* renamed from: c */
    public ArrayList<String> m2649c(Context context) {
        Log.v("API", "GetWebWhiteList");
        String string = Settings.System.getString(context.getContentResolver(), "appRulePackageNameList");
        if (string == null) {
            string = "";
        }
        String[] strArrSplit = string.split(",");
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : strArrSplit) {
            arrayList.add(str);
        }
        Log.v("API", "webList = " + string);
        return arrayList;
    }

    /* renamed from: d */
    public void m2650d(Context context, ArrayList<String> arrayList) {
        Log.v("API", "setAppDisable");
        Intent intent = new Intent();
        intent.setAction("com.boe.setApplicationDisable");
        intent.putExtra(Constants.KEY_PACKAGE_NAME, arrayList);
        context.sendBroadcast(intent);
    }

    /* renamed from: e */
    public void m2651e(Context context, ArrayList<String> arrayList) {
        Log.v("API", "setAppEnable");
        Intent intent = new Intent();
        intent.setAction("com.boe.setApplicationEnable");
        intent.putExtra(Constants.KEY_PACKAGE_NAME, arrayList);
        context.sendBroadcast(intent);
    }
}
