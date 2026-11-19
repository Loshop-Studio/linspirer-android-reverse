package com.taobao.accs.data;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.alibaba.sdk.android.error.ErrorCode;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.IAppReceiver;
import com.taobao.accs.base.AccsAbstractDataListener;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.client.C1910a;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.dispatch.IntentDispatch;
import com.taobao.accs.net.AbstractC1940b;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.C1975c;
import com.taobao.accs.utl.UTMini;
import com.taobao.accs.utl.UtilityImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.g */
/* loaded from: classes.dex */
public class C1924g {

    /* renamed from: a */
    public static volatile C1924g f6159a;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:179:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0146  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5575b(android.content.Context r29, com.taobao.accs.net.AbstractC1940b r30, android.content.Intent r31) {
        /*
            Method dump skipped, instructions count: 907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.accs.data.C1924g.m5575b(android.content.Context, com.taobao.accs.net.b, android.content.Intent):void");
    }

    /* renamed from: b */
    public String m5581b() {
        return "com.taobao.accs.data.MsgDistributeService";
    }

    /* renamed from: a */
    public static C1924g m5569a() {
        if (f6159a == null) {
            synchronized (C1924g.class) {
                if (f6159a == null) {
                    f6159a = new C1924g();
                }
            }
        }
        return f6159a;
    }

    /* renamed from: a */
    public static void m5570a(Context context, Intent intent) {
        m5571a(context, null, intent);
    }

    /* renamed from: a */
    public static void m5571a(Context context, AbstractC1940b abstractC1940b, Intent intent) {
        try {
            ThreadPoolExecutorFactory.getScheduledExecutor().execute(new RunnableC1925h(context, abstractC1940b, intent));
        } catch (Throwable th) {
            if (abstractC1940b != null && intent != null) {
                String stringExtra = intent.getStringExtra(Constants.KEY_CONFIG_TAG);
                String stringExtra2 = intent.getStringExtra(Constants.KEY_DATA_ID);
                if (!TextUtils.isEmpty(stringExtra) && !TextUtils.isEmpty(stringExtra2)) {
                    abstractC1940b.m5638b(Message.m5495a(stringExtra2, intent.getStringExtra(Constants.KEY_SERVICE_ID), abstractC1940b.mo5634b((String) null), 3), true);
                }
            }
            ALog.m5727e("MsgDistribute", "distribMessage", th, new Object[0]);
            UTMini uTMini = UTMini.getInstance();
            StringBuilder sbM1765j = CompilerOutline.m1765j("distribMessage");
            sbM1765j.append(th.toString());
            uTMini.commitEvent(66001, "MsgToBuss8", sbM1765j.toString(), 221);
        }
    }

    /* renamed from: a */
    public boolean m5579a(int i, String str) {
        if (i != 100 && !"agooSend".equals(str)) {
            long jM5754c = UtilityImpl.m5754c();
            if (jM5754c != -1 && jM5754c <= 5242880) {
                AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, str, "1", CompilerOutline.m1755M("space low ", jM5754c));
                ALog.m5728e("MsgDistribute", "user space low, don't distribute", "size", Long.valueOf(jM5754c), Constants.KEY_SERVICE_ID, str);
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m5580a(Context context, String str, String str2, Intent intent, ArrayList<IAppReceiver> arrayList) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            String service = null;
            if (arrayList != null) {
                Iterator<IAppReceiver> it = arrayList.iterator();
                while (it.hasNext()) {
                    service = it.next().getService(str);
                    if (!TextUtils.isEmpty(service)) {
                        break;
                    }
                }
            }
            if (TextUtils.isEmpty(service)) {
                service = GlobalClientInfo.getInstance(context).getService(str);
            }
            if (!TextUtils.isEmpty(service) || UtilityImpl.isMainProcess(context)) {
                return false;
            }
            if ("accs".equals(str)) {
                ALog.m5728e("MsgDistribute", "start MsgDistributeService", Constants.KEY_DATA_ID, str2);
            } else {
                ALog.m5729i("MsgDistribute", "start MsgDistributeService", Constants.KEY_DATA_ID, str2);
            }
            intent.setClassName(intent.getPackage(), m5581b());
            IntentDispatch.dispatchIntent(context, intent, m5581b());
            return true;
        } catch (Throwable th) {
            ALog.m5727e("MsgDistribute", "handleMsgInChannelProcess", th, new Object[0]);
            return false;
        }
    }

    /* renamed from: a */
    private void m5572a(Intent intent, String str, int i, String str2, String str3, String str4, ArrayList<IAppReceiver> arrayList, ErrorCode errorCode) {
        int i2;
        int i3;
        if (ALog.isPrintLog(ALog.Level.D)) {
            ALog.m5726d("MsgDistribute", "handleControlMsg", Constants.KEY_CONFIG_TAG, str, Constants.KEY_DATA_ID, str4, Constants.KEY_SERVICE_ID, str3, "command", Integer.valueOf(i), Constants.KEY_ERROR_CODE, errorCode);
            if (arrayList != null) {
                Iterator<IAppReceiver> it = arrayList.iterator();
                while (it.hasNext()) {
                    IAppReceiver next = it.next();
                    Object[] objArr = new Object[2];
                    objArr[0] = "appReceiver";
                    objArr[1] = next == null ? null : next.getClass().getName();
                    ALog.m5726d("MsgDistribute", "handleControlMsg", objArr);
                }
            }
        }
        if (errorCode.getCodeInt() == AccsErrorCode.SUCCESS.getCodeInt() || i == 103 || i == 101) {
            i2 = 2;
            i3 = 3;
        } else {
            i2 = 2;
            i3 = 3;
            ALog.m5728e("MsgDistribute", "handleControlMsg", "command", Integer.valueOf(i), Constants.KEY_ERROR_CODE, errorCode);
        }
        if (arrayList != null) {
            if (i == 1) {
                Object[] objArr2 = new Object[i2];
                objArr2[0] = "code";
                objArr2[1] = errorCode;
                ALog.m5726d("MsgDistribute", "onBindApp", objArr2);
                Iterator<IAppReceiver> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    C1975c.m5776a(errorCode, it2.next(), null);
                }
            } else if (i == i2) {
                Object[] objArr3 = new Object[i2];
                objArr3[0] = "code";
                objArr3[1] = errorCode;
                ALog.m5726d("MsgDistribute", "onUnbindApp", objArr3);
                Iterator<IAppReceiver> it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    C1975c.m5775a(errorCode, it3.next());
                }
            } else if (i == i3) {
                ALog.m5726d("MsgDistribute", "onBindUser", "code", errorCode);
                Iterator<IAppReceiver> it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    C1975c.m5778b(errorCode, it4.next(), str2);
                }
            } else if (i == 4) {
                ALog.m5726d("MsgDistribute", "onUnbindUser", "code", errorCode);
                Iterator<IAppReceiver> it5 = arrayList.iterator();
                while (it5.hasNext()) {
                    C1975c.m5777b(errorCode, it5.next());
                }
            } else if (i != 100) {
                if (i == 101 && TextUtils.isEmpty(str3)) {
                    ALog.m5726d("MsgDistribute", "handleControlMsg serviceId isEmpty", new Object[0]);
                    byte[] byteArrayExtra = intent.getByteArrayExtra(Constants.KEY_DATA);
                    if (byteArrayExtra != null) {
                        ALog.m5726d("MsgDistribute", "onData", "code", errorCode);
                        Iterator<IAppReceiver> it6 = arrayList.iterator();
                        while (it6.hasNext()) {
                            it6.next().onData(str2, str4, byteArrayExtra);
                        }
                    }
                }
            } else if (TextUtils.isEmpty(str3)) {
                ALog.m5726d("MsgDistribute", "handleControlMsg COMMAND_SEND_DATA serviceId isEmpty", new Object[0]);
                ALog.m5726d("MsgDistribute", "onSendData", "code", errorCode);
                Iterator<IAppReceiver> it7 = arrayList.iterator();
                while (it7.hasNext()) {
                    it7.next().onSendData(str4, errorCode.getCodeInt());
                }
            }
        }
        if ((arrayList != null && arrayList.size() != 0) || i == 104 || i == 103) {
            return;
        }
        AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, str3, "1", "appReceiver null return");
        UTMini.getInstance().commitEvent(66001, "MsgToBuss7", CompilerOutline.m1754L("commandId=", i), "serviceId=" + str3 + " errorCode=" + errorCode + " dataId=" + str4, 221);
    }

    /* renamed from: b */
    private boolean m5576b(Context context, Intent intent) {
        return !context.getPackageName().equals(intent.getPackage());
    }

    /* renamed from: a */
    public void m5578a(Context context, AbstractC1940b abstractC1940b, ArrayList<IAppReceiver> arrayList, Intent intent, String str, String str2, int i, ErrorCode errorCode) {
        String service;
        ALog.m5729i("MsgDistribute", "handleBusinessMsg start", Constants.KEY_DATA_ID, str2, Constants.KEY_SERVICE_ID, str, "command", Integer.valueOf(i));
        if (arrayList != null) {
            Iterator<IAppReceiver> it = arrayList.iterator();
            service = null;
            while (it.hasNext()) {
                service = it.next().getService(str);
                if (!TextUtils.isEmpty(service)) {
                    break;
                }
            }
        } else {
            service = null;
        }
        if (TextUtils.isEmpty(service)) {
            service = GlobalClientInfo.getInstance(context).getService(str);
        }
        if (!TextUtils.isEmpty(service)) {
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d("MsgDistribute", "handleBusinessMsg to start service", "className", service);
            }
            intent.setClassName(context, service);
            IntentDispatch.dispatchIntent(context, intent, service);
        } else {
            AccsAbstractDataListener listener = GlobalClientInfo.getInstance(context).getListener(str);
            if (listener != null) {
                if (ALog.isPrintLog(ALog.Level.D)) {
                    ALog.m5726d("MsgDistribute", "handleBusinessMsg getListener not null", new Object[0]);
                }
                AccsAbstractDataListener.onReceiveData(context, intent, listener);
            } else {
                if (abstractC1940b != null) {
                    abstractC1940b.m5638b(Message.m5495a(str2, str, abstractC1940b.mo5634b((String) null), 0), true);
                }
                ALog.m5728e("MsgDistribute", "handleBusinessMsg getListener also null", new Object[0]);
                AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, str, "1", "service is null");
            }
        }
        UTMini.getInstance().commitEvent(66001, "MsgToBuss", CompilerOutline.m1754L("commandId=", i), "serviceId=" + str + " errorCode=" + errorCode + " dataId=" + str2, 221);
        StringBuilder sb = new StringBuilder();
        sb.append("2commandId=");
        sb.append(i);
        sb.append("serviceId=");
        sb.append(str);
        AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_TO_BUSS, sb.toString(), 0.0d);
    }

    /* renamed from: a */
    public void m5577a(Context context, Intent intent, int i, ErrorCode errorCode) {
        ALog.m5729i("MsgDistribute", "handBroadCastMsg", "command", Integer.valueOf(i));
        HashMap map = new HashMap();
        ArrayList<IAppReceiver> arrayListM5474b = C1910a.m5471a().m5474b();
        if (arrayListM5474b != null) {
            Iterator<IAppReceiver> it = arrayListM5474b.iterator();
            while (it.hasNext()) {
                Map<String, String> allServices = it.next().getAllServices();
                if (allServices != null) {
                    map.putAll(allServices);
                }
            }
        }
        if (i != 103) {
            if (i == 104) {
                for (String str : map.keySet()) {
                    String service = (String) map.get(str);
                    if (TextUtils.isEmpty(service)) {
                        service = GlobalClientInfo.getInstance(context).getService(str);
                    }
                    if (!TextUtils.isEmpty(service)) {
                        intent.setClassName(context, service);
                        IntentDispatch.dispatchIntent(context, intent, service);
                    }
                }
                return;
            }
            if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5 && i != 6) {
                ALog.m5732w("MsgDistribute", CompilerOutline.m1754L("handBroadCastMsg not handled command ", i), new Object[0]);
                return;
            } else {
                ALog.m5726d("MsgDistribute", CompilerOutline.m1754L("handBroadCastMsg not handled command ", i), new Object[0]);
                return;
            }
        }
        for (String str2 : map.keySet()) {
            if ("accs".equals(str2) || "windvane".equals(str2) || "motu-remote".equals(str2)) {
                String service2 = (String) map.get(str2);
                if (TextUtils.isEmpty(service2)) {
                    service2 = GlobalClientInfo.getInstance(context).getService(str2);
                }
                if (!TextUtils.isEmpty(service2)) {
                    intent.setClassName(context, service2);
                    IntentDispatch.dispatchIntent(context, intent, service2);
                }
            }
        }
        boolean booleanExtra = intent.getBooleanExtra(Constants.KEY_CONNECT_AVAILABLE, false);
        String stringExtra = intent.getStringExtra(Constants.KEY_HOST);
        boolean booleanExtra2 = intent.getBooleanExtra(Constants.KEY_TYPE_INAPP, false);
        boolean booleanExtra3 = intent.getBooleanExtra(Constants.KEY_CENTER_HOST, false);
        TaoBaseService.ConnectInfo connectInfo = null;
        if (!TextUtils.isEmpty(stringExtra)) {
            if (booleanExtra) {
                connectInfo = new TaoBaseService.ConnectInfo(stringExtra, booleanExtra2, booleanExtra3);
            } else {
                ALog.m5728e("MsgDistribute", "InAppConnection Not Available ", BaseMonitor.COUNT_ERROR, errorCode);
                connectInfo = new TaoBaseService.ConnectInfo(stringExtra, booleanExtra2, booleanExtra3, errorCode.getCodeInt(), errorCode.getMsg());
            }
            connectInfo.connected = booleanExtra;
        }
        if (connectInfo != null) {
            ALog.m5726d("MsgDistribute", "handBroadCastMsg ACTION_CONNECT_INFO", connectInfo);
            Intent intent2 = new Intent(Constants.ACTION_CONNECT_INFO);
            intent2.setPackage(context.getPackageName());
            intent2.putExtra(Constants.KEY_CONNECT_INFO, connectInfo);
            context.sendBroadcast(intent2, context.getPackageName() + ".ACCS");
            return;
        }
        ALog.m5728e("MsgDistribute", "handBroadCastMsg connect info null, host empty", new Object[0]);
    }

    /* renamed from: a */
    private boolean m5574a(Intent intent) {
        boolean booleanExtra = intent.getBooleanExtra("routingAck", false);
        intent.getBooleanExtra("routingMsg", false);
        return booleanExtra;
    }
}
