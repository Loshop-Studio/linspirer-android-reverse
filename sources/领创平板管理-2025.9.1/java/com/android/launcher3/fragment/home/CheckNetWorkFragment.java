package com.android.launcher3.fragment.home;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.android.launcher3.R;
import com.android.launcher3.activity.CheckNetWorkActivity;
import com.android.launcher3.activity.base.BaseFragment;
import com.android.launcher3.adapter.CheckNetworkRecyclerViewAdapter;
import com.android.launcher3.model.NetworkInfo;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0876cc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.InterfaceC1046j3;
import com.taobao.agoo.p074a.p075a.AbstractC2002b;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CheckNetWorkFragment extends BaseFragment {

    /* renamed from: i */
    public RecyclerView f1924i;

    /* renamed from: j */
    public CheckNetworkRecyclerViewAdapter f1925j;

    /* renamed from: k */
    public List<NetworkInfo> f1926k;

    /* renamed from: l */
    public NetworkInfo f1927l;

    /* renamed from: m */
    public String f1928m;

    /* renamed from: n */
    public String f1929n;

    /* renamed from: o */
    public String f1930o;

    /* renamed from: p */
    public List<Integer> f1931p;

    /* renamed from: q */
    public List<String> f1932q;

    /* renamed from: r */
    public List<String> f1933r;

    /* renamed from: s */
    public String f1934s;

    /* renamed from: t */
    public ProgressBar f1935t;

    /* renamed from: u */
    public ImageView f1936u;

    /* renamed from: v */
    public ImageView f1937v;

    /* renamed from: w */
    public ImageView f1938w;

    /* renamed from: x */
    public ImageView f1939x;

    /* renamed from: z */
    public AsyncTaskC0657d f1941z;

    /* renamed from: y */
    public int f1940y = 0;

    /* renamed from: A */
    public Runnable f1922A = new RunnableC0654a();

    /* renamed from: B */
    public Handler f1923B = new HandlerC0655b();

    /* renamed from: com.android.launcher3.fragment.home.CheckNetWorkFragment$a */
    public class RunnableC0654a implements Runnable {
        public RunnableC0654a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckNetWorkFragment.this.f1923B.postDelayed(this, 120L);
            CheckNetWorkFragment.this.f1923B.sendEmptyMessage(2);
        }
    }

    /* renamed from: com.android.launcher3.fragment.home.CheckNetWorkFragment$b */
    public class HandlerC0655b extends Handler {
        public HandlerC0655b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                CheckNetWorkFragment.this.f1925j.notifyDataSetChanged();
                return;
            }
            if (i != 2) {
                return;
            }
            CheckNetWorkFragment checkNetWorkFragment = CheckNetWorkFragment.this;
            int i2 = checkNetWorkFragment.f1940y;
            if (i2 == 33) {
                checkNetWorkFragment.f1937v.setImageResource(R.drawable.icon_progress2);
            } else if (i2 == 66) {
                checkNetWorkFragment.f1938w.setImageResource(R.drawable.icon_progress3);
            } else if (i2 == 100) {
                checkNetWorkFragment.f1939x.setImageResource(R.drawable.icon_progress4);
            }
            CheckNetWorkFragment checkNetWorkFragment2 = CheckNetWorkFragment.this;
            int i3 = checkNetWorkFragment2.f1940y;
            if (i3 != 100) {
                int i4 = i3 + 1;
                checkNetWorkFragment2.f1940y = i4;
                checkNetWorkFragment2.f1935t.setProgress(i4);
            } else {
                checkNetWorkFragment2.f1935t.setProgress(i3);
                CheckNetWorkFragment checkNetWorkFragment3 = CheckNetWorkFragment.this;
                checkNetWorkFragment3.f1940y = 0;
                checkNetWorkFragment3.f1923B.removeCallbacks(checkNetWorkFragment3.f1922A);
            }
        }
    }

    /* renamed from: com.android.launcher3.fragment.home.CheckNetWorkFragment$c */
    public class C0656c implements InterfaceC1046j3 {
        public C0656c() {
        }
    }

    /* renamed from: com.android.launcher3.fragment.home.CheckNetWorkFragment$d */
    public class AsyncTaskC0657d extends AsyncTask {
        public AsyncTaskC0657d() {
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object[] objArr) throws Throwable {
            Socket socket;
            Exception e;
            Socket socket2;
            StringBuilder sb;
            String str;
            Runtime runtime;
            StringBuilder sb2;
            CheckNetWorkFragment checkNetWorkFragment = CheckNetWorkFragment.this;
            if (AbstractC1102l9.m2273N(checkNetWorkFragment.f1926k)) {
                C0850bc.m1403m("CheckNetWorkFragment--networks are empty");
                return null;
            }
            for (NetworkInfo networkInfo : checkNetWorkFragment.f1926k) {
                checkNetWorkFragment.f1933r = new ArrayList();
                checkNetWorkFragment.f1928m = networkInfo.getDomain();
                checkNetWorkFragment.f1931p = networkInfo.getPortList();
                new C0876cc(checkNetWorkFragment.f1800a);
                String str2 = checkNetWorkFragment.f1928m;
                ArrayList arrayList = new ArrayList();
                try {
                    for (InetAddress inetAddress : InetAddress.getAllByName(str2)) {
                        if (TextUtils.isEmpty(inetAddress.getHostAddress())) {
                            arrayList.add("FAIL");
                        } else {
                            arrayList.add(inetAddress.getHostAddress());
                        }
                    }
                } catch (Exception e2) {
                    C0948f6.m1776u(e2, C0948f6.m1765j("NetWorkUtilgetInetAddress error:"));
                }
                checkNetWorkFragment.f1932q = arrayList;
                if (!AbstractC1102l9.m2273N(arrayList)) {
                    for (String str3 : checkNetWorkFragment.f1932q) {
                        try {
                            runtime = Runtime.getRuntime();
                            sb2 = new StringBuilder();
                            sb2.append("ping -c 3 -w 100 ");
                            sb2.append(str3);
                        } catch (Exception e3) {
                            C0948f6.m1776u(e3, C0948f6.m1765j("NetWorkUtilping error:"));
                        }
                        String str4 = runtime.exec(sb2.toString()).waitFor() == 0 ? AbstractC2002b.JSON_SUCCESS : "fail";
                        checkNetWorkFragment.f1934s = str4;
                        checkNetWorkFragment.f1933r.add(str4);
                    }
                }
                if (!AbstractC1102l9.m2273N(checkNetWorkFragment.f1931p)) {
                    for (int i = 0; i < checkNetWorkFragment.f1931p.size(); i++) {
                        String str5 = checkNetWorkFragment.f1928m;
                        int iIntValue = checkNetWorkFragment.f1931p.get(i).intValue();
                        try {
                            socket2 = new Socket();
                            try {
                                try {
                                    socket2.connect(new InetSocketAddress(str5, iIntValue), 5000);
                                    str = socket2.isConnected() ? AbstractC2002b.JSON_SUCCESS : "fail";
                                    C0850bc.m1403m("NetWorkUtilconnecting " + str5 + ":" + iIntValue + " " + str);
                                } catch (Exception e4) {
                                    e = e4;
                                    C0850bc.m1393c("NetWorkUtilconnecting " + str5 + ":" + iIntValue + " failed, because of " + e.getMessage());
                                    if (socket2 != null) {
                                        try {
                                            socket2.close();
                                        } catch (Exception e5) {
                                            e = e5;
                                            sb = new StringBuilder();
                                            sb.append("NetWorkUtilcheckDomainPort error:");
                                            sb.append(e.getMessage());
                                            C0850bc.m1393c(sb.toString());
                                            str = "fail";
                                            checkNetWorkFragment.f1933r.add(str);
                                        }
                                    }
                                    str = "fail";
                                    checkNetWorkFragment.f1933r.add(str);
                                }
                                try {
                                    socket2.close();
                                } catch (Exception e6) {
                                    e = e6;
                                    sb = new StringBuilder();
                                    sb.append("NetWorkUtilcheckDomainPort error:");
                                    sb.append(e.getMessage());
                                    C0850bc.m1393c(sb.toString());
                                    str = "fail";
                                    checkNetWorkFragment.f1933r.add(str);
                                }
                            } catch (Throwable th) {
                                th = th;
                                socket = socket2;
                                if (socket != null) {
                                    try {
                                        socket.close();
                                    } catch (Exception e7) {
                                        C0948f6.m1776u(e7, C0948f6.m1765j("NetWorkUtilcheckDomainPort error:"));
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception e8) {
                            e = e8;
                            socket2 = null;
                        } catch (Throwable th2) {
                            th = th2;
                            socket = null;
                        }
                        checkNetWorkFragment.f1933r.add(str);
                    }
                }
                networkInfo.setResult(checkNetWorkFragment.f1933r);
                Message message = new Message();
                message.what = 1;
                checkNetWorkFragment.f1923B.sendMessage(message);
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            C0850bc.m1403m("CheckNetWorkFragment--check network is end");
            ((CheckNetWorkActivity) CheckNetWorkFragment.this.getActivity()).m1181f(true);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            C0850bc.m1403m("CheckNetWorkFragment--check network is starting");
            CheckNetWorkFragment.this.m1246j();
            CheckNetWorkFragment checkNetWorkFragment = CheckNetWorkFragment.this;
            checkNetWorkFragment.f1936u.setImageResource(R.drawable.icon_progres1);
            checkNetWorkFragment.f1923B.postDelayed(checkNetWorkFragment.f1922A, 0L);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: e */
    public int mo1219e() {
        return R.layout.fragment_check_network;
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    public void mo1220f() {
        ArrayList arrayListM1772q = C0948f6.m1772q("cloud.linspirer.com:883", "cloud.linspirer.com:8070", "reg.linspirer.com:89", "cloud.linspirer.com:8081", "download1.linspirer.com:80");
        for (int i = 0; i < arrayListM1772q.size(); i++) {
            this.f1927l = new NetworkInfo();
            String str = (String) arrayListM1772q.get(i);
            this.f1929n = str;
            if (str.contains(":")) {
                String str2 = this.f1929n;
                this.f1928m = str2.substring(0, str2.lastIndexOf(":"));
                String str3 = this.f1929n;
                this.f1930o = str3.substring(str3.lastIndexOf(":") + 1);
                this.f1927l.setDomain(this.f1928m);
            } else {
                this.f1930o = "";
                this.f1927l.setDomain(this.f1929n);
            }
            this.f1931p = new ArrayList();
            if (!TextUtils.isEmpty(this.f1930o)) {
                if (this.f1930o.contains(",")) {
                    for (String str4 : this.f1930o.split(",")) {
                        this.f1931p.add(Integer.valueOf(Integer.parseInt(str4)));
                    }
                } else {
                    this.f1931p.add(Integer.valueOf(Integer.parseInt(this.f1930o)));
                }
            }
            this.f1927l.setPortList(this.f1931p);
            this.f1926k.add(this.f1927l);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: g */
    public void mo1221g(View view) {
        this.f1924i = (RecyclerView) view.findViewById(R.id.check_network_recyclerview);
        ArrayList arrayList = new ArrayList();
        this.f1926k = arrayList;
        this.f1925j = new CheckNetworkRecyclerViewAdapter(this.f1800a, arrayList);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f1800a);
        linearLayoutManager.setOrientation(1);
        this.f1924i.setLayoutManager(linearLayoutManager);
        this.f1924i.setAdapter(this.f1925j);
        this.f1935t = (ProgressBar) view.findViewById(R.id.progress);
        this.f1936u = (ImageView) view.findViewById(R.id.device_image);
        this.f1937v = (ImageView) view.findViewById(R.id.dns_request_image);
        this.f1938w = (ImageView) view.findViewById(R.id.management_service_image);
        this.f1939x = (ImageView) view.findViewById(R.id.customer_service_image);
        m1246j();
        ((CheckNetWorkActivity) getActivity()).f1680l = new C0656c();
    }

    /* renamed from: j */
    public final void m1246j() {
        this.f1936u.setImageResource(R.drawable.icon_progress1_2);
        this.f1937v.setImageResource(R.drawable.icon_progress2_2);
        this.f1938w.setImageResource(R.drawable.icon_progress3_2);
        this.f1939x.setImageResource(R.drawable.icon_progress4_2);
        if (!AbstractC1102l9.m2273N(this.f1926k)) {
            Iterator<NetworkInfo> it = this.f1926k.iterator();
            while (it.hasNext()) {
                it.next().setResult(new ArrayList());
            }
        }
        Message message = new Message();
        message.what = 1;
        this.f1923B.sendMessage(message);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AsyncTaskC0657d asyncTaskC0657d = this.f1941z;
        if (asyncTaskC0657d != null && !asyncTaskC0657d.isCancelled() && this.f1941z.getStatus() == AsyncTask.Status.RUNNING) {
            this.f1941z.cancel(true);
            this.f1941z = null;
            C0850bc.m1403m("CheckNetWorkFragment----finish check task");
        }
        C0850bc.m1403m("CheckNetWorkFragment----onDestroy");
    }
}
