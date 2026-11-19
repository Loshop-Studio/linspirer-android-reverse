package com.taobao.agoo;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.taobao.accs.utl.ALog;
import java.util.ArrayList;

/* compiled from: Taobao */
/* renamed from: com.taobao.agoo.b */
/* loaded from: classes.dex */
public class C2006b {
    public static final String TAG = "LocalStorage";

    /* renamed from: a */
    public static void m5821a(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str) || context == null) {
            ALog.m5726d(TAG, "saveAliasToken input invalid", new Object[0]);
            return;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        if (TextUtils.isEmpty(str2)) {
            editorEdit.remove(m5822b(str));
            String string = defaultSharedPreferences.getString("alicloud-third-push-alias-list", "");
            String strM5819a = m5819a(str);
            if (string.contains(strM5819a)) {
                editorEdit.putString("alicloud-third-push-alias-list", string.replace(strM5819a, ""));
            }
        } else {
            editorEdit.putString(m5822b(str), str2);
            String string2 = defaultSharedPreferences.getString("alicloud-third-push-alias-list", "");
            String strM5819a2 = m5819a(str);
            if (!string2.contains(strM5819a2)) {
                editorEdit.putString("alicloud-third-push-alias-list", string2 + strM5819a2);
            }
        }
        editorEdit.apply();
    }

    /* renamed from: b */
    public static String m5822b(String str) {
        return C0948f6.m1760e("alicloud-third-push-pat-", str);
    }

    /* renamed from: a */
    public static String m5819a(String str) {
        return (str == null || str.isEmpty()) ? "" : C0948f6.m1761f("#&#", str, "#&#");
    }

    /* renamed from: a */
    public static String m5818a(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            return PreferenceManager.getDefaultSharedPreferences(context).getString(m5822b(str), null);
        }
        ALog.m5726d(TAG, "getAliasToken input invalid", new Object[0]);
        return null;
    }

    /* renamed from: a */
    public static ArrayList<String> m5820a(Context context) {
        String[] strArrSplit = PreferenceManager.getDefaultSharedPreferences(context).getString("alicloud-third-push-alias-list", "").split("#&#");
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < strArrSplit.length; i++) {
            if (strArrSplit[i] != null && !strArrSplit[i].isEmpty()) {
                arrayList.add(strArrSplit[i]);
            }
        }
        return arrayList;
    }
}
