package anet.channel.p005d;

import anet.channel.util.ALog;
import com.taobao.tlog.adapter.AdapterForTLog;

/* compiled from: Taobao */
/* renamed from: anet.channel.d.a */
/* loaded from: classes.dex */
public class TaobaoLogAdapter implements ALog.ILog {
    /* renamed from: a */
    private int m79a(char c) {
        if (c == 'D') {
            return 1;
        }
        if (c == 'E') {
            return 4;
        }
        if (c == 'I') {
            return 2;
        }
        if (c != 'V') {
            return c != 'W' ? 5 : 3;
        }
        return 0;
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: d */
    public void mo80d(String str, String str2) {
        AdapterForTLog.logd(str, str2);
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: e */
    public void mo81e(String str, String str2) {
        AdapterForTLog.loge(str, str2);
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: i */
    public void mo83i(String str, String str2) {
        AdapterForTLog.logi(str, str2);
    }

    @Override // anet.channel.util.ALog.ILog
    public boolean isPrintLog(int i) {
        return i >= m79a(AdapterForTLog.getLogLevel().charAt(0));
    }

    @Override // anet.channel.util.ALog.ILog
    public boolean isValid() {
        return AdapterForTLog.isValid();
    }

    @Override // anet.channel.util.ALog.ILog
    public void setLogLevel(int i) {
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: w */
    public void mo84w(String str, String str2) {
        AdapterForTLog.logw(str, str2);
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: e */
    public void mo82e(String str, String str2, Throwable th) {
        AdapterForTLog.loge(str, str2, th);
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: w */
    public void mo85w(String str, String str2, Throwable th) {
        AdapterForTLog.logw(str, str2, th);
    }
}
