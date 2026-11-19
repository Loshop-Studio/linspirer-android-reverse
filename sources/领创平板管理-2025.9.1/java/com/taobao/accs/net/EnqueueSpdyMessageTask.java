package com.taobao.accs.net;

import com.taobao.accs.data.Message;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.x */
/* loaded from: classes.dex */
public class EnqueueSpdyMessageTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Message f6315a;

    /* renamed from: b */
    public final /* synthetic */ boolean f6316b;

    /* renamed from: c */
    public final /* synthetic */ AccsSpdyConnection f6317c;

    public EnqueueSpdyMessageTask(AccsSpdyConnection c1961w, Message message, boolean z) {
        this.f6317c = c1961w;
        this.f6315a = message;
        this.f6316b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f6317c.f6304t) {
            this.f6317c.m5686a(this.f6315a);
            if (this.f6317c.f6304t.size() == 0) {
                this.f6317c.f6304t.add(this.f6315a);
            } else {
                Message message = (Message) this.f6317c.f6304t.getFirst();
                if (this.f6315a.m5509a() == 1 || this.f6315a.m5509a() == 0) {
                    this.f6317c.f6304t.addLast(this.f6315a);
                    if (message.m5509a() == 2) {
                        this.f6317c.f6304t.removeFirst();
                    }
                } else if (this.f6315a.m5509a() != 2 || message.m5509a() != 2) {
                    this.f6317c.f6304t.addLast(this.f6315a);
                } else if (!message.f6104d && this.f6315a.f6104d) {
                    this.f6317c.f6304t.removeFirst();
                    this.f6317c.f6304t.addFirst(this.f6315a);
                }
            }
            if (this.f6316b || this.f6317c.f6303s == 3) {
                try {
                    this.f6317c.f6304t.notifyAll();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
