package com.huawei.hem;

import com.huawei.hem.C1059jg;
import com.huawei.hem.C1133me;
import com.huawei.hem.InterfaceC0956fe;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: MessageSnapshotGate.java */
/* renamed from: com.huawei.hem.cf */
/* loaded from: classes.dex */
public class C0879cf implements C1059jg.b {
    @Override // com.huawei.hem.C1059jg.b
    /* renamed from: J */
    public void mo1532J(MessageSnapshot messageSnapshot) {
        synchronized (Integer.toString(messageSnapshot.f4819a).intern()) {
            List<InterfaceC0956fe.a> listM2370d = C1133me.b.f3261a.m2370d(messageSnapshot.f4819a);
            ArrayList arrayList = (ArrayList) listM2370d;
            if (arrayList.size() > 0) {
                ((InterfaceC0956fe.a) arrayList.get(0)).mo1812t();
                if (!m1533a(listM2370d, messageSnapshot)) {
                    StringBuilder sb = new StringBuilder("The event isn't consumed, id:" + messageSnapshot.f4819a + " status:" + ((int) messageSnapshot.mo2112a()) + " task-count:" + arrayList.size());
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        InterfaceC0956fe.a aVar = (InterfaceC0956fe.a) it.next();
                        sb.append(" | ");
                        sb.append((int) aVar.mo1812t().mo1791a());
                    }
                    C0959fh.m1819c(this, sb.toString(), new Object[0]);
                }
            } else {
                C0959fh.m1819c(this, "Receive the event %d, but there isn't any running task in the upper layer", Byte.valueOf(messageSnapshot.mo2112a()));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x00c8, code lost:
    
        if (r5 != 5) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:171:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x01b9 A[Catch: all -> 0x01bf, TryCatch #3 {, blocks: (B:133:0x0161, B:173:0x01bd, B:172:0x01b9, B:138:0x017b), top: B:184:0x0161 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00e4 A[Catch: all -> 0x00fa, TryCatch #1 {, blocks: (B:38:0x007c, B:40:0x008b, B:91:0x00ea, B:92:0x00f2, B:94:0x00f4, B:89:0x00e4, B:47:0x009c), top: B:181:0x007c }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1533a(java.util.List<com.huawei.hem.InterfaceC0956fe.a> r18, com.liulishuo.filedownloader.message.MessageSnapshot r19) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0879cf.m1533a(java.util.List, com.liulishuo.filedownloader.message.MessageSnapshot):boolean");
    }
}
