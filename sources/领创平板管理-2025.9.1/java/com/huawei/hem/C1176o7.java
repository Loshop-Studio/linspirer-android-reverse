package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.common.internal.ClientSettings;

/* renamed from: com.huawei.hem.o7 */
/* loaded from: classes.dex */
public final class C1176o7 extends AbstractClientBuilder<C1151n7, C1201p7> {
    @Override // com.huawei.hms.common.internal.AbstractClientBuilder
    public final /* synthetic */ AnyClient buildClient(Context context, ClientSettings clientSettings, BaseHmsClient.OnConnectionFailedListener onConnectionFailedListener, BaseHmsClient.ConnectionCallbacks connectionCallbacks) {
        return new C1151n7(context, clientSettings, onConnectionFailedListener, connectionCallbacks);
    }
}
