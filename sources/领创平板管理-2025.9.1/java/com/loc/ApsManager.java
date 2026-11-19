package com.loc;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import anetwork.channel.util.RequestConstant;
import com.alibaba.sdk.android.tbrest.rest.RestConstants;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.AppInfo;
import com.huawei.hem.AuthConfigManager;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: ApsManager.java */
/* renamed from: com.loc.e */
/* loaded from: classes.dex */
public final class ApsManager {

    /* renamed from: g */
    public static boolean f5525g = false;

    /* renamed from: B */
    public List<Messenger> f5527B;

    /* renamed from: e */
    public Context f5536e;

    /* renamed from: t */
    public boolean f5550t = false;

    /* renamed from: u */
    public boolean f5551u = false;

    /* renamed from: a */
    public String f5532a = null;

    /* renamed from: b */
    public b f5533b = null;

    /* renamed from: v */
    public long f5552v = 0;

    /* renamed from: w */
    public long f5553w = 0;

    /* renamed from: x */
    public AMapLocationServer f5554x = null;

    /* renamed from: c */
    public AMapLocation f5534c = null;

    /* renamed from: y */
    public long f5555y = 0;

    /* renamed from: z */
    public int f5556z = 0;

    /* renamed from: d */
    public a f5535d = null;

    /* renamed from: A */
    public LastLocationManager f5526A = null;

    /* renamed from: f */
    public Aps f5537f = null;

    /* renamed from: h */
    public HashMap<Messenger, Long> f5538h = new HashMap<>();

    /* renamed from: i */
    public ReportUtil f5539i = null;

    /* renamed from: j */
    public long f5540j = 0;

    /* renamed from: k */
    public long f5541k = 0;

    /* renamed from: l */
    public String f5542l = null;

    /* renamed from: C */
    public boolean f5528C = true;

    /* renamed from: D */
    public String f5529D = "";

    /* renamed from: m */
    public AMapLocationClientOption f5543m = null;

    /* renamed from: n */
    public AMapLocationClientOption f5544n = new AMapLocationClientOption();

    /* renamed from: o */
    public ServerSocket f5545o = null;

    /* renamed from: p */
    public boolean f5546p = false;

    /* renamed from: q */
    public Socket f5547q = null;

    /* renamed from: r */
    public boolean f5548r = false;

    /* renamed from: s */
    public c f5549s = null;

    /* renamed from: E */
    public final int f5530E = 5000;

    /* renamed from: F */
    public String f5531F = "jsonp1";

    /* compiled from: ApsManager.java */
    /* renamed from: com.loc.e$a */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x012e A[Catch: all -> 0x013c, TryCatch #3 {all -> 0x013c, blocks: (B:21:0x0055, B:28:0x0061, B:69:0x0138, B:30:0x0066, B:32:0x006a, B:34:0x0072, B:36:0x007e, B:37:0x0087, B:39:0x008f, B:41:0x009b, B:42:0x00a4, B:44:0x00a8, B:46:0x00b0, B:48:0x00bc, B:50:0x00d1, B:51:0x00d7, B:52:0x00dd, B:53:0x00e3, B:54:0x00ee, B:56:0x00fb, B:59:0x0102, B:62:0x0110, B:65:0x0117, B:67:0x0123, B:68:0x012e, B:20:0x004e), top: B:80:0x004e }] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleMessage(android.os.Message r9) {
            /*
                Method dump skipped, instructions count: 342
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.loc.C1818e.a.handleMessage(android.os.Message):void");
        }
    }

    /* compiled from: ApsManager.java */
    /* renamed from: com.loc.e$b */
    public class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        public final void onLooperPrepared() {
            try {
                try {
                    ApsManager.this.f5526A = new LastLocationManager(ApsManager.this.f5536e);
                } catch (Throwable th) {
                    CoreUtil.m5014a(th, "APSManager$ActionThread", "init 2");
                }
                try {
                    AuthUtil.m4980b(ApsManager.this.f5536e);
                    AuthUtil.m4971a(ApsManager.this.f5536e);
                } catch (Throwable th2) {
                    CoreUtil.m5014a(th2, "APSManager$ActionThread", "init 3");
                }
                ApsManager.this.f5537f = new Aps(false);
                super.onLooperPrepared();
            } catch (Throwable th3) {
                CoreUtil.m5014a(th3, "APSManager$ActionThread", "onLooperPrepared");
            }
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                super.run();
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "APSManager$ActionThread", "run");
            }
        }
    }

    /* compiled from: ApsManager.java */
    /* renamed from: com.loc.e$c */
    public class c extends Thread {
        public c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (!ApsManager.this.f5546p) {
                    ApsManager.this.f5546p = true;
                    ApsManager.this.f5545o = new ServerSocket(43689);
                }
                while (ApsManager.this.f5546p && ApsManager.this.f5545o != null) {
                    ApsManager.this.f5547q = ApsManager.this.f5545o.accept();
                    ApsManager.this.m4796a(ApsManager.this.f5547q);
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "ApsServiceCore", "run");
            }
            super.run();
        }
    }

    public ApsManager(Context context) {
        this.f5536e = null;
        this.f5536e = context;
    }

    /* renamed from: a */
    public static AMapLocationServer m4782a(int i, String str) {
        try {
            AMapLocationServer c1812du = new AMapLocationServer("");
            c1812du.setErrorCode(i);
            c1812du.setLocationDetail(str);
            return c1812du;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "newInstanceAMapLoc");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4784a(Bundle bundle) {
        try {
            if (this.f5550t) {
                return;
            }
            CoreUtil.m5011a(this.f5536e);
            if (bundle != null) {
                this.f5544n = CoreUtil.m5009a(bundle.getBundle("optBundle"));
            }
            this.f5537f.m4623a(this.f5536e);
            this.f5537f.m4622a();
            m4788a(this.f5544n);
            this.f5537f.m4628b();
            this.f5550t = true;
            this.f5528C = true;
            this.f5529D = "";
            if (this.f5527B == null || this.f5527B.size() <= 0) {
                return;
            }
            m4808h();
        } catch (Throwable th) {
            this.f5528C = false;
            th.printStackTrace();
            this.f5529D = th.getMessage();
            CoreUtil.m5014a(th, "ApsServiceCore", "init");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4785a(Messenger messenger) {
        this.f5538h.remove(messenger);
    }

    /* renamed from: a */
    public static void m4786a(Messenger messenger, int i, Bundle bundle) {
        if (messenger != null) {
            try {
                Message messageObtain = Message.obtain();
                messageObtain.setData(bundle);
                messageObtain.what = i;
                messenger.send(messageObtain);
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "ApsServiceCore", "sendMessage");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4787a(Messenger messenger, AMapLocation aMapLocation, String str, AMapLocationStaticsEntity c1806do) {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(AMapLocation.class.getClassLoader());
        bundle.putParcelable("loc", aMapLocation);
        bundle.putString("nb", str);
        bundle.putParcelable("statics", c1806do);
        this.f5538h.put(messenger, Long.valueOf(C1841ew.m5127b()));
        m4786a(messenger, 1, bundle);
    }

    /* renamed from: a */
    private void m4788a(AMapLocationClientOption aMapLocationClientOption) {
        try {
            if (this.f5537f != null) {
                this.f5537f.m4626a(aMapLocationClientOption);
            }
            if (aMapLocationClientOption != null) {
                f5525g = aMapLocationClientOption.isKillProcess();
                if (this.f5543m != null && (aMapLocationClientOption.isOffset() != this.f5543m.isOffset() || aMapLocationClientOption.isNeedAddress() != this.f5543m.isNeedAddress() || aMapLocationClientOption.isLocationCacheEnable() != this.f5543m.isLocationCacheEnable() || this.f5543m.getGeoLanguage() != aMapLocationClientOption.getGeoLanguage())) {
                    this.f5553w = 0L;
                    this.f5534c = null;
                }
                this.f5543m = aMapLocationClientOption;
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "setExtra");
        }
    }

    /* renamed from: a */
    private void m4795a(BufferedReader bufferedReader) throws IOException {
        String[] strArrSplit;
        String[] strArrSplit2;
        String[] strArrSplit3;
        String line = bufferedReader.readLine();
        int iM5144e = RestConstants.G_MAX_READ_CONNECTION_STREAM_TIME_OUT;
        if (line != null && line.length() > 0 && (strArrSplit = line.split(" ")) != null && strArrSplit.length > 1 && (strArrSplit2 = strArrSplit[1].split("\\?")) != null && strArrSplit2.length > 1 && (strArrSplit3 = strArrSplit2[1].split("&")) != null && strArrSplit3.length > 0) {
            for (String str : strArrSplit3) {
                String[] strArrSplit4 = str.split(ContainerUtils.KEY_VALUE_DELIMITER);
                if (strArrSplit4 != null && strArrSplit4.length > 1) {
                    if ("to".equals(strArrSplit4[0])) {
                        iM5144e = C1841ew.m5144e(strArrSplit4[1]);
                    }
                    if ("callback".equals(strArrSplit4[0])) {
                        this.f5531F = strArrSplit4[1];
                    }
                }
            }
        }
        CoreUtil.f5762i = iM5144e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4796a(Socket socket) {
        BufferedReader bufferedReader;
        if (socket == null) {
            return;
        }
        try {
            int i = CoreUtil.f5762i;
            String str = null;
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream(), "UTF-8"));
                try {
                    m4795a(bufferedReader);
                    String strM4807g = m4807g();
                    CoreUtil.f5762i = i;
                    try {
                        m4805c(strM4807g);
                    } catch (Throwable th) {
                        try {
                            CoreUtil.m5014a(th, "apm", "inSocetLn part2");
                            try {
                                bufferedReader.close();
                                socket.close();
                            } catch (Throwable th2) {
                                CoreUtil.m5014a(th2, "apm", "inSocetLn part3");
                            }
                        } finally {
                            try {
                                bufferedReader.close();
                                socket.close();
                            } catch (Throwable th3) {
                                CoreUtil.m5014a(th3, "apm", "inSocetLn part3");
                            }
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    try {
                        str = this.f5531F + "&&" + this.f5531F + "({'package':'" + this.f5532a + "','error_code':1,'error':'params error'})";
                        CoreUtil.m5014a(th, "apm", "inSocetLn");
                        CoreUtil.f5762i = i;
                        try {
                            m4805c(str);
                            try {
                                bufferedReader.close();
                                socket.close();
                            } catch (Throwable th5) {
                                CoreUtil.m5014a(th5, "apm", "inSocetLn part3");
                            }
                        } catch (Throwable th6) {
                            try {
                                CoreUtil.m5014a(th6, "apm", "inSocetLn part2");
                                try {
                                    bufferedReader.close();
                                    socket.close();
                                } catch (Throwable th7) {
                                    CoreUtil.m5014a(th7, "apm", "inSocetLn part3");
                                }
                            } finally {
                                try {
                                    bufferedReader.close();
                                    socket.close();
                                } catch (Throwable th8) {
                                    CoreUtil.m5014a(th8, "apm", "inSocetLn part3");
                                }
                            }
                        }
                    } catch (Throwable th9) {
                        CoreUtil.f5762i = i;
                        try {
                            m4805c(str);
                        } catch (Throwable th10) {
                            try {
                                CoreUtil.m5014a(th10, "apm", "inSocetLn part2");
                                try {
                                    bufferedReader.close();
                                    socket.close();
                                } catch (Throwable th11) {
                                    th = th11;
                                    CoreUtil.m5014a(th, "apm", "inSocetLn part3");
                                    throw th9;
                                }
                            } finally {
                                try {
                                    bufferedReader.close();
                                    socket.close();
                                } catch (Throwable th12) {
                                    CoreUtil.m5014a(th12, "apm", "inSocetLn part3");
                                }
                            }
                        }
                        try {
                            bufferedReader.close();
                            socket.close();
                        } catch (Throwable th13) {
                            th = th13;
                            CoreUtil.m5014a(th, "apm", "inSocetLn part3");
                            throw th9;
                        }
                        throw th9;
                    }
                }
            } catch (Throwable th14) {
                th = th14;
                bufferedReader = null;
            }
        } catch (Throwable th15) {
            CoreUtil.m5014a(th15, "apm", "inSocetLn part4");
        }
    }

    /* renamed from: b */
    private AMapLocationClientOption m4797b(Bundle bundle) {
        AMapLocationClientOption aMapLocationClientOptionM5009a = CoreUtil.m5009a(bundle.getBundle("optBundle"));
        m4788a(aMapLocationClientOptionM5009a);
        try {
            String string = bundle.getString("d");
            if (!TextUtils.isEmpty(string)) {
                DeviceInfo.f1607d = string;
            }
        } catch (Throwable th) {
            try {
                CoreUtil.m5014a(th, "APSManager", "doLocation setUmidToken");
            } catch (Throwable th2) {
                CoreUtil.m5014a(th2, "APSManager", "parseBundle");
            }
        }
        return aMapLocationClientOptionM5009a;
    }

    /* renamed from: b */
    public static /* synthetic */ AMapLocationServer m4798b(String str) {
        return m4782a(10, str);
    }

    /* renamed from: b */
    private void m4800b(Messenger messenger) {
        try {
            this.f5537f.m4633e();
            if (AuthUtil.m4997k()) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("installMockApp", true);
                m4786a(messenger, 9, bundle);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "initAuth");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4801b(Messenger messenger, Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.isEmpty() || this.f5551u) {
                    return;
                }
                this.f5551u = true;
                m4800b(messenger);
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "ApsServiceCore", "doInitAuth");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m4803c(Messenger messenger, Bundle bundle) {
        String str;
        if (bundle != null) {
            try {
                if (bundle.isEmpty()) {
                    return;
                }
                AMapLocationStaticsEntity c1806do = new AMapLocationStaticsEntity();
                c1806do.m4591e("conitue");
                AMapLocationClientOption aMapLocationClientOptionM4797b = m4797b(bundle);
                if (this.f5538h.containsKey(messenger) && !aMapLocationClientOptionM4797b.isOnceLocation()) {
                    if (C1841ew.m5127b() - this.f5538h.get(messenger).longValue() < 800) {
                        return;
                    }
                }
                AMapLocation aMapLocationM5246a = null;
                if (!this.f5528C) {
                    this.f5554x = m4782a(9, "init error : " + this.f5529D + "#0901");
                    c1806do.m4593f("#0901");
                    m4787a(messenger, this.f5554x, this.f5554x.m4700k(), c1806do);
                    ReportUtil.m5076a((String) null, 2091);
                    return;
                }
                long jM5127b = C1841ew.m5127b();
                if (C1841ew.m5117a(this.f5554x) && jM5127b - this.f5553w < 600) {
                    m4787a(messenger, this.f5554x, this.f5554x.m4700k(), c1806do);
                    this.f5537f.m4627a(this.f5554x, 3);
                    return;
                }
                c1806do.m4585c(C1841ew.m5127b());
                try {
                    AMapLocationServer c1812duM4618a = this.f5537f.m4618a(c1806do);
                    this.f5554x = c1812duM4618a;
                    if (c1812duM4618a.getLocationType() == 6 || this.f5554x.getLocationType() == 5) {
                        this.f5537f.m4627a(this.f5554x, 2);
                    } else if (this.f5554x.getLocationType() == 2) {
                        this.f5537f.m4627a(this.f5554x, 3);
                    } else if (this.f5554x.getLocationType() == 4) {
                        this.f5537f.m4627a(this.f5554x, 4);
                    }
                    this.f5554x = this.f5537f.m4619a(this.f5554x);
                } catch (Throwable th) {
                    ReportUtil.m5076a((String) null, 2081);
                    c1806do.m4593f("#0801");
                    this.f5554x = m4782a(8, "loc error : " + th.getMessage() + "#0801");
                    CoreUtil.m5014a(th, "ApsServiceCore", "run part2");
                }
                if (C1841ew.m5117a(this.f5554x)) {
                    this.f5553w = C1841ew.m5127b();
                }
                if (this.f5554x == null) {
                    this.f5554x = m4782a(8, "loc is null#0801");
                    c1806do.m4593f("#0801");
                }
                if (this.f5554x != null) {
                    String strM4700k = this.f5554x.m4700k();
                    aMapLocationM5246a = this.f5554x.m5888clone();
                    str = strM4700k;
                } else {
                    str = null;
                }
                try {
                    if (aMapLocationClientOptionM4797b.isLocationCacheEnable() && this.f5526A != null) {
                        aMapLocationM5246a = this.f5526A.m5246a(aMapLocationM5246a, str, aMapLocationClientOptionM4797b.getLastLocationLifeCycle());
                    }
                } catch (Throwable th2) {
                    CoreUtil.m5014a(th2, "ApsServiceCore", "fixLastLocation");
                }
                m4787a(messenger, aMapLocationM5246a, str, c1806do);
            } catch (Throwable th3) {
                CoreUtil.m5014a(th3, "ApsServiceCore", "doLocation");
            }
        }
    }

    /* renamed from: c */
    private void m4805c(String str) {
        PrintStream printStream = new PrintStream(this.f5547q.getOutputStream(), true, "UTF-8");
        printStream.println("HTTP/1.0 200 OK");
        printStream.println("Content-Length:" + str.getBytes("UTF-8").length);
        printStream.println();
        printStream.println(str);
        printStream.close();
    }

    /* renamed from: f */
    public static void m4806f() {
        f5525g = false;
    }

    /* renamed from: g */
    private String m4807g() {
        StringBuilder sb;
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (C1841ew.m5146e(this.f5536e)) {
            sb = new StringBuilder();
            sb.append(this.f5531F);
            sb.append("&&");
            sb.append(this.f5531F);
            sb.append("({'package':'");
            sb.append(this.f5532a);
            str = "','error_code':36,'error':'app is background'})";
        } else {
            AMapLocationServer c1812du = this.f5554x;
            if (c1812du == null || jCurrentTimeMillis - c1812du.getTime() > 5000) {
                try {
                    this.f5554x = this.f5537f.m4618a(new AMapLocationStaticsEntity());
                } catch (Throwable th) {
                    CoreUtil.m5014a(th, "ApsServiceCore", "getSocketLocResult");
                }
            }
            AMapLocationServer c1812du2 = this.f5554x;
            if (c1812du2 == null) {
                sb = new StringBuilder();
                sb.append(this.f5531F);
                sb.append("&&");
                sb.append(this.f5531F);
                sb.append("({'package':'");
                sb.append(this.f5532a);
                str = "','error_code':8,'error':'unknown error'})";
            } else if (c1812du2.getErrorCode() != 0) {
                sb = new StringBuilder();
                sb.append(this.f5531F);
                sb.append("&&");
                sb.append(this.f5531F);
                sb.append("({'package':'");
                sb.append(this.f5532a);
                sb.append("','error_code':");
                sb.append(this.f5554x.getErrorCode());
                sb.append(",'error':'");
                sb.append(this.f5554x.getErrorInfo());
                str = "'})";
            } else {
                sb = new StringBuilder();
                sb.append(this.f5531F);
                sb.append("&&");
                sb.append(this.f5531F);
                sb.append("({'package':'");
                sb.append(this.f5532a);
                sb.append("','error_code':0,'error':'','location':{'y':");
                sb.append(this.f5554x.getLatitude());
                sb.append(",'precision':");
                sb.append(this.f5554x.getAccuracy());
                sb.append(",'x':");
                sb.append(this.f5554x.getLongitude());
                str = "},'version_code':'5.5.1','version':'5.5.1'})";
            }
        }
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m4808h() {
        try {
            if (this.f5537f == null || this.f5537f == null) {
                return;
            }
            this.f5537f.m4624a(this.f5535d);
            this.f5537f.m4634f();
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "startColl");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m4809i() {
        try {
            AuthUtil.m4983c(this.f5536e);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "doCallOtherSer");
        }
    }

    /* renamed from: a */
    public final void m4810a() {
        try {
            this.f5539i = new ReportUtil();
            b bVar = new b("amapLocCoreThread");
            this.f5533b = bVar;
            bVar.setPriority(5);
            this.f5533b.start();
            this.f5535d = new a(this.f5533b.getLooper());
            this.f5527B = new ArrayList();
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "onCreate");
        }
    }

    /* renamed from: a */
    public final void m4811a(Intent intent) {
        a aVar;
        if (!RequestConstant.TRUE.equals(intent.getStringExtra("as")) || (aVar = this.f5535d) == null) {
            return;
        }
        aVar.sendEmptyMessageDelayed(9, 100L);
    }

    /* renamed from: a */
    public final void m4812a(Messenger messenger, Bundle bundle) {
        float fM5105a;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty() && AuthUtil.m4994h()) {
                    double d = bundle.getDouble(DispatchConstants.LATITUDE);
                    double d2 = bundle.getDouble("lon");
                    float f = bundle.getFloat("radius");
                    long j = bundle.getLong("time");
                    m4797b(bundle);
                    AMapLocation aMapLocation = new AMapLocation("gps");
                    aMapLocation.setLatitude(d);
                    aMapLocation.setLocationType(1);
                    aMapLocation.setLongitude(d2);
                    aMapLocation.setAccuracy(f);
                    aMapLocation.setTime(j);
                    this.f5537f.m4625a(aMapLocation);
                    if (this.f5543m == null || this.f5543m.isNeedAddress()) {
                        if (this.f5534c != null) {
                            fM5105a = C1841ew.m5105a(new double[]{d, d2, this.f5534c.getLatitude(), this.f5534c.getLongitude()});
                            if (fM5105a < AuthUtil.m4995i() * 3) {
                                Bundle bundle2 = new Bundle();
                                bundle2.setClassLoader(AMapLocation.class.getClassLoader());
                                bundle2.putInt("I_MAX_GEO_DIS", AuthUtil.m4995i() * 3);
                                bundle2.putInt("I_MIN_GEO_DIS", AuthUtil.m4995i());
                                bundle2.putParcelable("loc", this.f5534c);
                                m4786a(messenger, 6, bundle2);
                            }
                        } else {
                            fM5105a = -1.0f;
                        }
                        if (fM5105a == -1.0f || fM5105a > AuthUtil.m4995i()) {
                            m4784a(bundle);
                            this.f5534c = this.f5537f.m4617a(d, d2);
                        }
                    }
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "ApsServiceCore", "doLocationGeo");
            }
        }
    }

    /* renamed from: a */
    public final boolean m4813a(String str) {
        if (TextUtils.isEmpty(this.f5542l)) {
            this.f5542l = CoreUtil.m5021b(this.f5536e);
        }
        return !TextUtils.isEmpty(str) && str.equals(this.f5542l);
    }

    /* renamed from: b */
    public final Handler m4814b() {
        return this.f5535d;
    }

    /* renamed from: c */
    public final void m4816c() {
        try {
            if (this.f5548r) {
                return;
            }
            c cVar = new c();
            this.f5549s = cVar;
            cVar.start();
            this.f5548r = true;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "startSocket");
        }
    }

    /* renamed from: d */
    public final void m4817d() {
        try {
            if (this.f5547q != null) {
                this.f5547q.close();
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "doStopScocket 1");
        }
        try {
            if (this.f5545o != null) {
                this.f5545o.close();
            }
        } catch (Throwable th2) {
            CoreUtil.m5014a(th2, "ApsServiceCore", "doStopScocket 2");
        }
        try {
            if (this.f5549s != null) {
                this.f5549s.interrupt();
            }
        } catch (Throwable unused) {
        }
        this.f5549s = null;
        this.f5545o = null;
        this.f5546p = false;
        this.f5548r = false;
    }

    /* renamed from: e */
    public final void m4818e() {
        try {
            if (this.f5538h != null) {
                this.f5538h.clear();
                this.f5538h = null;
            }
            try {
                if (this.f5527B != null) {
                    this.f5527B.clear();
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "apm", "des1");
            }
            if (this.f5526A != null) {
                this.f5526A.m5250c();
                this.f5526A = null;
            }
            m4817d();
            this.f5550t = false;
            this.f5551u = false;
            this.f5537f.m4632d();
            if (this.f5535d != null) {
                this.f5535d.removeCallbacksAndMessages(null);
            }
            this.f5535d = null;
            if (this.f5533b != null) {
                try {
                    Reflect.m5051a(this.f5533b, (Class<?>) HandlerThread.class, "quitSafely", new Object[0]);
                } catch (Throwable unused) {
                    this.f5533b.quit();
                }
            }
            this.f5533b = null;
            if (this.f5539i != null && this.f5540j != 0 && this.f5541k != 0) {
                long jM5127b = C1841ew.m5127b() - this.f5540j;
                ReportUtil.m5067a(this.f5536e, this.f5539i.m5085c(this.f5536e), this.f5539i.m5086d(this.f5536e), this.f5541k, jM5127b);
                this.f5539i.m5087e(this.f5536e);
            }
            ReportUtil.m5066a(this.f5536e);
            SDKLogHandler.m5331b();
            if (f5525g) {
                Process.killProcess(Process.myPid());
            }
        } catch (Throwable th2) {
            CoreUtil.m5014a(th2, "apm", "tdest");
        }
    }

    /* renamed from: b */
    public final void m4815b(Intent intent) {
        String stringExtra = intent.getStringExtra("a");
        if (!TextUtils.isEmpty(stringExtra)) {
            AuthConfigManager.m1712f(this.f5536e, stringExtra);
        }
        String stringExtra2 = intent.getStringExtra("b");
        this.f5532a = stringExtra2;
        AppInfo.f2503b = stringExtra2;
        String stringExtra3 = intent.getStringExtra("d");
        if (TextUtils.isEmpty(stringExtra3)) {
            return;
        }
        DeviceInfo.f1607d = stringExtra3;
    }
}
