package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Random;
import org.android.agoo.message.MessageService;

/* compiled from: StatisticsManager.java */
/* renamed from: com.loc.ay */
/* loaded from: classes.dex */
public class StatisticsManager {

    /* renamed from: a */
    public static boolean f5080a = false;

    /* renamed from: b */
    public static int f5081b = 20;

    /* renamed from: c */
    public static int f5082c = 20;

    /* renamed from: d */
    public static WeakReference<LogConfig> f5083d;

    /* renamed from: e */
    public static int f5084e;

    /* compiled from: StatisticsManager.java */
    /* renamed from: com.loc.ay$a */
    public static class a extends ThreadTask {

        /* renamed from: a */
        public static int f5085a = 1;

        /* renamed from: b */
        public static int f5086b = 2;

        /* renamed from: c */
        public static int f5087c = 3;

        /* renamed from: d */
        public Context f5088d;

        /* renamed from: f */
        public StatisticsEntity f5089f;

        /* renamed from: g */
        public int f5090g;

        /* renamed from: h */
        public List<StatisticsEntity> f5091h;

        public a(Context context, int i) {
            this.f5088d = context;
            this.f5090g = i;
        }

        public a(Context context, int i, StatisticsEntity c1734ax) {
            this(context, i);
            this.f5089f = c1734ax;
        }

        public a(Context context, int i, List<StatisticsEntity> list) {
            this(context, i);
            this.f5091h = list;
        }

        @Override // com.loc.AbstractRunnableC1754bq
        /* renamed from: a */
        public final void mo1093a() {
            String str;
            String str2;
            Throwable th;
            int i = this.f5090g;
            if (i == 1) {
                try {
                    if (this.f5088d != null && this.f5089f != null) {
                        synchronized (StatisticsManager.class) {
                            if (this.f5088d != null && this.f5089f != null) {
                                StatisticsManager.m4184a(this.f5088d, this.f5089f.m4181a());
                                return;
                            }
                            return;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    str = "stm";
                    str2 = "as";
                }
            } else {
                if (i != 2) {
                    if (i == 3) {
                        try {
                            if (this.f5088d == null) {
                                return;
                            }
                            LogConfig c1730atM4191a = C1736az.m4191a(StatisticsManager.f5083d);
                            C1736az.m4195a(this.f5088d, c1730atM4191a, AMapLog.f5948h, 1000, 307200, MessageService.MSG_DB_NOTIFY_CLICK);
                            if (c1730atM4191a.f5060g == null) {
                                c1730atM4191a.f5060g = new ByteJoinDataStrategy(new StatisticsHeaderDataStrategy(this.f5088d, new EncryptRsaDataStrategy(new StatisticsPubDataStrategy(new ZipUpdateDataStrategy()))));
                            }
                            c1730atM4191a.f5061h = 3600000;
                            if (TextUtils.isEmpty(c1730atM4191a.f5062i)) {
                                c1730atM4191a.f5062i = "cKey";
                            }
                            if (c1730atM4191a.f5059f == null) {
                                c1730atM4191a.f5059f = new TimeUpdateStrategy(this.f5088d, c1730atM4191a.f5061h, c1730atM4191a.f5062i, new FileNumUpdateStrategy(c1730atM4191a.f5054a, new MobileUpdateStrategy(this.f5088d, StatisticsManager.f5080a, StatisticsManager.f5082c * 1024, StatisticsManager.f5081b * 1024, "staticUpdate", StatisticsManager.f5084e * 1024)));
                            }
                            LogEngine.m4166a(c1730atM4191a);
                            return;
                        } catch (Throwable th3) {
                            SDKLogHandler.m5333b(th3, "stm", "usd");
                            return;
                        }
                    }
                    return;
                }
                try {
                    synchronized (StatisticsManager.class) {
                        if (this.f5091h != null && this.f5088d != null) {
                            ByteArrayOutputStream byteArrayOutputStream = null;
                            byte[] byteArray = new byte[0];
                            try {
                                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                try {
                                    for (StatisticsEntity c1734ax : this.f5091h) {
                                        if (c1734ax != null) {
                                            byteArrayOutputStream2.write(c1734ax.m4181a());
                                        }
                                    }
                                    byteArray = byteArrayOutputStream2.toByteArray();
                                    try {
                                        byteArrayOutputStream2.close();
                                    } catch (Throwable th4) {
                                        th = th4;
                                        th.printStackTrace();
                                        StatisticsManager.m4184a(this.f5088d, byteArray);
                                        return;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    byteArrayOutputStream = byteArrayOutputStream2;
                                    try {
                                        SDKLogHandler.m5333b(th, "stm", "aStB");
                                        if (byteArrayOutputStream != null) {
                                            try {
                                                byteArrayOutputStream.close();
                                            } catch (Throwable th6) {
                                                th = th6;
                                                th.printStackTrace();
                                                StatisticsManager.m4184a(this.f5088d, byteArray);
                                                return;
                                            }
                                        }
                                        StatisticsManager.m4184a(this.f5088d, byteArray);
                                        return;
                                    } finally {
                                    }
                                }
                            } catch (Throwable th7) {
                                th = th7;
                            }
                            StatisticsManager.m4184a(this.f5088d, byteArray);
                            return;
                        }
                        return;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    str = "stm";
                    str2 = "apb";
                }
            }
            SDKLogHandler.m5333b(th, str, str2);
        }
    }

    /* renamed from: a */
    public static void m4183a(Context context) {
        ThreadPool.m4236a().m4242b(new a(context, a.f5087c));
    }

    /* renamed from: a */
    public static /* synthetic */ void m4184a(Context context, byte[] bArr) {
        LogConfig c1730atM4191a = C1736az.m4191a(f5083d);
        C1736az.m4195a(context, c1730atM4191a, AMapLog.f5948h, 1000, 307200, MessageService.MSG_DB_NOTIFY_CLICK);
        if (c1730atM4191a.f5058e == null) {
            c1730atM4191a.f5058e = new NoneEncryptProcessor();
        }
        try {
            LogEngine.m4168a(Integer.toString(new Random().nextInt(100)) + Long.toString(System.nanoTime()), bArr, c1730atM4191a);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "stm", "wts");
        }
    }

    /* renamed from: a */
    public static synchronized void m4185a(StatisticsEntity c1734ax, Context context) {
        ThreadPool.m4236a().m4242b(new a(context, a.f5085a, c1734ax));
    }

    /* renamed from: a */
    public static synchronized void m4186a(List<StatisticsEntity> list, Context context) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    ThreadPool.m4236a().m4242b(new a(context, a.f5086b, list));
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m4187a(boolean z, int i) {
        f5080a = z;
        f5084e = Math.max(0, i);
    }

    /* renamed from: b */
    public static synchronized void m4189b(List<StatisticsEntity> list, Context context) {
        try {
            List<StatisticsEntity> listM4093b = HttpLimitUtil.m4093b();
            if (listM4093b != null && listM4093b.size() > 0) {
                list.addAll(listM4093b);
            }
        } catch (Throwable unused) {
        }
        m4186a(list, context);
    }
}
