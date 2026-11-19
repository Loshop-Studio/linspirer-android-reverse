package anet.channel;

import anet.channel.entity.SessionTypeFlags;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: Taobao */
/* renamed from: anet.channel.e */
/* loaded from: classes.dex */
public class SessionPool {

    /* renamed from: a */
    public final Map<SessionRequest, List<Session>> f225a = new HashMap();

    /* renamed from: b */
    public final ReentrantReadWriteLock f226b;

    /* renamed from: c */
    public final ReentrantReadWriteLock.ReadLock f227c;

    /* renamed from: d */
    public final ReentrantReadWriteLock.WriteLock f228d;

    public SessionPool() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f226b = reentrantReadWriteLock;
        this.f227c = reentrantReadWriteLock.readLock();
        this.f228d = this.f226b.writeLock();
    }

    /* renamed from: a */
    public void m111a(SessionRequest sessionRequest, Session session) {
        if (sessionRequest == null || sessionRequest.m53a() == null || session == null) {
            return;
        }
        this.f228d.lock();
        try {
            List<Session> arrayList = this.f225a.get(sessionRequest);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f225a.put(sessionRequest, arrayList);
            }
            if (arrayList.indexOf(session) != -1) {
                return;
            }
            arrayList.add(session);
            Collections.sort(arrayList);
        } finally {
            this.f228d.unlock();
        }
    }

    /* renamed from: b */
    public void m112b(SessionRequest sessionRequest, Session session) {
        this.f228d.lock();
        try {
            List<Session> list = this.f225a.get(sessionRequest);
            if (list == null) {
                return;
            }
            list.remove(session);
            if (list.size() == 0) {
                this.f225a.remove(sessionRequest);
            }
        } finally {
            this.f228d.unlock();
        }
    }

    /* renamed from: c */
    public boolean m113c(SessionRequest sessionRequest, Session session) {
        this.f227c.lock();
        try {
            List<Session> list = this.f225a.get(sessionRequest);
            boolean z = false;
            if (list != null) {
                if (list.indexOf(session) != -1) {
                    z = true;
                }
            }
            return z;
        } finally {
            this.f227c.unlock();
        }
    }

    /* renamed from: a */
    public List<Session> m110a(SessionRequest sessionRequest) {
        this.f227c.lock();
        try {
            List<Session> list = this.f225a.get(sessionRequest);
            if (list != null) {
                return new ArrayList(list);
            }
            return Collections.EMPTY_LIST;
        } finally {
            this.f227c.unlock();
        }
    }

    /* renamed from: a */
    public Session m108a(SessionRequest sessionRequest, int i) {
        this.f227c.lock();
        try {
            List<Session> list = this.f225a.get(sessionRequest);
            Session session = null;
            if (list != null && !list.isEmpty()) {
                for (Session session2 : list) {
                    if (session2 != null && session2.isAvailable() && (i == SessionTypeFlags.f257c || session2.f104j.getType() == i)) {
                        session = session2;
                        break;
                    }
                }
                return session;
            }
            return null;
        } finally {
            this.f227c.unlock();
        }
    }

    /* renamed from: a */
    public List<SessionRequest> m109a() {
        List<SessionRequest> list = Collections.EMPTY_LIST;
        this.f227c.lock();
        try {
            return this.f225a.isEmpty() ? list : new ArrayList(this.f225a.keySet());
        } finally {
            this.f227c.unlock();
        }
    }
}
