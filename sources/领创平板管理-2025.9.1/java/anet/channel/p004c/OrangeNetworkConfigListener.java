package anet.channel.p004c;

import com.taobao.orange.OrangeConfigListenerV1;

/* compiled from: Taobao */
/* renamed from: anet.channel.c.b */
/* loaded from: classes.dex */
public class OrangeNetworkConfigListener implements OrangeConfigListenerV1 {

    /* renamed from: a */
    public final /* synthetic */ OrangeNetworkConfig f181a;

    public OrangeNetworkConfigListener(OrangeNetworkConfig c0319a) {
        this.f181a = c0319a;
    }

    public void onConfigUpdate(String str, boolean z) {
        this.f181a.onConfigUpdate(str);
    }
}
