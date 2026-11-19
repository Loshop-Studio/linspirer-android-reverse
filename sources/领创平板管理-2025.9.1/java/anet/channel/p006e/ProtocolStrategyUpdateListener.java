package anet.channel.p006e;

import android.content.SharedPreferences;
import anet.channel.entity.ConnType;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.AmdcStrategyResultParser;
import anet.channel.strategy.IStrategyListener;

/* compiled from: Taobao */
/* renamed from: anet.channel.e.c */
/* loaded from: classes.dex */
public final class ProtocolStrategyUpdateListener implements IStrategyListener {
    @Override // anet.channel.strategy.IStrategyListener
    public void onStrategyUpdated(AmdcStrategyResultParser.d dVar) {
        String str;
        if (dVar == null || dVar.f544b == null) {
            return;
        }
        int i = 0;
        loop0: while (true) {
            AmdcStrategyResultParser.b[] bVarArr = dVar.f544b;
            if (i >= bVarArr.length) {
                return;
            }
            str = bVarArr[i].f529a;
            AmdcStrategyResultParser.a[] aVarArr = bVarArr[i].f536h;
            if (aVarArr != null && aVarArr.length > 0) {
                for (AmdcStrategyResultParser.a aVar : aVarArr) {
                    String str2 = aVar.f522b;
                    if (ConnType.HTTP3.equals(str2) || ConnType.HTTP3_PLAIN.equals(str2)) {
                        break loop0;
                    }
                }
            }
            i++;
        }
        if (!str.equals(ConnectionProtocolDetector.f230b)) {
            String unused = ConnectionProtocolDetector.f230b = str;
            SharedPreferences.Editor editorEdit = ConnectionProtocolDetector.f234f.edit();
            editorEdit.putString("http3_detector_host", ConnectionProtocolDetector.f230b);
            editorEdit.apply();
        }
        ConnectionProtocolDetector.m118a(NetworkStatusHelper.getStatus());
    }
}
