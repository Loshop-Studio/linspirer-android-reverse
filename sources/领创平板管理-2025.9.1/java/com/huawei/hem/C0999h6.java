package com.huawei.hem;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.List;

/* compiled from: IMDMImpl.java */
/* renamed from: com.huawei.hem.h6 */
/* loaded from: classes.dex */
public class C0999h6 {

    /* renamed from: a */
    public Context f2813a;

    static {
        new ArrayList();
    }

    public C0999h6(Context context) {
        this.f2813a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public List<String> m1938a() throws IOException {
        List arrayList = new ArrayList();
        try {
            if (!new File("/data/appWhitelist").exists()) {
                return new ArrayList();
            }
            ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream("data/appWhitelist"));
            List list = (List) objectInputStream.readObject();
            try {
                objectInputStream.close();
                return list;
            } catch (Exception e) {
                e = e;
                arrayList = list;
                e.printStackTrace();
                return arrayList;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* renamed from: b */
    public void m1939b() throws ClassNotFoundException {
        String str;
        this.f2813a.sendBroadcast(new Intent("com.boyue.enableBluetooth"));
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || defaultAdapter.isEnabled()) {
            return;
        }
        do {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                str = (String) cls.getMethod("get", String.class).invoke(cls, "persist.sys.by.bluetooth");
            } catch (Exception e) {
                e.printStackTrace();
                str = "";
            }
        } while (!str.equals("enable"));
        defaultAdapter.enable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public List<String> m1940c() throws IOException {
        List arrayList = new ArrayList();
        try {
            if (!new File("/data/whitelist").exists()) {
                return new ArrayList();
            }
            ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream("data/whitelist"));
            List list = (List) objectInputStream.readObject();
            try {
                objectInputStream.close();
                return list;
            } catch (Exception e) {
                e = e;
                arrayList = list;
                e.printStackTrace();
                return arrayList;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
