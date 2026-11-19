package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import anetwork.channel.util.RequestConstant;
import com.huawei.hem.IControlBinder;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.vh */
/* loaded from: classes.dex */
public class C1361vh {

    /* renamed from: a */
    public Context f3961a;

    /* renamed from: b */
    public IControlBinder f3962b;

    /* renamed from: c */
    public List<Runnable> f3963c = new ArrayList();

    /* renamed from: d */
    public ServiceConnection f3964d = new a();

    /* compiled from: SeewoIMDM.java */
    /* renamed from: com.huawei.hem.vh$a */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.e(RequestConstant.ENV_TEST, "onServiceConnected");
            C1361vh.this.f3962b = IControlBinder.a.m2390J(iBinder);
            Iterator<Runnable> it = C1361vh.this.f3963c.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            C1361vh.this.f3963c.clear();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.e(RequestConstant.ENV_TEST, "onServiceDisconnected");
            C1361vh c1361vh = C1361vh.this;
            Context context = c1361vh.f3961a;
            if (c1361vh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("com.seewo.student.control");
            intent.setPackage("com.seewo.eclass.stucontrolservice");
            context.bindService(intent, this, 33);
        }
    }

    /* compiled from: SeewoIMDM.java */
    /* renamed from: com.huawei.hem.vh$b */
    public class b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f3966a;

        public b(List list) {
            this.f3966a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Iterator it = this.f3966a.iterator();
                while (it.hasNext()) {
                    C1361vh.this.f3962b.mo2383k1((String) it.next());
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public C1361vh(Context context) {
        this.f3961a = context;
        Intent intent = new Intent();
        intent.setAction("com.seewo.student.control");
        intent.setPackage("com.seewo.eclass.stucontrolservice");
        context.bindService(intent, this.f3964d, 33);
    }

    /* renamed from: d */
    public static String m2872d() throws SocketException {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                return "02:00:00:00:00:00";
            }
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                if (hardwareAddress != null && hardwareAddress.length != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b2)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    String string = sb.toString();
                    if (networkInterfaceNextElement.getName().equalsIgnoreCase("wlan0")) {
                        return string;
                    }
                }
            }
            return "02:00:00:00:00:00";
        } catch (Exception e) {
            e.printStackTrace();
            return "02:00:00:00:00:00";
        }
    }

    /* renamed from: a */
    public List<String> m2873a() throws InterruptedException {
        ArrayList arrayList = new ArrayList();
        if (this.f3962b == null) {
            m2875c();
        }
        IControlBinder interfaceC1136mh = this.f3962b;
        if (interfaceC1136mh == null) {
            Log.e("seewoimdm", "appWhiteListRead  mBinder is still null");
            return arrayList;
        }
        try {
            try {
                String strAppWhiteListRead = interfaceC1136mh.appWhiteListRead();
                Log.e(RequestConstant.ENV_TEST, "app list read in imdm: " + strAppWhiteListRead);
                JSONArray jSONArray = new JSONArray(strAppWhiteListRead);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    try {
                        arrayList.add(jSONArray.getString(i));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                return arrayList;
            } catch (RemoteException e2) {
                e2.printStackTrace();
                return arrayList;
            }
        } catch (JSONException e3) {
            e3.printStackTrace();
            return arrayList;
        }
    }

    /* renamed from: b */
    public boolean m2874b(List<String> list) throws InterruptedException {
        if (this.f3962b == null) {
            m2875c();
        }
        IControlBinder interfaceC1136mh = this.f3962b;
        if (interfaceC1136mh == null) {
            Log.e("seewoimdm", "appWhiteListWrite  mBinder is still null");
            return false;
        }
        try {
            if (list == null) {
                return interfaceC1136mh.mo2389w(null);
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            return this.f3962b.mo2389w(jSONArray.toString());
        } catch (RemoteException unused) {
            return false;
        }
    }

    /* renamed from: c */
    public final void m2875c() throws InterruptedException {
        if (this.f3962b == null) {
            Log.e("seewoimdm", "checkBinder mBinder is null");
            int i = 0;
            do {
                try {
                    Thread.currentThread();
                    Thread.sleep(50L);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                i++;
                if (this.f3962b != null) {
                    return;
                }
            } while (i < 5);
        }
    }

    /* renamed from: e */
    public String m2876e() throws InterruptedException {
        if (this.f3962b == null) {
            m2875c();
        }
        IControlBinder interfaceC1136mh = this.f3962b;
        if (interfaceC1136mh == null) {
            Log.e("seewoimdm", "getWifiMacAddress  mBinder is still null...");
            return m2872d();
        }
        try {
            return interfaceC1136mh.getWifiMacAddress();
        } catch (RemoteException e) {
            e.printStackTrace();
            return m2872d();
        }
    }

    /* renamed from: f */
    public boolean m2877f(List<String> list) {
        b bVar = new b(list);
        if (this.f3962b == null) {
            this.f3963c.add(bVar);
            return true;
        }
        bVar.run();
        return true;
    }
}
