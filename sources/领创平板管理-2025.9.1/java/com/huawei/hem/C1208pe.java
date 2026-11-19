package com.huawei.hem;

import android.os.Handler;
import com.huawei.hem.C1184of;
import com.huawei.hem.InterfaceC0956fe;
import com.huawei.hem.InterfaceC1458ze;
import com.liulishuo.filedownloader.message.BlockCompleteMessage;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: FileDownloadMessenger.java */
/* renamed from: com.huawei.hem.pe */
/* loaded from: classes.dex */
public class C1208pe implements InterfaceC1358ve {

    /* renamed from: a */
    public InterfaceC0956fe.a f3452a;

    /* renamed from: b */
    public InterfaceC0956fe.c f3453b;

    /* renamed from: d */
    public boolean f3455d = false;

    /* renamed from: c */
    public Queue<MessageSnapshot> f3454c = new LinkedBlockingQueue();

    public C1208pe(InterfaceC0956fe.a aVar, InterfaceC0956fe.c cVar) {
        this.f3452a = aVar;
        this.f3453b = cVar;
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: a */
    public void mo2463a(MessageSnapshot messageSnapshot) {
        if (((C1032ie) this.f3453b) == null) {
            throw null;
        }
        m2477o(messageSnapshot);
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: b */
    public boolean mo2464b() {
        if (this.f3452a == null) {
            C0959fh.m1821e(this, "can't begin the task, the holder fo the messenger is nil, %d", Integer.valueOf(this.f3454c.size()));
            return false;
        }
        if (((C1032ie) this.f3453b) != null) {
            return true;
        }
        throw null;
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: c */
    public boolean mo2465c() {
        return this.f3454c.peek().mo2112a() == 4;
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: d */
    public void mo2466d(MessageSnapshot messageSnapshot) {
        if (((C1032ie) this.f3453b) == null) {
            throw null;
        }
        m2477o(messageSnapshot);
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: e */
    public void mo2467e(MessageSnapshot messageSnapshot) {
        if (((C1032ie) this.f3453b) == null) {
            throw null;
        }
        m2477o(messageSnapshot);
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: f */
    public void mo2468f(MessageSnapshot messageSnapshot) {
        if (((C1032ie) this.f3453b) == null) {
            throw null;
        }
        m2477o(messageSnapshot);
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: g */
    public void mo2469g(MessageSnapshot messageSnapshot) {
        ((C1032ie) this.f3453b).m2086b();
        m2477o(messageSnapshot);
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: h */
    public void mo2470h(MessageSnapshot messageSnapshot) {
        ((C1032ie) this.f3453b).m2086b();
        m2477o(messageSnapshot);
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: i */
    public void mo2471i(MessageSnapshot messageSnapshot) {
        if (((C1032ie) this.f3453b) == null) {
            throw null;
        }
        m2477o(messageSnapshot);
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: j */
    public void mo2472j(MessageSnapshot messageSnapshot) {
        if (this.f3452a.mo1812t().mo1798p() <= 0) {
            return;
        }
        if (((C1032ie) this.f3453b) == null) {
            throw null;
        }
        m2477o(messageSnapshot);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: k */
    public void mo2473k() {
        if (this.f3455d) {
            return;
        }
        MessageSnapshot messageSnapshotPoll = this.f3454c.poll();
        byte bMo2112a = messageSnapshotPoll.mo2112a();
        InterfaceC0956fe.a aVar = this.f3452a;
        if (aVar == null) {
            throw new IllegalArgumentException(C1010hh.m1955e("can't handover the message, no master to receive this message(status[%d]) size[%d]", Integer.valueOf(bMo2112a), Integer.valueOf(this.f3454c.size())));
        }
        InterfaceC0956fe interfaceC0956feMo1812t = aVar.mo1812t();
        AbstractC1158ne abstractC1158neMo1795i = interfaceC0956feMo1812t.mo1795i();
        InterfaceC1458ze.a aVarMo1810o = aVar.mo1810o();
        m2476n(bMo2112a);
        if (abstractC1158neMo1795i == null || abstractC1158neMo1795i.isInvalid()) {
            return;
        }
        if (bMo2112a == 4) {
            try {
                abstractC1158neMo1795i.blockComplete(interfaceC0956feMo1812t);
                MessageSnapshot messageSnapshotMo3914c = ((BlockCompleteMessage) messageSnapshotPoll).mo3914c();
                ((C1032ie) this.f3453b).m2086b();
                m2477o(messageSnapshotMo3914c);
                return;
            } catch (Throwable th) {
                MessageSnapshot messageSnapshotM2089e = ((C1032ie) aVarMo1810o).m2089e(th);
                ((C1032ie) this.f3453b).m2086b();
                m2477o(messageSnapshotM2089e);
                return;
            }
        }
        AbstractC1107le abstractC1107le = abstractC1158neMo1795i instanceof AbstractC1107le ? (AbstractC1107le) abstractC1158neMo1795i : null;
        if (bMo2112a == -4) {
            abstractC1158neMo1795i.warn(interfaceC0956feMo1812t);
            return;
        }
        if (bMo2112a == -3) {
            abstractC1158neMo1795i.completed(interfaceC0956feMo1812t);
            return;
        }
        if (bMo2112a == -2) {
            if (abstractC1107le != null) {
                abstractC1107le.m2310b(interfaceC0956feMo1812t, messageSnapshotPoll.mo3922f(), messageSnapshotPoll.mo3917g());
                return;
            } else {
                abstractC1158neMo1795i.paused(interfaceC0956feMo1812t, messageSnapshotPoll.mo3915i(), messageSnapshotPoll.mo3916j());
                return;
            }
        }
        if (bMo2112a == -1) {
            abstractC1158neMo1795i.error(interfaceC0956feMo1812t, messageSnapshotPoll.mo3923k());
            return;
        }
        if (bMo2112a == 1) {
            if (abstractC1107le != null) {
                abstractC1107le.m2311c(interfaceC0956feMo1812t, messageSnapshotPoll.mo3922f(), messageSnapshotPoll.mo3917g());
                return;
            } else {
                abstractC1158neMo1795i.pending(interfaceC0956feMo1812t, messageSnapshotPoll.mo3915i(), messageSnapshotPoll.mo3916j());
                return;
            }
        }
        if (bMo2112a == 2) {
            if (abstractC1107le == null) {
                abstractC1158neMo1795i.connected(interfaceC0956feMo1812t, messageSnapshotPoll.mo3919d(), messageSnapshotPoll.mo3921l(), interfaceC0956feMo1812t.mo1793d(), messageSnapshotPoll.mo3916j());
                return;
            }
            messageSnapshotPoll.mo3919d();
            messageSnapshotPoll.mo3921l();
            interfaceC0956feMo1812t.mo1799q();
            messageSnapshotPoll.mo3917g();
            abstractC1107le.m2309a();
            return;
        }
        if (bMo2112a == 3) {
            if (abstractC1107le != null) {
                abstractC1107le.m2312d(interfaceC0956feMo1812t, messageSnapshotPoll.mo3922f(), interfaceC0956feMo1812t.mo1794f());
                return;
            } else {
                abstractC1158neMo1795i.progress(interfaceC0956feMo1812t, messageSnapshotPoll.mo3915i(), interfaceC0956feMo1812t.mo1792c());
                return;
            }
        }
        if (bMo2112a != 5) {
            if (bMo2112a != 6) {
                return;
            }
            abstractC1158neMo1795i.started(interfaceC0956feMo1812t);
        } else {
            if (abstractC1107le == null) {
                abstractC1158neMo1795i.retry(interfaceC0956feMo1812t, messageSnapshotPoll.mo3923k(), messageSnapshotPoll.mo3924h(), messageSnapshotPoll.mo3915i());
                return;
            }
            messageSnapshotPoll.mo3923k();
            messageSnapshotPoll.mo3924h();
            messageSnapshotPoll.mo3922f();
            abstractC1107le.m2313e();
        }
    }

    @Override // com.huawei.hem.InterfaceC1358ve
    /* renamed from: l */
    public void mo2474l(MessageSnapshot messageSnapshot) {
        ((C1032ie) this.f3453b).m2086b();
        m2477o(messageSnapshot);
    }

    /* renamed from: m */
    public boolean m2475m() {
        return this.f3452a.mo1812t().mo1801w();
    }

    /* renamed from: n */
    public final void m2476n(int i) {
        if (C1184of.b.m2442e(i)) {
            if (!this.f3454c.isEmpty()) {
                MessageSnapshot messageSnapshotPeek = this.f3454c.peek();
                C0959fh.m1821e(this, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]", this, Integer.valueOf(messageSnapshotPeek.f4819a), Integer.valueOf(this.f3454c.size()), Byte.valueOf(messageSnapshotPeek.mo2112a()));
            }
            this.f3452a = null;
        }
    }

    /* renamed from: o */
    public final void m2477o(MessageSnapshot messageSnapshot) {
        InterfaceC0956fe.a aVar = this.f3452a;
        if (aVar == null) {
            return;
        }
        if (this.f3455d || aVar.mo1812t().mo1795i() == null) {
            if (this.f3452a.mo1813u() && messageSnapshot.mo2112a() == 4) {
                ((C1032ie) this.f3453b).m2086b();
            }
            m2476n(messageSnapshot.mo2112a());
            return;
        }
        this.f3454c.offer(messageSnapshot);
        C1183oe c1183oeM2434a = C1183oe.m2434a();
        if (c1183oeM2434a == null) {
            throw null;
        }
        if (m2475m()) {
            mo2473k();
            return;
        }
        if (C1183oe.m2435b(this)) {
            return;
        }
        if (!C1183oe.m2436c() && !c1183oeM2434a.f3389b.isEmpty()) {
            synchronized (c1183oeM2434a.f3390c) {
                if (!c1183oeM2434a.f3389b.isEmpty()) {
                    Iterator<InterfaceC1358ve> it = c1183oeM2434a.f3389b.iterator();
                    while (it.hasNext()) {
                        InterfaceC1358ve next = it.next();
                        Handler handler = c1183oeM2434a.f3388a;
                        handler.sendMessage(handler.obtainMessage(1, next));
                    }
                }
                c1183oeM2434a.f3389b.clear();
            }
        }
        if (!C1183oe.m2436c()) {
            Handler handler2 = c1183oeM2434a.f3388a;
            handler2.sendMessage(handler2.obtainMessage(1, this));
        } else {
            synchronized (c1183oeM2434a.f3390c) {
                c1183oeM2434a.f3389b.offer(this);
            }
            c1183oeM2434a.m2437d();
        }
    }

    public String toString() {
        Object[] objArr = new Object[2];
        InterfaceC0956fe.a aVar = this.f3452a;
        objArr[0] = Integer.valueOf(aVar == null ? -1 : aVar.mo1812t().getId());
        objArr[1] = super.toString();
        return C1010hh.m1955e("%d:%s", objArr);
    }
}
