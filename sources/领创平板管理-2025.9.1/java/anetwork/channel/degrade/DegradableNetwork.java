package anetwork.channel.degrade;

import android.content.Context;
import anetwork.channel.aidl.adapter.RemoteNetworkDelegate;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class DegradableNetwork extends RemoteNetworkDelegate {
    public DegradableNetwork(Context context) {
        super(context, 1);
    }
}
