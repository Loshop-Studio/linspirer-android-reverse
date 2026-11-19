package com.android.launcher3.receiver;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.support.v7.widget.TooltipCompatHandler;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.model.PvList;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.DeviceTypeUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class UsbReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public void m1283a() throws InterruptedException {
        LTKDateUtil.m1403m("UsbReceiver --cancelMount starting");
        try {
            Thread.sleep(TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (!DeviceTypeUtil.m1524q()) {
            LTKDateUtil.f2294f.mo2078v();
            return;
        }
        LTKDateUtil.f2294f.disableOTG();
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        LTKDateUtil.f2294f.enableOTG();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws InterruptedException {
        if (LauncherMenuHelper.m2954A(intent)) {
            return;
        }
        String action = intent.getAction();
        if (!"android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action)) {
            if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action)) {
                LTKDateUtil.m1403m("UsbReceiver  receiver otg detached");
                return;
            }
            return;
        }
        LTKDateUtil.m1403m("UsbReceiver  receiver otg attached");
        LTKDateUtil.m1403m("UsbReceiver --detectUsbDeviceWithUsbManager starting");
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        if (c1424y5.m3076w() == 0) {
            LTKDateUtil.m1403m("UsbReceiver otg is not allowed to used");
            m1283a();
            return;
        }
        if (TextUtils.isEmpty(c1424y5.f4158c0)) {
            c1424y5.f4158c0 = c1424y5.f4130D.f2199a.getString("pid_vid", null);
        }
        String str = c1424y5.f4158c0;
        if (TextUtils.isEmpty(str)) {
            LTKDateUtil.m1403m("UsbReceiver all otg allow to used");
            return;
        }
        List<PvList> array = JSON.parseArray(str, PvList.class);
        HashMap<String, UsbDevice> deviceList = ((UsbManager) context.getSystemService("usb")).getDeviceList();
        if (deviceList == null || deviceList.size() <= 0) {
            LTKDateUtil.m1403m("UsbReceiver --usblist is null");
            return;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("UsbReceiver --deviceHashMap size:");
        sbM1765j.append(deviceList.entrySet().size());
        LTKDateUtil.m1403m(sbM1765j.toString());
        Iterator<Map.Entry<String, UsbDevice>> it = deviceList.entrySet().iterator();
        while (it.hasNext()) {
            UsbDevice value = it.next().getValue();
            int productId = value.getProductId();
            int vendorId = value.getVendorId();
            LTKDateUtil.m1403m("UsbReceiver --pid:" + productId + ",vid:" + vendorId);
            if (!AbstractC1102l9.m2273N(array)) {
                for (PvList pvList : array) {
                    if (vendorId == pvList.getVid() && (pvList.getPid() == productId || pvList.getPid() == 0)) {
                        LTKDateUtil.m1403m("UsbReceiver  otg device allowd to used");
                        break;
                    }
                }
                m1283a();
            }
        }
    }
}
