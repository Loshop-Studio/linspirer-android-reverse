package org.android.agoo.control;

import com.taobao.accs.utl.ALog;
import java.util.ArrayList;
import java.util.Iterator;
import org.android.agoo.common.MsgDO;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.c */
/* loaded from: classes.dex */
public class RunnableC2011c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AgooFactory f6470a;

    public RunnableC2011c(AgooFactory agooFactory) {
        this.f6470a = agooFactory;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList<MsgDO> arrayListM5853b = this.f6470a.messageService.m5853b();
        if (arrayListM5853b == null || arrayListM5853b.size() <= 0) {
            return;
        }
        ALog.m5728e(AgooFactory.TAG, "reportCacheMsg", "size", Integer.valueOf(arrayListM5853b.size()));
        Iterator<MsgDO> it = arrayListM5853b.iterator();
        while (it.hasNext()) {
            MsgDO next = it.next();
            if (next != null) {
                next.isFromCache = true;
                this.f6470a.notifyManager.report(next, null);
            }
        }
    }
}
