package com.alibaba.sdk.android.push.common.p018a;

/* renamed from: com.alibaba.sdk.android.push.common.a.a */
/* loaded from: classes.dex */
public enum PushServiceComponent {
    CHANNEL_SERVICE("com.taobao.accs.ChannelService", "service", true),
    KERNEL_SERVICE("com.taobao.accs.ChannelService$KernelService", "service", true),
    ACCS_JOB_SERVICE("com.taobao.accs.internal.AccsJobService", "service", true),
    MSG_DISTRIBUTE_SERVICE("com.taobao.accs.data.MsgDistributeService", "service", true),
    EVENT_RECEIVER("com.taobao.accs.EventReceiver", "receiver", false),
    SERVICE_RECEIVER("com.taobao.accs.ServiceReceiver", "receiver", true),
    AGOO_SERVICE("org.android.agoo.accs.AgooService", "service", true),
    ALIYUN_PUSH_INTENT_SERVICE("com.aliyun.ams.emas.push.AgooInnerService", "service", true),
    MSG_SERVICE("com.aliyun.ams.emas.push.MsgService", "service", true);


    /* renamed from: j */
    public String f1113j;

    /* renamed from: k */
    public String f1114k;

    /* renamed from: l */
    public boolean f1115l;

    PushServiceComponent(String str, String str2, boolean z) {
        this.f1113j = str;
        this.f1114k = str2;
        this.f1115l = z;
    }

    /* renamed from: a */
    public String m749a() {
        return this.f1113j;
    }

    /* renamed from: b */
    public String m750b() {
        return this.f1114k;
    }

    /* renamed from: c */
    public boolean m751c() {
        return this.f1115l;
    }
}
