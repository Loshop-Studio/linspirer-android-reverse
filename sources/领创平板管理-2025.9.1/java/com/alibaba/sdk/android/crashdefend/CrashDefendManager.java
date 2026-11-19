package com.alibaba.sdk.android.crashdefend;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.crashdefend.p010a.CrashDefendTimeState;
import com.alibaba.sdk.android.crashdefend.p010a.CrashDefendSdkRecord;
import com.alibaba.sdk.android.crashdefend.p011b.CrashDefendExecutor;
import com.alibaba.sdk.android.crashdefend.p012c.CrashDefendStateStore;
import com.alibaba.sdk.android.crashdefend.p012c.CrashDefendLogger;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* renamed from: com.alibaba.sdk.android.crashdefend.a */
/* loaded from: classes.dex */
public class CrashDefendManager {

    /* renamed from: a */
    public static volatile CrashDefendManager f886a;

    /* renamed from: b */
    public final Context f887b;

    /* renamed from: d */
    public CrashDefendSdkRecord f889d;

    /* renamed from: c */
    public final CrashDefendTimeState f888c = new CrashDefendTimeState();

    /* renamed from: f */
    public final Map<String, String> f891f = new HashMap();

    /* renamed from: g */
    public final int[] f892g = new int[5];

    /* renamed from: h */
    public final List<CrashDefendSdkRecord> f893h = new ArrayList();

    /* renamed from: e */
    public final ExecutorService f890e = new CrashDefendExecutor().m597a();

    /* renamed from: com.alibaba.sdk.android.crashdefend.a$a */
    public class a implements Runnable {

        /* renamed from: b */
        public CrashDefendSdkRecord f896b;

        /* renamed from: c */
        public int f897c;

        public a(CrashDefendSdkRecord c0514b, int i) {
            this.f896b = c0514b;
            this.f897c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            do {
                try {
                    Thread.sleep(1000L);
                    i = this.f897c - 1;
                    this.f897c = i;
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception e) {
                    Log.d("CrashDefend", e.getMessage(), e);
                }
            } while (i > 0);
            if (i <= 0) {
                CrashDefendManager.this.m594c(this.f896b);
                CrashDefendStateStore.m599a(CrashDefendManager.this.f887b, CrashDefendManager.this.f888c, CrashDefendManager.this.f893h);
                return;
            }
            return;
        }
    }

    public CrashDefendManager(Context context) {
        this.f887b = context.getApplicationContext();
        for (int i = 0; i < 5; i++) {
            this.f892g[i] = (i * 5) + 5;
        }
        this.f891f.put("sdkId", "crashdefend");
        this.f891f.put(Constants.KEY_SDK_VERSION, "0.0.6");
        try {
            m585a();
            m591b();
        } catch (Exception e) {
            Log.d("CrashDefend", e.getMessage(), e);
        }
    }

    /* renamed from: a */
    public static CrashDefendManager m584a(Context context) {
        if (f886a == null) {
            synchronized (CrashDefendManager.class) {
                if (f886a == null) {
                    f886a = new CrashDefendManager(context);
                }
            }
        }
        return f886a;
    }

    /* renamed from: a */
    private void m585a() {
        if (!CrashDefendStateStore.m602b(this.f887b, this.f888c, this.f893h)) {
            this.f888c.f894a = 1L;
        } else {
            this.f888c.f894a++;
        }
    }

    /* renamed from: a */
    private boolean m587a(CrashDefendSdkRecord c0514b) {
        if (c0514b.f901d >= c0514b.f900c) {
            CrashDefendSdkRecord c0514b2 = this.f889d;
            if (c0514b2 == null || !c0514b2.f898a.equals(c0514b.f898a)) {
                return false;
            }
            c0514b.f901d = c0514b.f900c - 1;
        }
        c0514b.f904g = c0514b.f903f;
        return true;
    }

    /* renamed from: a */
    private boolean m588a(CrashDefendSdkRecord c0514b, CrashDefendCallback crashDefendCallback) {
        CrashDefendSdkRecord c0514bM590b;
        String str;
        if (c0514b != null && crashDefendCallback != null) {
            try {
                if (TextUtils.isEmpty(c0514b.f899b) || TextUtils.isEmpty(c0514b.f898a) || (c0514bM590b = m590b(c0514b, crashDefendCallback)) == null) {
                    return false;
                }
                boolean zM587a = m587a(c0514bM590b);
                c0514bM590b.f901d++;
                CrashDefendStateStore.m599a(this.f887b, this.f888c, this.f893h);
                if (zM587a) {
                    m592b(c0514bM590b);
                    str = "START:" + c0514bM590b.f898a + " --- limit:" + c0514bM590b.f900c + "  count:" + (c0514bM590b.f901d - 1) + "  restore:" + c0514bM590b.f905h + "  startSerialNumber:" + c0514bM590b.f904g + "  registerSerialNumber:" + c0514bM590b.f903f;
                } else if (c0514bM590b.f905h >= 5) {
                    crashDefendCallback.onSdkClosed(c0514bM590b.f905h);
                    str = "CLOSED: " + c0514bM590b.f898a + " --- restored " + c0514bM590b.f905h + ", has more than retry limit, so closed it";
                } else {
                    crashDefendCallback.onSdkStop(c0514bM590b.f900c, c0514bM590b.f901d - 1, c0514bM590b.f905h, c0514bM590b.f906i);
                    str = "STOP:" + c0514bM590b.f898a + " --- limit:" + c0514bM590b.f900c + "  count:" + (c0514bM590b.f901d - 1) + "  restore:" + c0514bM590b.f905h + "  startSerialNumber:" + c0514bM590b.f904g + "  registerSerialNumber:" + c0514bM590b.f903f;
                }
                CrashDefendLogger.m607b("CrashDefend", str);
                return true;
            } catch (Exception e) {
                Log.d("CrashDefend", e.getMessage(), e);
            }
        }
        return false;
    }

    /* renamed from: b */
    private synchronized CrashDefendSdkRecord m590b(CrashDefendSdkRecord c0514b, CrashDefendCallback crashDefendCallback) {
        CrashDefendSdkRecord c0514b2 = null;
        if (this.f893h.size() > 0) {
            Iterator<CrashDefendSdkRecord> it = this.f893h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                CrashDefendSdkRecord next = it.next();
                if (next != null && next.f898a.equals(c0514b.f898a)) {
                    if (!next.f899b.equals(c0514b.f899b)) {
                        next.f899b = c0514b.f899b;
                        next.f900c = c0514b.f900c;
                        next.f902e = c0514b.f902e;
                        next.f901d = 0;
                        next.f905h = 0;
                        next.f906i = 0L;
                    }
                    if (next.f907j) {
                        CrashDefendLogger.m607b("CrashDefend", "SDK " + c0514b.f898a + " has been registered");
                        return null;
                    }
                    next.f907j = true;
                    next.f908k = crashDefendCallback;
                    next.f903f = this.f888c.f894a;
                    c0514b2 = next;
                }
            }
        }
        if (c0514b2 == null) {
            c0514b2 = (CrashDefendSdkRecord) c0514b.clone();
            c0514b2.f907j = true;
            c0514b2.f908k = crashDefendCallback;
            c0514b2.f901d = 0;
            c0514b2.f903f = this.f888c.f894a;
            this.f893h.add(c0514b2);
        }
        return c0514b2;
    }

    /* renamed from: b */
    private void m591b() {
        String str;
        String str2;
        this.f889d = null;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f893h) {
            for (CrashDefendSdkRecord c0514b : this.f893h) {
                if (c0514b.f901d >= c0514b.f900c) {
                    arrayList.add(c0514b);
                }
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                CrashDefendSdkRecord c0514b2 = (CrashDefendSdkRecord) it.next();
                if (c0514b2.f905h < 5) {
                    long j = this.f888c.f894a - this.f892g[c0514b2.f905h];
                    long j2 = (c0514b2.f904g - j) + 1;
                    CrashDefendLogger.m605a("CrashDefend", "after restart " + j2 + " times, sdk will be restore");
                    c0514b2.f906i = j2;
                    if (c0514b2.f904g < j) {
                        this.f889d = c0514b2;
                        break;
                    }
                } else {
                    CrashDefendLogger.m607b("CrashDefend", "SDK " + c0514b2.f898a + " has been closed");
                }
            }
            if (this.f889d == null) {
                str = "CrashDefend";
                str2 = "NO SDK restore";
            } else {
                this.f889d.f905h++;
                str = "CrashDefend";
                str2 = this.f889d.f898a + " will restore --- startSerialNumber:" + this.f889d.f904g + "   crashCount:" + this.f889d.f901d;
            }
            CrashDefendLogger.m607b(str, str2);
        }
    }

    /* renamed from: b */
    private void m592b(CrashDefendSdkRecord c0514b) {
        if (c0514b == null) {
            return;
        }
        m595d(c0514b);
        CrashDefendCallback crashDefendCallback = c0514b.f908k;
        if (crashDefendCallback != null) {
            crashDefendCallback.onSdkStart(c0514b.f900c, c0514b.f901d - 1, c0514b.f905h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m594c(CrashDefendSdkRecord c0514b) {
        if (c0514b == null) {
            return;
        }
        c0514b.f901d = 0;
        c0514b.f905h = 0;
    }

    /* renamed from: d */
    private void m595d(CrashDefendSdkRecord c0514b) {
        if (c0514b == null) {
            return;
        }
        this.f890e.execute(new a(c0514b, c0514b.f902e));
    }

    /* renamed from: a */
    public boolean m596a(String str, String str2, int i, int i2, CrashDefendCallback crashDefendCallback) {
        CrashDefendSdkRecord c0514b = new CrashDefendSdkRecord();
        c0514b.f898a = str;
        c0514b.f899b = str2;
        c0514b.f900c = i;
        c0514b.f902e = i2;
        return m588a(c0514b, crashDefendCallback);
    }
}
