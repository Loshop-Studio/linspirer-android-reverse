package com.taobao.accs.data;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.appmonitor.AppMonitor;
import com.alibaba.sdk.android.error.ErrorCode;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.AccsState;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.data.Message;
import com.taobao.accs.flowcontrol.FlowControl;
import com.taobao.accs.net.AbstractC1940b;
import com.taobao.accs.net.C1948j;
import com.taobao.accs.p072ut.monitor.NetPerformanceMonitor;
import com.taobao.accs.p072ut.monitor.TrafficsMonitor;
import com.taobao.accs.p072ut.p073a.C1965a;
import com.taobao.accs.p072ut.p073a.C1966b;
import com.taobao.accs.p072ut.p073a.C1968d;
import com.taobao.accs.p072ut.p073a.C1969e;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.C1980h;
import com.taobao.accs.utl.JsonUtility;
import com.taobao.accs.utl.UTMini;
import com.taobao.accs.utl.UtilityImpl;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ScheduledFuture;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.d */
/* loaded from: classes.dex */
public class C1921d {

    /* renamed from: b */
    public int f6142b;

    /* renamed from: c */
    public TrafficsMonitor f6143c;

    /* renamed from: d */
    public FlowControl f6144d;

    /* renamed from: h */
    public Context f6148h;

    /* renamed from: i */
    public C1968d f6149i;

    /* renamed from: j */
    public Message f6150j;

    /* renamed from: k */
    public AbstractC1940b f6151k;

    /* renamed from: l */
    public String f6152l;

    /* renamed from: f */
    public ConcurrentMap<Message.C1915a, Message> f6146f = new ConcurrentHashMap();

    /* renamed from: a */
    public ConcurrentMap<String, ScheduledFuture<?>> f6141a = new ConcurrentHashMap();

    /* renamed from: g */
    public boolean f6147g = false;

    /* renamed from: e */
    public String f6145e = "";

    /* renamed from: m */
    public LinkedHashMap<String, String> f6153m = new LinkedHashMap<String, String>() { // from class: com.taobao.accs.data.MessageHandler$1
        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 50;
        }
    };

    /* renamed from: n */
    public Map<String, C1918a> f6154n = new HashMap();

    /* renamed from: o */
    public Runnable f6155o = new RunnableC1923f(this);

    public C1921d(Context context, AbstractC1940b abstractC1940b) throws IOException {
        String str;
        this.f6152l = "MsgRecv_";
        this.f6148h = context;
        this.f6151k = abstractC1940b;
        this.f6143c = new TrafficsMonitor(context);
        this.f6144d = new FlowControl(this.f6148h);
        if (abstractC1940b == null) {
            str = this.f6152l;
        } else {
            str = this.f6152l + abstractC1940b.f6221m;
        }
        this.f6152l = str;
        m5548i();
        m5568h();
    }

    /* renamed from: b */
    private boolean m5544b(ErrorCode errorCode) {
        return errorCode.getCodeInt() == AccsErrorCode.SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.REQ_TIME_OUT.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.SPDY_CON_DISCONNECTED.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.INAPP_CON_DISCONNECTED.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.SPDY_PING_TIME_OUT.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.NO_NETWORK.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.NETWORKSDK_SPDY_CLOSE_ERROR.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.NETWORK_INAPP_TIMEOUT.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.NETWORK_INAPP_CONNECT_FAIL.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.NETWORK_INAPP_NO_STRATEGY.getCodeInt() || errorCode.getCodeInt() == AccsErrorCode.NETWORK_INAPP_EXCEPTION.getCodeInt();
    }

    /* renamed from: i */
    private void m5548i() throws IOException {
        try {
            File file = new File(this.f6148h.getDir(Constants.SHARED_FOLDER, 0), "message" + this.f6151k.m5646i());
            if (!file.exists()) {
                ALog.m5726d(this.f6152l, "message file not exist", new Object[0]);
                return;
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return;
                }
                this.f6153m.put(line, line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    private void m5549j() throws IOException {
        try {
            FileWriter fileWriter = new FileWriter(new File(this.f6148h.getDir(Constants.SHARED_FOLDER, 0), "message" + this.f6151k.m5646i()));
            fileWriter.write("");
            Iterator<String> it = this.f6153m.keySet().iterator();
            while (it.hasNext()) {
                fileWriter.append((CharSequence) it.next()).append((CharSequence) "\r\n");
            }
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m5558a(byte[] bArr) throws IOException {
        m5559a(bArr, (String) null);
    }

    /* renamed from: c */
    public boolean m5563c() {
        return this.f6147g;
    }

    /* renamed from: d */
    public int m5564d() {
        return this.f6146f.size();
    }

    /* renamed from: e */
    public Collection<Message> m5565e() {
        return this.f6146f.values();
    }

    /* renamed from: f */
    public Set<Message.C1915a> m5566f() {
        return this.f6146f.keySet();
    }

    /* renamed from: g */
    public C1968d m5567g() {
        return this.f6149i;
    }

    /* renamed from: h */
    public void m5568h() {
        try {
            ThreadPoolExecutorFactory.getScheduledExecutor().execute(this.f6155o);
        } catch (Throwable th) {
            ALog.m5727e(this.f6152l, "restoreTraffics", th, new Object[0]);
        }
    }

    /* renamed from: c */
    private boolean m5546c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.f6153m.containsKey(str);
    }

    /* renamed from: d */
    private void m5547d(String str) throws IOException {
        if (TextUtils.isEmpty(str) || this.f6153m.containsKey(str)) {
            return;
        }
        this.f6153m.put(str, str);
        m5549j();
    }

    /* renamed from: a */
    public void m5559a(byte[] bArr, String str) throws IOException {
        if (ALog.isPrintLog(ALog.Level.I)) {
            ALog.m5729i(this.f6152l, "onMessage", Constants.KEY_HOST, str);
        }
        C1980h c1980h = new C1980h(bArr);
        try {
            int iM5785a = c1980h.m5785a();
            int i = (iM5785a & 240) >> 4;
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(this.f6152l, "version:" + i, new Object[0]);
            }
            int i2 = iM5785a & 15;
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(this.f6152l, "compress:" + i2, new Object[0]);
            }
            c1980h.m5785a();
            int iM5787b = c1980h.m5787b();
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(this.f6152l, "totalLen:" + iM5787b, new Object[0]);
            }
            int i3 = 0;
            while (i3 < iM5787b) {
                int iM5787b2 = c1980h.m5787b();
                int i4 = i3 + 2;
                if (iM5787b2 <= 0) {
                    throw new IOException("data format error");
                }
                byte[] bArr2 = new byte[iM5787b2];
                c1980h.read(bArr2);
                if (ALog.isPrintLog(ALog.Level.D)) {
                    ALog.m5726d(this.f6152l, "buf len:" + iM5787b2, new Object[0]);
                }
                i3 = i4 + iM5787b2;
                m5536a(i2, bArr2, str, i);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    /* renamed from: c */
    private Intent m5545c(Message message) {
        Intent intent = new Intent(Constants.ACTION_RECEIVE);
        intent.setPackage(message.f6119s);
        intent.putExtra("command", message.f6120t);
        intent.putExtra(Constants.KEY_SERVICE_ID, message.f6085H);
        intent.putExtra(Constants.KEY_USER_ID, message.f6084G);
        Integer num = message.f6120t;
        if (num != null && num.intValue() == 100) {
            intent.putExtra(Constants.KEY_DATA_ID, message.f6092O);
        }
        return intent;
    }

    /* renamed from: b */
    public void m5561b() {
        ALog.m5726d(this.f6152l, "onRcvPing", new Object[0]);
        synchronized (C1921d.class) {
            this.f6147g = false;
        }
    }

    /* renamed from: b */
    public void m5562b(Message message) {
        if (this.f6146f.keySet().size() > 0) {
            Iterator<Message.C1915a> it = this.f6146f.keySet().iterator();
            while (it.hasNext()) {
                Message message2 = this.f6146f.get(it.next());
                if (message2 != null && message2.f6120t != null && message2.m5517f().equals(message.m5517f())) {
                    switch (message.f6120t.intValue()) {
                        case 1:
                        case 2:
                            if (message2.f6120t.intValue() == 1 || message2.f6120t.intValue() == 2) {
                                message2.f6105e = true;
                                break;
                            }
                            break;
                        case 3:
                        case 4:
                            if (message2.f6120t.intValue() == 3 || message2.f6120t.intValue() == 4) {
                                message2.f6105e = true;
                                break;
                            }
                            break;
                        case 5:
                        case 6:
                            if (message2.f6120t.intValue() == 5 || message2.f6120t.intValue() == 6) {
                                message2.f6105e = true;
                                break;
                            }
                            break;
                    }
                }
                if (message2 != null && message2.f6105e) {
                    ALog.m5728e(this.f6152l, "cancelControlMessage", "command", message2.f6120t);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0462 A[Catch: Exception -> 0x07ef, TryCatch #0 {Exception -> 0x07ef, blocks: (B:159:0x0416, B:161:0x0420, B:165:0x0432, B:167:0x043a, B:170:0x044d, B:174:0x045e, B:176:0x0462, B:177:0x0467, B:186:0x0488, B:192:0x0499, B:195:0x04ab, B:204:0x04de, B:206:0x04e4, B:214:0x0501, B:216:0x0512), top: B:332:0x0416 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0483 A[Catch: Exception -> 0x07df, TRY_LEAVE, TryCatch #4 {Exception -> 0x07df, blocks: (B:180:0x047d, B:182:0x0483, B:190:0x048d), top: B:339:0x047d }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x055b A[PHI: r4
      0x055b: PHI (r4v23 byte[]) = (r4v78 byte[]), (r4v79 byte[]) binds: [B:203:0x04dc, B:213:0x04ff] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x056d A[Catch: Exception -> 0x0782, TRY_ENTER, TRY_LEAVE, TryCatch #29 {Exception -> 0x0782, blocks: (B:233:0x0563, B:236:0x056d, B:240:0x0580, B:249:0x05bf, B:252:0x05c9, B:254:0x05d7, B:255:0x05dd, B:257:0x05e1, B:259:0x05ec, B:261:0x063c, B:263:0x064e, B:267:0x06ae, B:266:0x06ad, B:241:0x058c, B:243:0x0594, B:247:0x05a7), top: B:386:0x0563 }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x058c A[Catch: Exception -> 0x0782, TryCatch #29 {Exception -> 0x0782, blocks: (B:233:0x0563, B:236:0x056d, B:240:0x0580, B:249:0x05bf, B:252:0x05c9, B:254:0x05d7, B:255:0x05dd, B:257:0x05e1, B:259:0x05ec, B:261:0x063c, B:263:0x064e, B:267:0x06ae, B:266:0x06ad, B:241:0x058c, B:243:0x0594, B:247:0x05a7), top: B:386:0x0563 }] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x05d7 A[Catch: Exception -> 0x0782, TryCatch #29 {Exception -> 0x0782, blocks: (B:233:0x0563, B:236:0x056d, B:240:0x0580, B:249:0x05bf, B:252:0x05c9, B:254:0x05d7, B:255:0x05dd, B:257:0x05e1, B:259:0x05ec, B:261:0x063c, B:263:0x064e, B:267:0x06ae, B:266:0x06ad, B:241:0x058c, B:243:0x0594, B:247:0x05a7), top: B:386:0x0563 }] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x05e1 A[Catch: Exception -> 0x0782, TryCatch #29 {Exception -> 0x0782, blocks: (B:233:0x0563, B:236:0x056d, B:240:0x0580, B:249:0x05bf, B:252:0x05c9, B:254:0x05d7, B:255:0x05dd, B:257:0x05e1, B:259:0x05ec, B:261:0x063c, B:263:0x064e, B:267:0x06ae, B:266:0x06ad, B:241:0x058c, B:243:0x0594, B:247:0x05a7), top: B:386:0x0563 }] */
    /* JADX WARN: Removed duplicated region for block: B:258:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x063c A[Catch: Exception -> 0x0782, TryCatch #29 {Exception -> 0x0782, blocks: (B:233:0x0563, B:236:0x056d, B:240:0x0580, B:249:0x05bf, B:252:0x05c9, B:254:0x05d7, B:255:0x05dd, B:257:0x05e1, B:259:0x05ec, B:261:0x063c, B:263:0x064e, B:267:0x06ae, B:266:0x06ad, B:241:0x058c, B:243:0x0594, B:247:0x05a7), top: B:386:0x0563 }] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0648  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x06ab  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x06ad A[Catch: Exception -> 0x0782, TryCatch #29 {Exception -> 0x0782, blocks: (B:233:0x0563, B:236:0x056d, B:240:0x0580, B:249:0x05bf, B:252:0x05c9, B:254:0x05d7, B:255:0x05dd, B:257:0x05e1, B:259:0x05ec, B:261:0x063c, B:263:0x064e, B:267:0x06ae, B:266:0x06ad, B:241:0x058c, B:243:0x0594, B:247:0x05a7), top: B:386:0x0563 }] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x06f1 A[Catch: Exception -> 0x0768, TRY_LEAVE, TryCatch #9 {Exception -> 0x0768, blocks: (B:273:0x06f1, B:276:0x06f9, B:279:0x0704, B:282:0x0717, B:271:0x06e6), top: B:350:0x06e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x079c A[Catch: Exception -> 0x07da, TRY_LEAVE, TryCatch #6 {Exception -> 0x07da, blocks: (B:291:0x075c, B:309:0x079c), top: B:344:0x0481 }] */
    /* JADX WARN: Removed duplicated region for block: B:393:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0195 A[Catch: Exception -> 0x07fb, TRY_ENTER, TRY_LEAVE, TryCatch #24 {Exception -> 0x07fb, blocks: (B:53:0x014b, B:57:0x0188, B:60:0x0195, B:63:0x01a3, B:69:0x01e8, B:71:0x01ec, B:73:0x01f0, B:75:0x0203, B:77:0x020b, B:51:0x0136), top: B:377:0x0136 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e5  */
    /* JADX WARN: Type inference failed for: r0v152, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v2, types: [int] */
    /* JADX WARN: Type inference failed for: r14v4, types: [int] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Type inference failed for: r1v105 */
    /* JADX WARN: Type inference failed for: r1v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v67 */
    /* JADX WARN: Type inference failed for: r1v69 */
    /* JADX WARN: Type inference failed for: r2v10, types: [int] */
    /* JADX WARN: Type inference failed for: r2v102, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v88, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r2v90, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r2v99, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r34v0, types: [com.taobao.accs.data.d] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v46, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v50, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v76 */
    /* JADX WARN: Type inference failed for: r3v82 */
    /* JADX WARN: Type inference failed for: r3v83 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v58 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v71 */
    /* JADX WARN: Type inference failed for: r4v77 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v44, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v45, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r6v47 */
    /* JADX WARN: Type inference failed for: r6v50, types: [com.taobao.accs.data.Message] */
    /* JADX WARN: Type inference failed for: r6v53, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v64 */
    /* JADX WARN: Type inference failed for: r6v65 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v29, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m5536a(int r35, byte[] r36, java.lang.String r37, int r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2174
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.accs.data.C1921d.m5536a(int, byte[], java.lang.String, int):void");
    }

    /* renamed from: b */
    public Message m5560b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f6146f.remove(new Message.C1915a(0, str));
    }

    /* renamed from: b */
    private void m5543b(Message message, ErrorCode errorCode) {
        if (message == null) {
            return;
        }
        String deviceId = UtilityImpl.getDeviceId(this.f6148h);
        String str = System.currentTimeMillis() + "";
        boolean z = errorCode.getCodeInt() == AccsErrorCode.SUCCESS.getCodeInt();
        int iIntValue = message.f6120t.intValue();
        if (iIntValue == 1) {
            C1965a c1965a = new C1965a();
            c1965a.f6321a = deviceId;
            c1965a.f6322b = str;
            c1965a.f6323c = z;
            c1965a.m5713a(errorCode);
            c1965a.m5712a();
            return;
        }
        if (iIntValue != 3) {
            return;
        }
        C1966b c1966b = new C1966b();
        c1966b.f6327a = deviceId;
        c1966b.f6328b = str;
        c1966b.f6329c = z;
        c1966b.f6331e = message.f6084G;
        c1966b.m5717a(errorCode);
        c1966b.m5716a();
    }

    /* renamed from: a */
    private byte[] m5541a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = gZIPInputStream.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                return byteArrayOutputStream.toByteArray();
            } catch (Exception e) {
                ALog.m5728e(this.f6152l, "uncompress data error " + e.toString(), new Object[0]);
                AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, "", "1", this.f6142b + " uncompress data error " + e.toString());
                try {
                    gZIPInputStream.close();
                    byteArrayOutputStream.close();
                } catch (Exception unused) {
                }
                return null;
            }
        } finally {
            try {
                gZIPInputStream.close();
                byteArrayOutputStream.close();
            } catch (Exception unused2) {
            }
        }
    }

    /* renamed from: a */
    private void m5538a(Message message, byte[] bArr, byte[] bArr2, String str) {
        ErrorCode httpCode;
        JSONArray jSONArrayOptJSONArray;
        ErrorCode errorCode = AccsErrorCode.SUCCESS;
        try {
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                if (ALog.isPrintLog(ALog.Level.D)) {
                    ALog.m5726d(this.f6152l, "handleControlMessage parse", "json", jSONObject.toString());
                }
                if (message.f6120t.intValue() == 100) {
                    httpCode = AccsErrorCode.SUCCESS;
                } else {
                    httpCode = AccsErrorCode.parseHttpCode(jSONObject.getInt("code"));
                }
                errorCode = httpCode;
                if (errorCode.getCodeInt() == AccsErrorCode.SUCCESS.getCodeInt()) {
                    int iIntValue = message.f6120t.intValue();
                    if (iIntValue == 1) {
                        AccsState.getInstance().m5450a(this.f6151k.f6221m, AccsState.BIND_APP_FROM_CACHE, Boolean.FALSE);
                        UtilityImpl.saveUtdid(Constants.SP_FILE_NAME, this.f6148h);
                        try {
                            this.f6151k.m5647j().m5478a(this.f6148h.getPackageName());
                            JSONObject jSONObject2 = jSONObject.getJSONObject(Constants.KEY_DATA);
                            this.f6145e = JsonUtility.getString(jSONObject2, Constants.KEY_DEVICE_TOKEN, null);
                            if (jSONObject2 != null && (jSONArrayOptJSONArray = jSONObject2.optJSONArray(Constants.KEY_PACKAGE_NAMES)) != null) {
                                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                    String string = jSONArrayOptJSONArray.getString(i);
                                    if (UtilityImpl.m5756c(this.f6148h, string)) {
                                        this.f6151k.m5647j().m5478a(message.f6119s);
                                    } else {
                                        ALog.m5729i(this.f6152l, "unbind app", "pkg", string);
                                        this.f6151k.m5638b(Message.m5490a(this.f6151k, string), true);
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            ALog.m5729i(this.f6152l, "no token/invalid app", th);
                        }
                    } else if (iIntValue != 2) {
                        if (iIntValue == 100 && (this.f6151k instanceof C1948j) && !message.f6114n.equals(Constants.TARGET_SERVICE_ST)) {
                            ((C1948j) this.f6151k).m5679a(jSONObject);
                        }
                    } else {
                        this.f6151k.m5647j().m5479b(message.f6119s);
                    }
                } else if (errorCode.getCodeInt() == AccsErrorCode.APP_NOT_BIND.getCodeInt()) {
                    this.f6151k.m5647j().m5479b(message.f6119s);
                }
                if (errorCode.getCodeInt() != AccsErrorCode.SUCCESS.getCodeInt()) {
                    ALog.m5728e(this.f6152l, "handleControlMessage parse", "json", jSONObject.toString());
                }
            } catch (Throwable th2) {
                th = th2;
                ALog.m5727e(this.f6152l, "handleControlMessage", th, new Object[0]);
                AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, "handleControlMessage", "", this.f6142b + th.toString());
                m5555a(message, errorCode, null, bArr, null);
                m5557a(new TrafficsMonitor.C1971a(message.f6085H, GlobalAppRuntimeInfo.isAppBackground(), str, bArr2.length));
            }
        } catch (Throwable th3) {
            th = th3;
        }
        m5555a(message, errorCode, null, bArr, null);
        m5557a(new TrafficsMonitor.C1971a(message.f6085H, GlobalAppRuntimeInfo.isAppBackground(), str, bArr2.length));
    }

    /* renamed from: a */
    private Map<Integer, String> m5535a(C1980h c1980h) {
        HashMap map = null;
        if (c1980h == null) {
            return null;
        }
        try {
            int iM5787b = c1980h.m5787b();
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(this.f6152l, "extHeaderLen:" + iM5787b, new Object[0]);
            }
            int i = 0;
            while (i < iM5787b) {
                int iM5787b2 = c1980h.m5787b();
                int i2 = (64512 & iM5787b2) >> 10;
                int i3 = iM5787b2 & Message.EXT_HEADER_VALUE_MAX_LEN;
                String strM5786a = c1980h.m5786a(i3);
                i = i + 2 + i3;
                if (map == null) {
                    map = new HashMap();
                }
                map.put(Integer.valueOf(i2), strM5786a);
                if (ALog.isPrintLog(ALog.Level.D)) {
                    ALog.m5726d(this.f6152l, "", "extHeaderType", Integer.valueOf(i2), "value", strM5786a);
                }
            }
        } catch (Exception e) {
            ALog.m5727e(this.f6152l, "parseExtHeader", e, new Object[0]);
        }
        return map;
    }

    /* renamed from: a */
    public void m5554a(Message message, ErrorCode errorCode) {
        m5555a(message, errorCode, null, null, null);
    }

    /* renamed from: a */
    public void m5556a(Message message, ErrorCode errorCode, Map<Integer, String> map) {
        m5555a(message, errorCode, null, null, map);
    }

    /* renamed from: a */
    public void m5555a(Message message, ErrorCode errorCode, Message.ReqType reqType, byte[] bArr, Map<Integer, String> map) {
        ErrorCode errorCode2;
        byte[] bArr2;
        Map<Integer, String> map2;
        Message.ReqType reqType2;
        if (message.f6120t != null && message.m5509a() >= 0 && message.m5509a() != 2) {
            String str = message.f6092O;
            if (str != null) {
                this.f6141a.remove(str);
            }
            int iM5584a = this.f6144d.m5584a(map, message.f6085H);
            if (iM5584a != 0) {
                if (iM5584a == 2) {
                    errorCode2 = AccsErrorCode.SERVIER_HIGH_LIMIT;
                } else if (iM5584a == 3) {
                    errorCode2 = AccsErrorCode.SERVIER_HIGH_LIMIT_BRUSH;
                } else {
                    errorCode2 = AccsErrorCode.SERVIER_LOW_LIMIT;
                }
                reqType2 = null;
                bArr2 = null;
                map2 = null;
            } else {
                errorCode2 = errorCode;
                bArr2 = bArr;
                map2 = map;
                reqType2 = reqType;
            }
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(this.f6152l, "onResult", "command", message.f6120t, "erorcode", errorCode2);
            }
            if (message.f6120t.intValue() == 102) {
                return;
            }
            if ((message.f6120t.intValue() == 1 && errorCode2.getCodeInt() != AccsErrorCode.SUCCESS.getCodeInt()) || errorCode2.getCodeInt() == AccsErrorCode.APP_NOT_BIND.getCodeInt()) {
                this.f6151k.m5647j().m5479b(message.f6119s);
            }
            if (!message.f6105e) {
                if (m5544b(errorCode2) && message.f6120t.intValue() != 100 && message.f6095R <= Message.f6076a) {
                    message.f6097T = System.currentTimeMillis();
                    int i = message.f6095R + 1;
                    message.f6095R = i;
                    ALog.m5726d(this.f6152l, "onResult", "retryTimes", Integer.valueOf(i));
                    this.f6151k.m5638b(message, true);
                } else {
                    Intent intentM5545c = m5545c(message);
                    intentM5545c.putExtra(Constants.KEY_ERROR_OBJ, errorCode2);
                    Message.ReqType reqTypeValueOf = Message.ReqType.valueOf(3 & (message.f6111k >> 13));
                    if (reqType2 == Message.ReqType.RES || reqTypeValueOf == Message.ReqType.REQ) {
                        intentM5545c.putExtra(Constants.KEY_SEND_TYPE, Constants.SEND_TYPE_RES);
                    }
                    if (errorCode2.getCodeInt() == AccsErrorCode.SUCCESS.getCodeInt()) {
                        intentM5545c.putExtra(Constants.KEY_DATA, bArr2);
                    }
                    intentM5545c.putExtra(Constants.KEY_APP_KEY, this.f6151k.f6210b);
                    intentM5545c.putExtra(Constants.KEY_CONFIG_TAG, this.f6151k.f6221m);
                    m5540a(map2, intentM5545c);
                    C1924g.m5571a(this.f6148h, this.f6151k, intentM5545c);
                    if (!TextUtils.isEmpty(message.f6085H)) {
                        UTMini uTMini = UTMini.getInstance();
                        StringBuilder sbM1765j = CompilerOutline.m1765j("commandId=");
                        sbM1765j.append(message.f6120t);
                        String string = sbM1765j.toString();
                        StringBuilder sbM1765j2 = CompilerOutline.m1765j("serviceId=");
                        sbM1765j2.append(message.f6085H);
                        sbM1765j2.append(" errorCode=");
                        sbM1765j2.append(errorCode2);
                        sbM1765j2.append(" dataId=");
                        sbM1765j2.append(message.f6117q);
                        uTMini.commitEvent(66001, "MsgToBuss0", string, sbM1765j2.toString(), 221);
                        AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_TO_BUSS, "1commandId=" + message.f6120t + "serviceId=" + message.f6085H, 0.0d);
                    }
                }
            } else {
                ALog.m5728e(this.f6152l, "onResult message is cancel", "command", message.f6120t);
            }
            NetPerformanceMonitor netPerformanceMonitorM5516e = message.m5516e();
            if (netPerformanceMonitorM5516e != null) {
                netPerformanceMonitorM5516e.onToBizDate();
                URL url = message.f6106f;
                String string2 = url == null ? null : url.toString();
                if (errorCode2.getCodeInt() == AccsErrorCode.SUCCESS.getCodeInt()) {
                    netPerformanceMonitorM5516e.setRet(true);
                    if (message.f6095R > 0) {
                        AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_RESEND, "succ", 0.0d);
                        AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_RESEND, "succ_" + message.f6095R, 0.0d);
                    } else {
                        AppMonitorAdapter.commitAlarmSuccess("accs", BaseMonitor.ALARM_POINT_REQUEST, string2);
                    }
                } else {
                    if (message.f6095R > 0) {
                        AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_RESEND, "fail＿" + errorCode2, 0.0d);
                        AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_RESEND, "fail", 0.0d);
                    } else if (errorCode2.getCodeInt() != AccsErrorCode.NO_NETWORK.getCodeInt()) {
                        AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQUEST, string2, UtilityImpl.m5736a(errorCode2.getCodeInt()), this.f6142b + message.f6085H + message.f6096S);
                    }
                    netPerformanceMonitorM5516e.setRet(false);
                    netPerformanceMonitorM5516e.setFailReason(errorCode2);
                }
                AppMonitor.getInstance().commitStat(message.m5516e());
            }
            m5543b(message, errorCode2);
            return;
        }
        ALog.m5726d(this.f6152l, "onError, skip ping/ack", new Object[0]);
    }

    /* renamed from: a */
    public void m5551a() {
        ALog.m5726d(this.f6152l, "onSendPing", new Object[0]);
        synchronized (C1921d.class) {
            this.f6147g = true;
        }
    }

    /* renamed from: a */
    public void m5553a(Message message) {
        String str;
        Message message2 = this.f6150j;
        if (message2 != null && (str = message.f6092O) != null && message.f6085H != null && message2.f6092O.equals(str) && this.f6150j.f6085H.equals(message.f6085H)) {
            UTMini.getInstance().commitEvent(66001, "SEND_REPEAT", message.f6085H, message.f6092O, Long.valueOf(Thread.currentThread().getId()));
        }
        if (message.m5509a() == -1 || message.m5509a() == 2 || message.f6103c) {
            return;
        }
        this.f6146f.put(message.m5515d(), message);
    }

    /* renamed from: a */
    public void m5552a(ErrorCode errorCode) {
        this.f6147g = false;
        Message.C1915a[] c1915aArr = (Message.C1915a[]) this.f6146f.keySet().toArray(new Message.C1915a[0]);
        if (c1915aArr.length > 0) {
            ALog.m5726d(this.f6152l, "onNetworkFail", new Object[0]);
            for (Message.C1915a c1915a : c1915aArr) {
                Message messageRemove = this.f6146f.remove(c1915a);
                if (messageRemove != null) {
                    m5554a(messageRemove, errorCode);
                }
            }
        }
    }

    /* renamed from: a */
    public Message m5550a(String str) {
        return this.f6146f.get(new Message.C1915a(0, str));
    }

    /* renamed from: a */
    private byte[] m5542a(String str, Map<Integer, String> map, byte[] bArr) {
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    int i = Integer.parseInt(map.get(17));
                    int i2 = Integer.parseInt(map.get(16));
                    if (i2 <= 1) {
                        throw new RuntimeException("burstNums <= 1");
                    }
                    if (i >= 0 && i < i2) {
                        String str2 = map.get(18);
                        long j = 0;
                        try {
                            String str3 = map.get(15);
                            if (!TextUtils.isEmpty(str3)) {
                                j = Long.parseLong(str3);
                            }
                        } catch (Throwable th) {
                            ALog.m5731w(this.f6152l, "putBurstMessage", th, new Object[0]);
                        }
                        C1918a c1918a = this.f6154n.get(str);
                        if (c1918a == null) {
                            if (ALog.isPrintLog(ALog.Level.I)) {
                                ALog.m5729i(this.f6152l, "putBurstMessage", Constants.KEY_DATA_ID, str, "burstLength", Integer.valueOf(i2));
                            }
                            c1918a = new C1918a(str, i2, str2);
                            c1918a.m5532a(j);
                            this.f6154n.put(str, c1918a);
                        }
                        return c1918a.m5533a(i, i2, bArr);
                    }
                    throw new RuntimeException(String.format("burstNums:%s burstIndex:%s", Integer.valueOf(i2), Integer.valueOf(i)));
                }
            } catch (Throwable th2) {
                ALog.m5731w(this.f6152l, "putBurstMessage", th2, new Object[0]);
                return null;
            }
        }
        throw new RuntimeException("burstLength == 0");
    }

    /* renamed from: a */
    private void m5540a(Map<Integer, String> map, Intent intent) {
        if (map == null || intent == null) {
            return;
        }
        intent.putExtra(TaoBaseService.ExtraInfo.EXT_HEADER, (HashMap) map);
    }

    /* renamed from: a */
    private void m5537a(Intent intent, String str, String str2, short s) {
        if (intent != null) {
            if (!TextUtils.isEmpty(str)) {
                intent.putExtra("source", str);
            }
            if (!TextUtils.isEmpty(str2)) {
                intent.putExtra("target", str2);
            }
            intent.putExtra("flags", s);
        }
    }

    /* renamed from: a */
    private void m5539a(String str, String str2) {
        C1969e c1969e = new C1969e();
        c1969e.f6356a = UtilityImpl.getDeviceId(this.f6148h);
        c1969e.f6358c = str;
        StringBuilder sbM1765j = CompilerOutline.m1765j("");
        sbM1765j.append(System.currentTimeMillis());
        c1969e.f6359d = sbM1765j.toString();
        c1969e.f6361f = "";
        c1969e.f6360e = str2;
        c1969e.f6357b = "";
        c1969e.m5721a();
    }

    /* renamed from: a */
    public void m5557a(TrafficsMonitor.C1971a c1971a) {
        try {
            ThreadPoolExecutorFactory.getScheduledExecutor().execute(new RunnableC1922e(this, c1971a));
        } catch (Throwable th) {
            ALog.m5727e(this.f6152l, "addTrafficsInfo", th, new Object[0]);
        }
    }
}
