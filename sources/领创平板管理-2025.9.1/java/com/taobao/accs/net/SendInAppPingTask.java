package com.taobao.accs.net;

import android.content.Context;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.common.Constants;
import com.taobao.accs.data.Message;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.l */
/* loaded from: classes.dex */
public class SendInAppPingTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AccsInAppConnection f6261a;

    public SendInAppPingTask(AccsInAppConnection c1948j) {
        this.f6261a = c1948j;
    }

    @Override // java.lang.Runnable
    public void run() throws JSONException {
        this.f6261a.f6250t.mo669i("sendAccsHeartbeatMessage");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("dataType", "pingreq");
            jSONObject.put("timeInterval", this.f6261a.f6245o);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        ACCSManager.AccsRequest accsRequest = new ACCSManager.AccsRequest(null, null, jSONObject.toString().getBytes(), UUID.randomUUID().toString());
        accsRequest.setTarget("accs-iot");
        accsRequest.setTargetServiceName("sal");
        AccsInAppConnection c1948j = this.f6261a;
        Context context = c1948j.f6212d;
        String packageName = context.getPackageName();
        this.f6261a.f6217i.getAppKey();
        this.f6261a.mo5628a(Message.m5488a(c1948j, context, packageName, Constants.TARGET_SERVICE, accsRequest, true), true);
    }
}
