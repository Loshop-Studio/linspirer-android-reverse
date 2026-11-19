package com.huawei.hem;

import com.huawei.hms.framework.common.ExecutorsUtils;
import com.huawei.hms.framework.common.Logger;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.huawei.hem.v8 */
/* loaded from: classes.dex */
public class C1352v8 {

    /* renamed from: a */
    public ExecutorService f3928a = ExecutorsUtils.newCachedThreadPool("GRS_RequestController-Task");

    /* renamed from: b */
    public Map<String, C1127m8> f3929b = new ConcurrentHashMap(16);

    /* renamed from: c */
    public final Object f3930c = new Object();

    /* renamed from: d */
    public C0820a8 f3931d;

    /* renamed from: com.huawei.hem.v8$a */
    public class a implements Callable<C1252r8> {

        /* renamed from: a */
        public final /* synthetic */ C1152n8 f3932a;

        /* renamed from: b */
        public final /* synthetic */ String f3933b;

        /* renamed from: c */
        public final /* synthetic */ C0872c8 f3934c;

        public a(C1152n8 c1152n8, String str, C0872c8 c0872c8) {
            this.f3932a = c1152n8;
            this.f3933b = str;
            this.f3934c = c0872c8;
        }

        @Override // java.util.concurrent.Callable
        public C1252r8 call() {
            String str;
            C1227q8 c1227q8 = new C1227q8(this.f3932a, C1352v8.this.f3931d);
            ExecutorService executorService = C1352v8.this.f3928a;
            String str2 = this.f3933b;
            C0872c8 c0872c8 = this.f3934c;
            if (c1227q8.f3500h == null || c1227q8.f3501i == null) {
                return null;
            }
            try {
                return (C1252r8) executorService.submit(new CallableC1202p8(c1227q8, executorService, str2, c0872c8)).get(c1227q8.f3502j != null ? r5.f3377d : 10, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                e = e;
                str = "{submitExcutorTaskWithTimeout} the current thread was interrupted while waiting";
                Logger.m3439w("e", str, e);
                return null;
            } catch (CancellationException unused) {
                Logger.m3434i("e", "{submitExcutorTaskWithTimeout} the computation was cancelled");
                return null;
            } catch (ExecutionException e2) {
                e = e2;
                str = "{submitExcutorTaskWithTimeout} the computation threw an ExecutionException";
                Logger.m3439w("e", str, e);
                return null;
            } catch (TimeoutException unused2) {
                Logger.m3438w("e", "{submitExcutorTaskWithTimeout} the wait timed out");
                return null;
            } catch (Exception e3) {
                e = e3;
                str = "{submitExcutorTaskWithTimeout} catch Exception";
                Logger.m3439w("e", str, e);
                return null;
            }
        }
    }

    /* renamed from: com.huawei.hem.v8$b */
    public class b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C1152n8 f3936a;

        /* renamed from: b */
        public final /* synthetic */ String f3937b;

        /* renamed from: c */
        public final /* synthetic */ C0872c8 f3938c;

        /* renamed from: d */
        public final /* synthetic */ InterfaceC1026i8 f3939d;

        public b(C1152n8 c1152n8, String str, C0872c8 c0872c8, InterfaceC1026i8 interfaceC1026i8) {
            this.f3936a = c1152n8;
            this.f3937b = str;
            this.f3938c = c0872c8;
            this.f3939d = interfaceC1026i8;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1252r8 c1252r8M2858a = C1352v8.this.m2858a(this.f3936a, this.f3937b, this.f3938c);
            InterfaceC1026i8 interfaceC1026i8 = this.f3939d;
            if (interfaceC1026i8 != null) {
                if (c1252r8M2858a == null) {
                    Logger.m3436v("RequestController", "GrsResponse is null");
                    interfaceC1026i8.mo2040a();
                } else {
                    Logger.m3436v("RequestController", "GrsResponse is not null");
                    interfaceC1026i8.mo2041a(c1252r8M2858a);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006b A[Catch: all -> 0x00b7, TryCatch #3 {, blocks: (B:4:0x0039, B:6:0x0042, B:8:0x0044, B:10:0x0052, B:16:0x0066, B:27:0x009a, B:18:0x006b, B:23:0x007c, B:26:0x0082), top: B:41:0x0039 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hem.C1252r8 m2858a(com.huawei.hem.C1152n8 r12, java.lang.String r13, com.huawei.hem.C0872c8 r14) {
        /*
            r11 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "request to server with service name is: "
            r0.append(r1)
            r0.append(r13)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "RequestController"
            com.huawei.hms.framework.common.Logger.m3429d(r1, r0)
            com.huawei.hms.framework.network.grs.GrsBaseInfo r0 = r12.f3289a
            android.content.Context r1 = r12.f3290b
            r2 = 0
            r3 = 1
            java.lang.String r0 = r0.getGrsParasTag(r2, r3, r1)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "request spUrlKey: "
            r1.append(r4)
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            java.lang.String r4 = "RequestController"
            com.huawei.hms.framework.common.Logger.m3436v(r4, r1)
            java.lang.Object r1 = r11.f3930c
            monitor-enter(r1)
            android.content.Context r4 = r12.f3290b     // Catch: java.lang.Throwable -> Lb7
            boolean r4 = com.huawei.hms.framework.common.NetworkUtil.isNetworkAvailable(r4)     // Catch: java.lang.Throwable -> Lb7
            r5 = 0
            if (r4 != 0) goto L44
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb7
            return r5
        L44:
            com.huawei.hem.y8$a r4 = com.huawei.hem.C1427y8.m3083a(r0)     // Catch: java.lang.Throwable -> Lb7
            java.util.Map<java.lang.String, com.huawei.hem.m8> r6 = r11.f3929b     // Catch: java.lang.Throwable -> Lb7
            java.lang.Object r6 = r6.get(r0)     // Catch: java.lang.Throwable -> Lb7
            com.huawei.hem.m8 r6 = (com.huawei.hem.C1127m8) r6     // Catch: java.lang.Throwable -> Lb7
            if (r6 == 0) goto L69
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> Lb7
            long r9 = r6.f3244b     // Catch: java.lang.Throwable -> Lb7
            long r7 = r7 - r9
            r9 = 300000(0x493e0, double:1.482197E-318)
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 > 0) goto L62
            r7 = r3
            goto L63
        L62:
            r7 = r2
        L63:
            if (r7 != 0) goto L66
            goto L69
        L66:
            java.util.concurrent.Future<com.huawei.hem.r8> r12 = r6.f3243a     // Catch: java.lang.Throwable -> Lb7
            goto L9a
        L69:
            if (r4 == 0) goto L7e
            long r6 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> Lb7
            long r8 = r4.f4210b     // Catch: java.lang.Throwable -> Lb7
            long r6 = r6 - r8
            long r8 = r4.f4209a     // Catch: java.lang.Throwable -> Lb7
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 > 0) goto L79
            r2 = r3
        L79:
            if (r2 != 0) goto L7c
            goto L7e
        L7c:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb7
            return r5
        L7e:
            java.lang.String r2 = "RequestController"
            java.lang.String r3 = "hitGrsRequestBean == null or request block is released."
            com.huawei.hms.framework.common.Logger.m3429d(r2, r3)     // Catch: java.lang.Throwable -> Lb7
            java.util.concurrent.ExecutorService r2 = r11.f3928a     // Catch: java.lang.Throwable -> Lb7
            com.huawei.hem.v8$a r3 = new com.huawei.hem.v8$a     // Catch: java.lang.Throwable -> Lb7
            r3.<init>(r12, r13, r14)     // Catch: java.lang.Throwable -> Lb7
            java.util.concurrent.Future r12 = r2.submit(r3)     // Catch: java.lang.Throwable -> Lb7
            java.util.Map<java.lang.String, com.huawei.hem.m8> r13 = r11.f3929b     // Catch: java.lang.Throwable -> Lb7
            com.huawei.hem.m8 r14 = new com.huawei.hem.m8     // Catch: java.lang.Throwable -> Lb7
            r14.<init>(r12)     // Catch: java.lang.Throwable -> Lb7
            r13.put(r0, r14)     // Catch: java.lang.Throwable -> Lb7
        L9a:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb7
            java.lang.Object r12 = r12.get()     // Catch: java.lang.InterruptedException -> La2 java.util.concurrent.ExecutionException -> La8 java.util.concurrent.CancellationException -> Lae
            com.huawei.hem.r8 r12 = (com.huawei.hem.C1252r8) r12     // Catch: java.lang.InterruptedException -> La2 java.util.concurrent.ExecutionException -> La8 java.util.concurrent.CancellationException -> Lae
            return r12
        La2:
            r12 = move-exception
            java.lang.String r13 = "RequestController"
            java.lang.String r14 = "when check result, find InterruptedException, check others"
            goto Lb3
        La8:
            r12 = move-exception
            java.lang.String r13 = "RequestController"
            java.lang.String r14 = "when check result, find ExecutionException, check others"
            goto Lb3
        Lae:
            r12 = move-exception
            java.lang.String r13 = "RequestController"
            java.lang.String r14 = "when check result, find CancellationException, check others"
        Lb3:
            com.huawei.hms.framework.common.Logger.m3439w(r13, r14, r12)
            return r5
        Lb7:
            r12 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb7
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1352v8.m2858a(com.huawei.hem.n8, java.lang.String, com.huawei.hem.c8):com.huawei.hem.r8");
    }

    /* renamed from: b */
    public void m2859b(C1152n8 c1152n8, InterfaceC1026i8 interfaceC1026i8, String str, C0872c8 c0872c8) {
        this.f3928a.execute(new b(c1152n8, str, c0872c8, interfaceC1026i8));
    }

    /* renamed from: c */
    public void m2860c(String str) {
        synchronized (this.f3930c) {
            this.f3929b.remove(str);
        }
    }
}
