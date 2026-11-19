package com.loc;

import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.text.TextUtils;
import com.huawei.hem.C0994h1;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: HistoryLocationRecorder.java */
/* renamed from: com.loc.eb */
/* loaded from: classes.dex */
public final class HistoryLocationRecorder {

    /* renamed from: b */
    public File f5569b;

    /* renamed from: d */
    public Handler f5571d;

    /* renamed from: e */
    public String f5572e;

    /* renamed from: f */
    public boolean f5573f;

    /* renamed from: a */
    public LinkedList<HistoryLocation> f5568a = new LinkedList<>();

    /* renamed from: c */
    public boolean f5570c = false;

    /* renamed from: g */
    public Runnable f5574g = new Runnable() { // from class: com.loc.eb.1
        @Override // java.lang.Runnable
        public final void run() throws IOException {
            if (HistoryLocationRecorder.this.f5570c) {
                return;
            }
            if (HistoryLocationRecorder.this.f5573f) {
                HistoryLocationRecorder.this.m4823b();
                HistoryLocationRecorder.m4827d(HistoryLocationRecorder.this);
            }
            if (HistoryLocationRecorder.this.f5571d != null) {
                HistoryLocationRecorder.this.f5571d.postDelayed(HistoryLocationRecorder.this.f5574g, 60000L);
            }
        }
    };

    public HistoryLocationRecorder(Context context, Handler handler) {
        this.f5572e = null;
        this.f5571d = handler;
        String path = context.getFilesDir().getPath();
        if (this.f5572e == null) {
            this.f5572e = C1841ew.m5156m(context);
        }
        try {
            this.f5569b = new File(path, "hisloc");
        } catch (Throwable th) {
            ALLog.m4567a(th);
        }
        m4821a();
        Handler handler2 = this.f5571d;
        if (handler2 != null) {
            handler2.removeCallbacks(this.f5574g);
            this.f5571d.postDelayed(this.f5574g, 60000L);
        }
    }

    /* renamed from: a */
    private void m4821a() {
        LinkedList<HistoryLocation> linkedList = this.f5568a;
        if (linkedList == null || linkedList.size() <= 0) {
            Iterator<String> it = C1841ew.m5111a(this.f5569b).iterator();
            while (it.hasNext()) {
                try {
                    String str = new String(C1823ee.m4877b(C0994h1.m1934e(it.next()), this.f5572e), "UTF-8");
                    HistoryLocation c1819ea = new HistoryLocation();
                    c1819ea.m4820a(new JSONObject(str));
                    this.f5568a.add(c1819ea);
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4823b() throws IOException {
        StringBuilder sb = new StringBuilder();
        Iterator<HistoryLocation> it = this.f5568a.iterator();
        while (it.hasNext()) {
            try {
                sb.append(C0994h1.m1933d(C1823ee.m4874a(it.next().m4819a().getBytes("UTF-8"), this.f5572e)) + "\n");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        C1841ew.m5112a(this.f5569b, string);
    }

    /* renamed from: b */
    public static boolean m4825b(ArrayList<Cgi> arrayList, ArrayList<AmapWifi> arrayList2) {
        return arrayList == null || arrayList.size() <= 0 || arrayList2 == null || arrayList2.size() <= 0 || (((long) arrayList.size()) < 4 && ((long) arrayList2.size()) < 20);
    }

    /* renamed from: d */
    public static /* synthetic */ boolean m4827d(HistoryLocationRecorder c1820eb) {
        c1820eb.f5573f = false;
        return false;
    }

    /* renamed from: a */
    public final List<HistoryLocation> m4830a(ArrayList<Cgi> arrayList, ArrayList<AmapWifi> arrayList2) {
        if (!m4825b(arrayList, arrayList2)) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        Iterator<HistoryLocation> it = this.f5568a.iterator();
        while (it.hasNext()) {
            HistoryLocation next = it.next();
            if (jCurrentTimeMillis - next.f5563d < 21600000000L) {
                arrayList3.add(next);
                i++;
            }
            if (i == 10) {
                break;
            }
        }
        return arrayList3;
    }

    /* renamed from: a */
    public final void m4831a(HistoryLocation c1819ea) {
        Iterator<HistoryLocation> it = this.f5568a.iterator();
        HistoryLocation c1819ea2 = null;
        int i = 0;
        HistoryLocation c1819ea3 = null;
        while (it.hasNext()) {
            HistoryLocation next = it.next();
            if (next.f5560a == 1) {
                if (c1819ea3 == null) {
                    c1819ea3 = next;
                }
                i++;
                c1819ea2 = next;
            }
        }
        if (c1819ea2 != null) {
            new Location("gps");
            if (c1819ea.f5563d - c1819ea2.f5563d < 20000 && C1841ew.m5105a(new double[]{c1819ea.f5561b, c1819ea.f5562c, c1819ea2.f5561b, c1819ea2.f5562c}) < 20.0f) {
                return;
            }
        }
        if (i >= 5) {
            this.f5568a.remove(c1819ea3);
        }
        if (this.f5568a.size() >= 10) {
            this.f5568a.removeFirst();
        }
        this.f5568a.add(c1819ea);
        this.f5573f = true;
    }

    /* renamed from: a */
    public final void m4832a(boolean z) {
        if (!z) {
            this.f5574g.run();
        }
        Handler handler = this.f5571d;
        if (handler != null) {
            handler.removeCallbacks(this.f5574g);
        }
        this.f5570c = true;
    }

    /* renamed from: b */
    public final void m4833b(HistoryLocation c1819ea) {
        if (this.f5568a.size() > 0) {
            int i = c1819ea.f5560a;
            if (i != 6 && i != 5) {
                if (this.f5568a.contains(c1819ea)) {
                    return;
                }
                if (this.f5568a.size() >= 10) {
                    this.f5568a.removeFirst();
                }
                this.f5568a.add(c1819ea);
                this.f5573f = true;
                return;
            }
            HistoryLocation last = this.f5568a.getLast();
            if (last.f5562c == c1819ea.f5562c && last.f5561b == c1819ea.f5561b && last.f5564e == c1819ea.f5564e) {
                return;
            }
            if (this.f5568a.size() >= 10) {
                this.f5568a.removeFirst();
            }
            this.f5568a.add(c1819ea);
            this.f5573f = true;
        }
    }
}
