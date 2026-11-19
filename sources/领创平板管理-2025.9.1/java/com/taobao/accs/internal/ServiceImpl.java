package com.taobao.accs.internal;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.support.v4.app.Person;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.IChannelInit;
import com.taobao.accs.client.AdapterGlobalClientInfo;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.data.C1924g;
import com.taobao.accs.data.Message;
import com.taobao.accs.net.AbstractC1940b;
import com.taobao.accs.net.C1961w;
import com.taobao.accs.p072ut.p073a.C1967c;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.C1978f;
import com.taobao.accs.utl.UTMini;
import com.taobao.accs.utl.UtilityImpl;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.android.agoo.message.MessageService;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ServiceImpl extends AbstractC1931d {

    /* renamed from: b */
    public Service f6173b;

    /* renamed from: c */
    public Context f6174c;

    /* renamed from: d */
    public long f6175d;

    /* renamed from: e */
    public String f6176e;

    public ServiceImpl(Service service) {
        super(service);
        this.f6173b = null;
        this.f6176e = "unknown";
        this.f6173b = service;
        this.f6174c = service.getApplicationContext();
    }

    /* renamed from: b */
    private void m5600b(Intent intent) {
        AbstractC1940b abstractC1940b;
        Message.ReqType reqType;
        URL url;
        Message messageM5488a;
        Message messageM5492a;
        int intExtra = intent.getIntExtra("command", -1);
        ALog.m5729i("ServiceImpl", "handleCommand", "command", Integer.valueOf(intExtra));
        String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
        String stringExtra2 = intent.getStringExtra(Constants.KEY_SERVICE_ID);
        String stringExtra3 = intent.getStringExtra(Constants.KEY_USER_ID);
        String stringExtra4 = intent.getStringExtra(Constants.KEY_APP_KEY);
        String stringExtra5 = intent.getStringExtra(Constants.KEY_CONFIG_TAG);
        String stringExtra6 = intent.getStringExtra(Constants.KEY_TTID);
        intent.getStringExtra("sid");
        intent.getStringExtra(Constants.KEY_ANTI_BRUSH_COOKIE);
        if (intExtra == 201) {
            m5597a(Message.m5496a(true, 0), true);
            m5602d();
        }
        if (intExtra <= 0 || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        AbstractC1940b abstractC1940bM5605a = AbstractC1931d.m5605a(this.f6174c, stringExtra5, true);
        if (abstractC1940bM5605a == null) {
            ALog.m5728e("ServiceImpl", "no connection", Constants.KEY_CONFIG_TAG, stringExtra5, "command", Integer.valueOf(intExtra));
            return;
        }
        abstractC1940bM5605a.mo5625a();
        if (intExtra != 1) {
            abstractC1940b = abstractC1940bM5605a;
            if (intExtra == 2) {
                ALog.m5728e("ServiceImpl", "onHostStartCommand COMMAND_UNBIND_APP", new Object[0]);
                if (abstractC1940b.m5647j().m5482e(stringExtra)) {
                    Message messageM5490a = Message.m5490a(abstractC1940b, stringExtra);
                    ALog.m5729i("ServiceImpl", CompilerOutline.m1760e(stringExtra, " isAppUnbinded"), new Object[0]);
                    abstractC1940b.m5627a(messageM5490a, AccsErrorCode.SUCCESS);
                    return;
                }
            } else if (intExtra == 5) {
                messageM5492a = Message.m5494a(stringExtra, stringExtra2);
            } else if (intExtra == 6) {
                messageM5492a = Message.m5503b(stringExtra, stringExtra2);
            } else if (intExtra == 3) {
                messageM5492a = Message.m5505c(stringExtra, stringExtra3);
            } else if (intExtra == 4) {
                messageM5492a = Message.m5492a(stringExtra);
            } else if (intExtra == 100) {
                byte[] byteArrayExtra = intent.getByteArrayExtra(Constants.KEY_DATA);
                String stringExtra7 = intent.getStringExtra(Constants.KEY_DATA_ID);
                String stringExtra8 = intent.getStringExtra("target");
                String stringExtra9 = intent.getStringExtra(Constants.KEY_BUSINESSID);
                String stringExtra10 = intent.getStringExtra(Constants.KEY_EXT_TAG);
                try {
                    reqType = (Message.ReqType) intent.getSerializableExtra(Constants.KEY_SEND_TYPE);
                } catch (Exception unused) {
                    reqType = null;
                }
                if (byteArrayExtra != null) {
                    try {
                        url = new URL("https://" + ((C1961w) abstractC1940b).m5708r());
                    } catch (Exception unused2) {
                        url = null;
                    }
                    ACCSManager.AccsRequest accsRequest = new ACCSManager.AccsRequest(stringExtra3, stringExtra2, byteArrayExtra, stringExtra7, stringExtra8, url, stringExtra9);
                    accsRequest.setTag(stringExtra10);
                    if (reqType == null) {
                        messageM5488a = Message.m5487a(abstractC1940b, this.f6174c, stringExtra, accsRequest, false);
                    } else if (reqType == Message.ReqType.REQ) {
                        messageM5488a = Message.m5488a(abstractC1940b, this.f6174c, stringExtra, Constants.TARGET_SERVICE_PRE, accsRequest, false);
                    }
                    messageM5492a = messageM5488a;
                }
            } else if (intExtra == 106) {
                intent.setAction(Constants.ACTION_RECEIVE);
                intent.putExtra("command", -1);
                C1924g.m5570a(this.f6174c, intent);
                return;
            }
            messageM5492a = null;
        } else {
            if (!stringExtra.equals(this.f6174c.getPackageName())) {
                ALog.m5728e("ServiceImpl", "handleCommand bindapp pkg error", new Object[0]);
                return;
            }
            abstractC1940b = abstractC1940bM5605a;
            messageM5492a = Message.m5484a(this.f6174c, stringExtra5, stringExtra4, intent.getStringExtra("app_sercet"), stringExtra, stringExtra6, intent.getStringExtra("appVersion"));
            abstractC1940b.f6209a = stringExtra6;
            UtilityImpl.m5762e(this.f6174c, stringExtra4);
            if (abstractC1940b.m5647j().m5481d(stringExtra) && !intent.getBooleanExtra(Constants.KEY_FOUCE_BIND, false)) {
                ALog.m5729i("ServiceImpl", CompilerOutline.m1760e(stringExtra, " isAppBinded"), new Object[0]);
                abstractC1940b.m5627a(messageM5492a, AccsErrorCode.SUCCESS);
                return;
            }
        }
        if (messageM5492a == null) {
            ALog.m5728e("ServiceImpl", "message is null", new Object[0]);
            abstractC1940b.m5627a(Message.m5493a(stringExtra, intExtra), AccsErrorCode.PARAMETER_ERROR);
        } else {
            ALog.m5726d("ServiceImpl", "try send message", new Object[0]);
            if (messageM5492a.m5516e() != null) {
                messageM5492a.m5516e().onSend();
            }
            abstractC1940b.m5638b(messageM5492a, true);
        }
    }

    /* renamed from: c */
    private void m5601c() {
        ConcurrentHashMap<String, AbstractC1940b> concurrentHashMap = AbstractC1931d.f6183a;
        if (concurrentHashMap == null || concurrentHashMap.size() == 0) {
            return;
        }
        Iterator<Map.Entry<String, AbstractC1940b>> it = AbstractC1931d.f6183a.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().mo5635b();
        }
    }

    /* renamed from: d */
    private void m5602d() {
        ConcurrentHashMap<String, AbstractC1940b> concurrentHashMap = AbstractC1931d.f6183a;
        if (concurrentHashMap == null || concurrentHashMap.size() == 0) {
            return;
        }
        Iterator<Map.Entry<String, AbstractC1940b>> it = AbstractC1931d.f6183a.entrySet().iterator();
        while (it.hasNext()) {
            C1967c c1967cMo5639c = it.next().getValue().mo5639c();
            if (c1967cMo5639c != null) {
                c1967cMo5639c.f6341h = this.f6175d;
                c1967cMo5639c.m5719a();
            }
        }
    }

    /* renamed from: e */
    private void m5603e() {
        ConcurrentHashMap<String, AbstractC1940b> concurrentHashMap = AbstractC1931d.f6183a;
        if (concurrentHashMap == null || concurrentHashMap.size() == 0) {
            return;
        }
        Iterator<Map.Entry<String, AbstractC1940b>> it = AbstractC1931d.f6183a.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().mo5642e();
        }
    }

    @Override // com.taobao.accs.internal.AbstractC1931d
    /* renamed from: a */
    public int mo5604a(Intent intent) {
        String action;
        Bundle extras;
        int i = 2;
        if (ALog.isPrintLog(ALog.Level.I)) {
            ALog.m5729i("ServiceImpl", "onHostStartCommand", "intent", intent);
        }
        try {
            if (ALog.isPrintLog(ALog.Level.D) && intent != null && (extras = intent.getExtras()) != null) {
                for (String str : extras.keySet()) {
                    ALog.m5726d("ServiceImpl", "onHostStartCommand", Person.KEY_KEY, str, " value", extras.get(str));
                }
            }
            int iM5782c = C1978f.m5782c();
            if (iM5782c > 3) {
                try {
                    ALog.m5728e("ServiceImpl", "onHostStartCommand load SO fail 4 times, don't auto restart", new Object[0]);
                    AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_SOFAIL, UtilityImpl.m5736a(iM5782c), 0.0d);
                } catch (Throwable th) {
                    th = th;
                    try {
                        ALog.m5727e("ServiceImpl", "onHostStartCommand", th, new Object[0]);
                        return i;
                    } finally {
                        AdapterGlobalClientInfo.mStartServiceTimes.incrementAndGet();
                    }
                }
            } else {
                i = 1;
            }
            action = intent == null ? null : intent.getAction();
        } catch (Throwable th2) {
            th = th2;
            i = 1;
        }
        if (!TextUtils.isEmpty(action)) {
            m5596a(intent, action);
            return i;
        }
        m5599b();
        m5598a(false, false);
        return i;
    }

    @Override // com.taobao.accs.internal.AbstractC1931d, com.taobao.accs.base.IBaseService
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.taobao.accs.internal.AbstractC1931d, com.taobao.accs.base.IBaseService
    public void onCreate() {
        super.onCreate();
        m5594a();
    }

    @Override // com.taobao.accs.internal.AbstractC1931d, com.taobao.accs.base.IBaseService
    public void onDestroy() {
        super.onDestroy();
        ALog.m5728e("ServiceImpl", "Service onDestroy", new Object[0]);
        UtilityImpl.m5744a(this.f6174c, Constants.SP_KEY_SERVICE_END, System.currentTimeMillis());
        this.f6173b = null;
        this.f6174c = null;
        m5603e();
        Process.killProcess(Process.myPid());
    }

    @Override // com.taobao.accs.internal.AbstractC1931d, com.taobao.accs.base.IBaseService
    public boolean onUnbind(Intent intent) {
        return false;
    }

    /* renamed from: a */
    private void m5595a(Context context) {
        List<String> listM5772m = UtilityImpl.m5772m(context);
        ArrayList arrayList = new ArrayList();
        if (listM5772m != null && listM5772m.size() > 0) {
            for (int i = 0; i < listM5772m.size(); i++) {
                try {
                    Class<?> cls = Class.forName(listM5772m.get(i));
                    if (IChannelInit.class.isAssignableFrom(cls)) {
                        try {
                            ((IChannelInit) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0])).init(context);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } else {
                        arrayList.add(listM5772m.get(i));
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        if (arrayList.size() > 0) {
            UtilityImpl.m5745a(context, arrayList);
        }
    }

    /* renamed from: a */
    private void m5594a() {
        ALog.m5726d("ServiceImpl", "init start", new Object[0]);
        m5595a(this.f6174c);
        GlobalClientInfo.getInstance(this.f6174c);
        AdapterGlobalClientInfo.mStartServiceTimes.incrementAndGet();
        this.f6175d = System.currentTimeMillis();
        this.f6176e = UtilityImpl.m5764f(this.f6174c);
        if (ALog.isPrintLog(ALog.Level.I)) {
            ALog.m5729i("ServiceImpl", "init", Constants.KEY_SDK_VERSION, 221, "procStart", Integer.valueOf(AdapterGlobalClientInfo.mStartServiceTimes.intValue()));
        }
        UTMini.getInstance().commitEvent(66001, "START", UtilityImpl.m5763f(), "PROXY");
        long jM5767h = UtilityImpl.m5767h(this.f6174c);
        ALog.m5726d("ServiceImpl", "getServiceAliveTime", "aliveTime", Long.valueOf(jM5767h));
        if (jM5767h > 20000) {
            AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_SERVICE_ALIVE, "", jM5767h / 1000);
        }
        UtilityImpl.m5744a(this.f6174c, Constants.SP_KEY_SERVICE_START, System.currentTimeMillis());
        UTMini.getInstance().commitEvent(66001, "NOTIFY", UtilityImpl.m5770k(this.f6174c));
    }

    /* renamed from: a */
    private void m5596a(Intent intent, String str) {
        ALog.m5726d("ServiceImpl", "handleAction", "action", str);
        try {
            m5599b();
            if (TextUtils.equals(str, "android.intent.action.PACKAGE_REMOVED")) {
                return;
            }
            if (TextUtils.equals(str, "android.net.conn.CONNECTIVITY_CHANGE")) {
                String strM5764f = UtilityImpl.m5764f(this.f6174c);
                boolean zM5766g = UtilityImpl.m5766g(this.f6174c);
                ALog.m5729i("ServiceImpl", "network change:" + this.f6176e + " to " + strM5764f, new Object[0]);
                if (zM5766g) {
                    this.f6176e = strM5764f;
                    m5601c();
                    m5598a(true, false);
                    UTMini.getInstance().commitEvent(66001, "CONNECTIVITY_CHANGE", strM5764f, UtilityImpl.m5763f(), MessageService.MSG_DB_READY_REPORT);
                }
                if (strM5764f.equals("unknown")) {
                    m5601c();
                    this.f6176e = strM5764f;
                    return;
                }
                return;
            }
            if (TextUtils.equals(str, "android.intent.action.BOOT_COMPLETED")) {
                m5598a(true, false);
                return;
            }
            if (TextUtils.equals(str, "android.intent.action.USER_PRESENT")) {
                ALog.m5726d("ServiceImpl", "action android.intent.action.USER_PRESENT", new Object[0]);
                m5598a(true, false);
            } else if (str.equals(Constants.ACTION_COMMAND)) {
                m5600b(intent);
            }
        } catch (Throwable th) {
            ALog.m5727e("ServiceImpl", "handleAction", th, new Object[0]);
        }
    }

    /* renamed from: b */
    private synchronized void m5599b() {
        if (AbstractC1931d.f6183a != null && AbstractC1931d.f6183a.size() != 0) {
            for (Map.Entry<String, AbstractC1940b> entry : AbstractC1931d.f6183a.entrySet()) {
                AbstractC1940b value = entry.getValue();
                if (value == null) {
                    ALog.m5728e("ServiceImpl", "tryConnect connection null", "appkey", value.m5646i());
                    return;
                }
                ALog.m5729i("ServiceImpl", "tryConnect", "appkey", value.m5646i(), Constants.KEY_CONFIG_TAG, entry.getKey());
                if (value.m5648k() && TextUtils.isEmpty(value.f6217i.getAppSecret())) {
                    ALog.m5728e("ServiceImpl", "tryConnect secret is null", new Object[0]);
                } else {
                    value.mo5625a();
                }
            }
            return;
        }
        ALog.m5732w("ServiceImpl", "tryConnect no connections", new Object[0]);
    }

    /* renamed from: a */
    private void m5597a(Message message, boolean z) {
        ConcurrentHashMap<String, AbstractC1940b> concurrentHashMap = AbstractC1931d.f6183a;
        if (concurrentHashMap == null || concurrentHashMap.size() == 0) {
            return;
        }
        Iterator<Map.Entry<String, AbstractC1940b>> it = AbstractC1931d.f6183a.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().m5638b(message, z);
        }
    }

    /* renamed from: a */
    private void m5598a(boolean z, boolean z2) {
        ConcurrentHashMap<String, AbstractC1940b> concurrentHashMap = AbstractC1931d.f6183a;
        if (concurrentHashMap == null || concurrentHashMap.size() == 0) {
            return;
        }
        Iterator<Map.Entry<String, AbstractC1940b>> it = AbstractC1931d.f6183a.entrySet().iterator();
        while (it.hasNext()) {
            AbstractC1940b value = it.next().getValue();
            value.mo5631a(z, z2);
            ALog.m5729i("ServiceImpl", "ping connection", "appkey", value.m5646i());
        }
    }
}
