package com.huawei.hem;

import android.content.Context;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.model.WorkTime;
import com.android.launcher3.p027db.model.WeekTactics;
import com.huawei.hem.UserInfoUtil;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* compiled from: WorkspaceTacticsHelper.java */
/* renamed from: com.huawei.hem.v4 */
/* loaded from: classes.dex */
public class WorkspaceTacticsHelper {

    /* renamed from: a */
    public String f3920a;

    /* renamed from: b */
    public WeekTactics f3921b;

    /* renamed from: c */
    public List<WorkTime> f3922c = new ArrayList();

    /* renamed from: d */
    public UserInfoUtil f3923d = UserInfoUtil.b.f4202a;

    /* renamed from: e */
    public Context f3924e = GuardSecureApplication.f1640b;

    /* compiled from: WorkspaceTacticsHelper.java */
    /* renamed from: com.huawei.hem.v4$b */
    public static class b {

        /* renamed from: a */
        public static final WorkspaceTacticsHelper f3925a = new WorkspaceTacticsHelper(null);
    }

    public WorkspaceTacticsHelper(a aVar) {
        m2855b();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2854a() {
        /*
            r8 = this;
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat
            java.lang.String r1 = "HH:mm"
            r0.<init>(r1)
            java.util.Date r1 = new java.util.Date
            r1.<init>()
            java.lang.String r0 = r0.format(r1)
            java.lang.String r1 = "00:00"
            boolean r1 = r0.equals(r1)
            java.lang.String r2 = "24:00"
            if (r1 == 0) goto L1e
            r8.m2856c()
            r0 = r2
        L1e:
            com.huawei.hem.y5 r1 = r8.f3923d
            int r1 = r1.m3019N()
            r3 = 0
            r4 = 1
            if (r1 == r4) goto L2e
            java.lang.String r0 = "WorkspaceTacticsHelper user not logined"
            com.huawei.hem.C0850bc.m1403m(r0)
            goto L7b
        L2e:
            java.lang.String r1 = r8.f3920a
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L3c
            java.lang.String r0 = "WorkspaceTacticsHelper no set workspace time"
            com.huawei.hem.C0850bc.m1403m(r0)
            goto L7b
        L3c:
            java.lang.String r1 = r8.f3920a
            java.lang.String r5 = "[]"
            boolean r1 = r5.equals(r1)
            if (r1 == 0) goto L4c
            java.lang.String r0 = "WorkspaceTacticsHelper set workspace time but today no allowed used"
            com.huawei.hem.C0850bc.m1403m(r0)
            goto L7d
        L4c:
            java.util.List<com.android.launcher3.model.WorkTime> r1 = r8.f3922c
            java.util.Iterator r1 = r1.iterator()
        L52:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L7d
            java.lang.Object r5 = r1.next()
            com.android.launcher3.model.WorkTime r5 = (com.android.launcher3.model.WorkTime) r5
            java.lang.String r6 = r5.getStart()
            java.lang.String r5 = r5.getEnd()
            java.lang.String r7 = "23:59:59"
            boolean r7 = r5.equals(r7)
            if (r7 == 0) goto L6f
            r5 = r2
        L6f:
            int r6 = com.huawei.hem.C0850bc.m1391a(r0, r6)
            if (r6 < 0) goto L52
            int r5 = com.huawei.hem.C0850bc.m1391a(r5, r0)
            if (r5 <= 0) goto L52
        L7b:
            r0 = r4
            goto L7e
        L7d:
            r0 = r3
        L7e:
            r1 = 100
            if (r0 == 0) goto L9b
            java.lang.String r0 = "WorkspaceTacticsHelper current time can use"
            com.huawei.hem.C0850bc.m1403m(r0)
            boolean r0 = com.android.launcher3.activity.LockActivity.f1751i
            if (r0 == 0) goto L95
            java.lang.String r0 = "WorkspaceTacticsHelper lock page is show need hide"
            com.huawei.hem.C0850bc.m1403m(r0)
            android.content.Context r0 = r8.f3924e
            com.huawei.hem.C1423y4.m2996q(r0)
        L95:
            com.huawei.hem.y5 r0 = r8.f3923d
            r0.m3039d0(r1, r3)
            goto Lba
        L9b:
            com.huawei.hem.y5 r0 = r8.f3923d
            boolean r0 = r0.m3023R()
            if (r0 == 0) goto La9
            java.lang.String r0 = "WorkspaceTacticsHelper current time can not  use by device is release no need control"
            com.huawei.hem.C0850bc.m1403m(r0)
            goto Lba
        La9:
            java.lang.String r0 = "WorkspaceTacticsHelper current time can not  use"
            com.huawei.hem.C0850bc.m1403m(r0)
            android.content.Context r0 = r8.f3924e
            java.lang.Class<com.android.launcher3.activity.LockActivity> r2 = com.android.launcher3.activity.LockActivity.class
            com.huawei.hem.C1423y4.m2976W(r0, r2)
            com.huawei.hem.y5 r0 = r8.f3923d
            r0.m3039d0(r1, r4)
        Lba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1348v4.m2854a():void");
    }

    /* renamed from: b */
    public final void m2855b() {
        List<WeekTactics> listLoadAll = DBController.m2715a().f3750b.getWeekTacticsDao().loadAll();
        if (MobileSdkPlatformUtilities.m2273N(listLoadAll)) {
            this.f3921b = null;
            m2856c();
        } else {
            this.f3921b = listLoadAll.get(0);
            m2856c();
        }
    }

    /* renamed from: c */
    public final void m2856c() {
        this.f3922c.clear();
        if (this.f3921b == null) {
            this.f3920a = null;
            return;
        }
        switch (Calendar.getInstance().get(7) - 1) {
            case 0:
                this.f3920a = this.f3921b.getSunday();
                break;
            case 1:
                this.f3920a = this.f3921b.getMonday();
                break;
            case 2:
                this.f3920a = this.f3921b.getTuesday();
                break;
            case 3:
                this.f3920a = this.f3921b.getWednesday();
                break;
            case 4:
                this.f3920a = this.f3921b.getThursday();
                break;
            case 5:
                this.f3920a = this.f3921b.getFriday();
                break;
            case 6:
                this.f3920a = this.f3921b.getSaturday();
                break;
        }
        this.f3922c = JSON.parseArray(this.f3920a, WorkTime.class);
    }
}
