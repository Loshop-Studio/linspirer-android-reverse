package com.huawei.hem;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import com.alibaba.fastjson.asm.Label;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: RocoIMDM.java */
/* renamed from: com.huawei.hem.lh */
/* loaded from: classes.dex */
public class RocoDeviceManager {

    /* renamed from: a */
    public Context f3187a;

    /* renamed from: b */
    public ContentResolver f3188b;

    public RocoDeviceManager(Context context) {
        this.f3187a = context;
        this.f3188b = context.getContentResolver();
    }

    /* renamed from: a */
    public List<String> m2316a() {
        String string = Settings.System.getString(this.f3188b, "roco_custom_white_app_list_string");
        ArrayList arrayList = new ArrayList();
        for (String str : string.split(";")) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* renamed from: b */
    public boolean m2317b(List<String> list) {
        Iterator<String> it = list.iterator();
        StringBuffer stringBuffer = new StringBuffer();
        while (it.hasNext()) {
            stringBuffer.append(it.next() + ";");
        }
        if (stringBuffer.length() <= 0) {
            return false;
        }
        Settings.System.putString(this.f3188b, "roco_custom_white_app_list_string", stringBuffer.substring(0, stringBuffer.length() - 1));
        return true;
    }

    /* renamed from: c */
    public List<String> m2318c() {
        String string = Settings.System.getString(this.f3188b, "roco_custom_app_white_url_list_string");
        ArrayList arrayList = new ArrayList();
        for (String str : string.split(",")) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* renamed from: d */
    public void m2319d(long j) throws NumberFormatException {
        String[] strArrSplit = new SimpleDateFormat("HH:mm:ss").format(Long.valueOf(j)).split(":");
        int i = Integer.parseInt(strArrSplit[0]);
        int i2 = Integer.parseInt(strArrSplit[1]);
        Intent intent = new Intent();
        intent.putExtra("hour", i);
        intent.putExtra("minute", i2);
        intent.setAction("roco.change.systemtime");
        this.f3187a.sendBroadcast(intent);
    }

    /* renamed from: e */
    public void m2320e(String str) {
        File file = new File(str);
        if (file.exists()) {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putBoolean("isSilentInstall", true);
            intent.putExtras(bundle);
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            this.f3187a.startActivity(intent);
        }
    }

    /* renamed from: f */
    public void m2321f(String str) {
        if (str.equals("")) {
            return;
        }
        Intent intent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", str, null));
        Bundle bundle = new Bundle();
        bundle.putBoolean("isSilentUninstall", true);
        intent.putExtras(bundle);
        intent.setFlags(276824064);
        this.f3187a.startActivity(intent);
    }

    /* renamed from: g */
    public List<String> m2322g() {
        String string = Settings.System.getString(this.f3188b, "roco_custom_white_url_list_string");
        ArrayList arrayList = new ArrayList();
        for (String str : string.split(",")) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* renamed from: h */
    public boolean m2323h(List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            for (int size = list.size() - 1; size > i; size--) {
                if (list.get(size).equals(list.get(i))) {
                    list.remove(size);
                }
            }
        }
        Iterator<String> it = list.iterator();
        StringBuffer stringBuffer = new StringBuffer();
        while (it.hasNext()) {
            stringBuffer.append(it.next() + ",");
        }
        if (stringBuffer.length() <= 0) {
            return false;
        }
        Settings.System.putString(this.f3188b, "roco_custom_white_url_list_string", stringBuffer.substring(0, stringBuffer.length() - 1));
        Intent intent = new Intent();
        intent.setAction("roco.url.white.list.write");
        this.f3187a.sendBroadcast(intent);
        return true;
    }
}
