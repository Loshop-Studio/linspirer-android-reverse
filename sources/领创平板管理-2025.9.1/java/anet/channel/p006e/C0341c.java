package anet.channel.p006e;

import android.content.SharedPreferences;
import anet.channel.entity.ConnType;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.C0407l;
import anet.channel.strategy.IStrategyListener;

/* compiled from: Taobao */
/* renamed from: anet.channel.e.c */
/* loaded from: classes.dex */
public final class C0341c implements IStrategyListener {
    @Override // anet.channel.strategy.IStrategyListener
    public void onStrategyUpdated(C0407l.d dVar) {
        String str;
        if (dVar == null || dVar.f544b == null) {
            return;
        }
        int i = 0;
        loop0: while (true) {
            C0407l.b[] bVarArr = dVar.f544b;
            if (i >= bVarArr.length) {
                return;
            }
            str = bVarArr[i].f529a;
            C0407l.a[] aVarArr = bVarArr[i].f536h;
            if (aVarArr != null && aVarArr.length > 0) {
                for (C0407l.a aVar : aVarArr) {
                    String str2 = aVar.f522b;
                    if (ConnType.HTTP3.equals(str2) || ConnType.HTTP3_PLAIN.equals(str2)) {
                        break loop0;
                    }
                }
            }
            i++;
        }
        if (!str.equals(C0339a.f230b)) {
            String unused = C0339a.f230b = str;
            SharedPreferences.Editor editorEdit = C0339a.f234f.edit();
            editorEdit.putString("http3_detector_host", C0339a.f230b);
            editorEdit.apply();
        }
        C0339a.m118a(NetworkStatusHelper.getStatus());
    }
}
