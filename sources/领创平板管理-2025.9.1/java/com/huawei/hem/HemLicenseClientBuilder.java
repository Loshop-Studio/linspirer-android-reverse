package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.common.internal.ClientSettings;

/* renamed from: com.huawei.hem.o7 */
/* loaded from: classes.dex */
public final class HemLicenseClientBuilder extends AbstractClientBuilder<HemLicenseHmsClient, HemLicenseApiOptions> {
    @Override // com.huawei.hms.common.internal.AbstractClientBuilder
    public final /* synthetic */ AnyClient buildClient(Context context, ClientSettings clientSettings, BaseHmsClient.OnConnectionFailedListener onConnectionFailedListener, BaseHmsClient.ConnectionCallbacks connectionCallbacks) {
        return new HemLicenseHmsClient(context, clientSettings, onConnectionFailedListener, connectionCallbacks);
    }
}
