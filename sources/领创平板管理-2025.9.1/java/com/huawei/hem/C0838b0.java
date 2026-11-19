package com.huawei.hem;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: AFWUtils.java */
/* renamed from: com.huawei.hem.b0 */
/* loaded from: classes.dex */
public class C0838b0 {

    /* renamed from: a */
    public static final Pattern f2266a = Pattern.compile("-?\\d+(\\.\\d+)?");

    /* renamed from: a */
    public static List<String> m1382a(Context context, InterfaceC0864c0 interfaceC0864c0) {
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            if (interfaceC0864c0 != null) {
                List<String> list = interfaceC0864c0.mo1436P().f810b;
                Log.i("AFW_TEST", list.toString());
                for (int i = 0; i < list.size(); i++) {
                    String str2 = list.get(i);
                    if (str2 != null && f2266a.matcher(str2).matches()) {
                        Log.i("AFW_TEST", "iafwService");
                        try {
                            str = context.getPackageManager().getPackagesForUid(Integer.parseInt(list.get(i)))[0];
                        } catch (NullPointerException unused) {
                            str = "";
                        }
                        Log.i("AFW_TEST", str);
                        arrayList.add(str);
                    }
                }
                Log.i("AFW_TEST", list.toString());
                Log.i("AFW_TEST", arrayList.toString());
            } else {
                Log.i("AFW_TEST", "iafwService=null");
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("AFW_TEST", e.toString());
        }
        return arrayList;
    }
}
