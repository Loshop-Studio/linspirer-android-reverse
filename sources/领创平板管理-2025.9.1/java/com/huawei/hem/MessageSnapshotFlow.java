package com.huawei.hem;

import com.huawei.hem.DownloadSnapshotThreadPool;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.Iterator;

/* compiled from: MessageSnapshotFlow.java */
/* renamed from: com.huawei.hem.jg */
/* loaded from: classes.dex */
public class MessageSnapshotFlow {

    /* renamed from: a */
    public volatile DownloadSnapshotThreadPool f2951a;

    /* renamed from: b */
    public volatile b f2952b;

    /* compiled from: MessageSnapshotFlow.java */
    /* renamed from: com.huawei.hem.jg$a */
    public static final class a {

        /* renamed from: a */
        public static final MessageSnapshotFlow f2953a = new MessageSnapshotFlow();
    }

    /* compiled from: MessageSnapshotFlow.java */
    /* renamed from: com.huawei.hem.jg$b */
    public interface b {
        /* renamed from: J */
        void mo1532J(MessageSnapshot messageSnapshot);
    }

    /* renamed from: a */
    public void m2132a(MessageSnapshot messageSnapshot) {
        if (messageSnapshot instanceof IFlowDirectly) {
            if (this.f2952b != null) {
                this.f2952b.mo1532J(messageSnapshot);
                return;
            }
            return;
        }
        if (this.f2951a != null) {
            DownloadSnapshotThreadPool c1135mg = this.f2951a;
            DownloadSnapshotThreadPool.a aVar = null;
            if (c1135mg == null) {
                throw null;
            }
            try {
                synchronized (c1135mg.f3262a) {
                    int i = messageSnapshot.f4819a;
                    Iterator<DownloadSnapshotThreadPool.a> it = c1135mg.f3262a.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        DownloadSnapshotThreadPool.a next = it.next();
                        if (next.f3264a.contains(Integer.valueOf(i))) {
                            aVar = next;
                            break;
                        }
                    }
                    if (aVar == null) {
                        int size = 0;
                        Iterator<DownloadSnapshotThreadPool.a> it2 = c1135mg.f3262a.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            DownloadSnapshotThreadPool.a next2 = it2.next();
                            if (next2.f3264a.size() <= 0) {
                                aVar = next2;
                                break;
                            } else if (size == 0 || next2.f3264a.size() < size) {
                                size = next2.f3264a.size();
                                aVar = next2;
                            }
                        }
                    }
                    aVar.f3264a.add(Integer.valueOf(i));
                }
            } finally {
                aVar.f3265b.execute(new DispatchDownloadSnapshotTask(aVar, messageSnapshot));
            }
        }
    }
}
