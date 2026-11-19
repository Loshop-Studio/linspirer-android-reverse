package anet.channel.detect;

import anet.channel.status.NetworkStatusHelper;
import anet.channel.thread.ThreadPoolExecutorFactory;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.a */
/* loaded from: classes.dex */
public class ExceptionDetectorNetworkListener implements NetworkStatusHelper.INetworkStatusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ExceptionDetector f199a;

    public ExceptionDetectorNetworkListener(ExceptionDetector exceptionDetector) {
        this.f199a = exceptionDetector;
    }

    @Override // anet.channel.status.NetworkStatusHelper.INetworkStatusChangeListener
    public void onNetworkStatusChanged(NetworkStatusHelper.NetworkStatus networkStatus) {
        ThreadPoolExecutorFactory.submitDetectTask(new ResetExceptionHistoryTask(this));
    }
}
