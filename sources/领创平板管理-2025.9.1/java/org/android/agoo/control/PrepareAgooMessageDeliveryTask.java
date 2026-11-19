package org.android.agoo.control;

import com.taobao.accs.base.TaoBaseService;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.b */
/* loaded from: classes.dex */
public class PrepareAgooMessageDeliveryTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ byte[] f6466a;

    /* renamed from: b */
    public final /* synthetic */ String f6467b;

    /* renamed from: c */
    public final /* synthetic */ TaoBaseService.ExtraInfo f6468c;

    /* renamed from: d */
    public final /* synthetic */ AgooFactory f6469d;

    public PrepareAgooMessageDeliveryTask(AgooFactory agooFactory, byte[] bArr, String str, TaoBaseService.ExtraInfo extraInfo) {
        this.f6469d = agooFactory;
        this.f6466a = bArr;
        this.f6467b = str;
        this.f6468c = extraInfo;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6469d.msgReceiverPreHandler(this.f6466a, this.f6467b, this.f6468c, true);
    }
}
