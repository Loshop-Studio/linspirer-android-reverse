package org.android.agoo.control;

import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.utl.ALog;
import org.android.agoo.common.Config;
import org.android.agoo.message.MessageService;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.a */
/* loaded from: classes.dex */
public class SaveAgooMessageTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ byte[] f6463a;

    /* renamed from: b */
    public final /* synthetic */ String f6464b;

    /* renamed from: c */
    public final /* synthetic */ AgooFactory f6465c;

    public SaveAgooMessageTask(AgooFactory agooFactory, byte[] bArr, String str) {
        this.f6465c = agooFactory;
        this.f6463a = bArr;
        this.f6464b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            String str = new String(this.f6463a, "utf-8");
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            if (length == 1) {
                String string = null;
                String string2 = null;
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    if (jSONObject != null) {
                        string = jSONObject.getString("i");
                        string2 = jSONObject.getString("p");
                    }
                }
                if (ALog.isPrintLog(ALog.Level.I)) {
                    ALog.m5729i(AgooFactory.TAG, "saveMsg msgId:" + string + ",message=" + str + ",currentPack=" + string2 + ",reportTimes=" + Config.m5835f(AgooFactory.mContext), new Object[0]);
                }
                if (TextUtils.isEmpty(string2) || !TextUtils.equals(string2, AgooFactory.mContext.getPackageName())) {
                    return;
                }
                if (TextUtils.isEmpty(this.f6464b)) {
                    this.f6465c.messageService.m5849a(string, str, MessageService.MSG_DB_READY_REPORT);
                } else {
                    this.f6465c.messageService.m5849a(string, str, this.f6464b);
                }
            }
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("saveMsg fail:");
            sbM1765j.append(th.toString());
            ALog.m5728e(AgooFactory.TAG, sbM1765j.toString(), new Object[0]);
        }
    }
}
