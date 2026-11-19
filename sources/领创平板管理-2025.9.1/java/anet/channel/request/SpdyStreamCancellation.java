package anet.channel.request;

import anet.channel.util.ALog;
import com.taobao.accs.common.Constants;
import org.android.spdy.SpdyErrorException;
import org.android.spdy.SpdySession;

/* compiled from: Taobao */
/* renamed from: anet.channel.request.c */
/* loaded from: classes.dex */
public class SpdyStreamCancellation implements Cancelable {
    public static final SpdyStreamCancellation NULL = new SpdyStreamCancellation(null, 0, null);

    /* renamed from: a */
    public final int f366a;

    /* renamed from: b */
    public final SpdySession f367b;

    /* renamed from: c */
    public final String f368c;

    public SpdyStreamCancellation(SpdySession spdySession, int i, String str) {
        this.f367b = spdySession;
        this.f366a = i;
        this.f368c = str;
    }

    @Override // anet.channel.request.Cancelable
    public void cancel() {
        try {
            if (this.f367b == null || this.f366a == 0) {
                return;
            }
            ALog.m340i("awcn.TnetCancelable", "cancel tnet request", this.f368c, "streamId", Integer.valueOf(this.f366a));
            this.f367b.streamReset(this.f366a, 5);
        } catch (SpdyErrorException e) {
            ALog.m338e("awcn.TnetCancelable", "request cancel failed.", this.f368c, e, Constants.KEY_ERROR_CODE, Integer.valueOf(e.SpdyErrorGetCode()));
        }
    }
}
