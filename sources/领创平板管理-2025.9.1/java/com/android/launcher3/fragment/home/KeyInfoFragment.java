package com.android.launcher3.fragment.home;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseFragment;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0876cc;
import com.huawei.hem.C0948f6;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class KeyInfoFragment extends BaseFragment {

    /* renamed from: i */
    public TextView f1978i;

    /* renamed from: j */
    public TextView f1979j;

    /* renamed from: k */
    public TextView f1980k;

    /* renamed from: l */
    public TextView f1981l;

    /* renamed from: m */
    public TextView f1982m;

    /* renamed from: n */
    public TextView f1983n;

    /* renamed from: o */
    public TextView f1984o;

    /* renamed from: p */
    public TextView f1985p;

    /* renamed from: q */
    public String f1986q;

    /* renamed from: r */
    public String f1987r;

    /* renamed from: s */
    public String f1988s;

    /* renamed from: t */
    public String f1989t;

    /* renamed from: u */
    public String f1990u;

    /* renamed from: com.android.launcher3.fragment.home.KeyInfoFragment$a */
    public class AsyncTaskC0662a extends AsyncTask {
        public AsyncTaskC0662a() {
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object[] objArr) throws Throwable {
            HttpURLConnection httpURLConnection;
            Exception e;
            InputStream inputStream;
            StringBuilder sb;
            KeyInfoFragment keyInfoFragment = KeyInfoFragment.this;
            new C0876cc(keyInfoFragment.f1800a);
            String strGroup = "";
            InputStream inputStream2 = null;
            try {
                httpURLConnection = (HttpURLConnection) new URL("http://pv.sohu.com/cityjson?ie=utf-8").openConnection();
            } catch (Exception e2) {
                e = e2;
                httpURLConnection = null;
                inputStream = null;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = null;
            }
            try {
                if (httpURLConnection.getResponseCode() == 200) {
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        try {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                            StringBuilder sb2 = new StringBuilder();
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb2.append(line + "\n");
                            }
                            Matcher matcher = Pattern.compile("((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))").matcher(sb2.toString());
                            if (matcher.find()) {
                                strGroup = matcher.group();
                            }
                        } catch (Exception e3) {
                            e = e3;
                            String str = "getNetExtraNetIpAddress error:" + e.getMessage();
                            Log.e("NetWorkUtil", str);
                            C0850bc.m1411u("NetWorkUtil", str);
                            try {
                                inputStream.close();
                                httpURLConnection.disconnect();
                            } catch (Exception e4) {
                                e = e4;
                                sb = new StringBuilder();
                                sb.append("getNetExtraNetIpAddress finally error:");
                                sb.append(e.getMessage());
                                String string = sb.toString();
                                Log.e("NetWorkUtil", string);
                                C0850bc.m1411u("NetWorkUtil", string);
                                keyInfoFragment.f1986q = strGroup;
                                return null;
                            }
                            keyInfoFragment.f1986q = strGroup;
                            return null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream2 = inputStream;
                        try {
                            inputStream2.close();
                            httpURLConnection.disconnect();
                        } catch (Exception e5) {
                            StringBuilder sbM1765j = C0948f6.m1765j("getNetExtraNetIpAddress finally error:");
                            sbM1765j.append(e5.getMessage());
                            String string2 = sbM1765j.toString();
                            Log.e("NetWorkUtil", string2);
                            C0850bc.m1411u("NetWorkUtil", string2);
                        }
                        throw th;
                    }
                } else {
                    inputStream = null;
                }
                try {
                    inputStream.close();
                    httpURLConnection.disconnect();
                } catch (Exception e6) {
                    e = e6;
                    sb = new StringBuilder();
                    sb.append("getNetExtraNetIpAddress finally error:");
                    sb.append(e.getMessage());
                    String string3 = sb.toString();
                    Log.e("NetWorkUtil", string3);
                    C0850bc.m1411u("NetWorkUtil", string3);
                    keyInfoFragment.f1986q = strGroup;
                    return null;
                }
            } catch (Exception e7) {
                e = e7;
                inputStream = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream2.close();
                httpURLConnection.disconnect();
                throw th;
            }
            keyInfoFragment.f1986q = strGroup;
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            if (TextUtils.isEmpty(KeyInfoFragment.this.f1986q)) {
                return;
            }
            KeyInfoFragment keyInfoFragment = KeyInfoFragment.this;
            keyInfoFragment.f1985p.setText(keyInfoFragment.f1986q);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: e */
    public int mo1219e() {
        return R.layout.fragment_key_info;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0183  */
    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1220f() throws java.io.IOException, java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.fragment.home.KeyInfoFragment.mo1220f():void"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/fragment/home/KeyInfoFragment.smali:62
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: g */
    public void mo1221g(View view) {
        this.f1978i = (TextView) view.findViewById(R.id.rom_version);
        this.f1979j = (TextView) view.findViewById(R.id.guard_secure_version);
        this.f1980k = (TextView) view.findViewById(R.id.app_store_version);
        this.f1981l = (TextView) view.findViewById(R.id.wifi_name);
        this.f1982m = (TextView) view.findViewById(R.id.device_mac);
        this.f1983n = (TextView) view.findViewById(R.id.device_sn);
        this.f1984o = (TextView) view.findViewById(R.id.local_ip_address);
        this.f1985p = (TextView) view.findViewById(R.id.net_ip_address);
    }
}
