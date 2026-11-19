package com.huawei.updatesdk.service.otaupdate;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p043b.p044a.UpdateApplicationContext;
import com.huawei.updatesdk.p048b.p058h.UpdatePackageInfo;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.huawei.updatesdk.service.otaupdate.c */
/* loaded from: classes.dex */
public class AutoUpdateCoordinator {

    /* renamed from: a */
    public static String f4786a;

    /* renamed from: com.huawei.updatesdk.service.otaupdate.c$a */
    public interface a {
        /* renamed from: a */
        void mo3865a(Boolean bool);
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.c$b */
    public static class b extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a */
        public a f4787a;

        public b(a aVar) {
            this.f4787a = aVar;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(Void... voidArr) {
            Cursor cursorQuery = null;
            boolean z = false;
            try {
                try {
                    cursorQuery = UpdateApplicationContext.m3591c().m3592a().getContentResolver().query(Uri.parse(AutoUpdateCoordinator.f4786a), null, null, null, null);
                    if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                        UpdateSdkLog.m3500a("AutoUpdateUtil", "cursor == null");
                    } else {
                        boolean zBooleanValue = Boolean.valueOf(cursorQuery.getString(cursorQuery.getColumnIndex("isagree"))).booleanValue();
                        boolean zBooleanValue2 = Boolean.valueOf(cursorQuery.getString(cursorQuery.getColumnIndex("isopenautoupdate"))).booleanValue();
                        boolean zBooleanValue3 = Boolean.valueOf(cursorQuery.getString(cursorQuery.getColumnIndex("isneverreminder"))).booleanValue();
                        if (zBooleanValue && !zBooleanValue2 && !zBooleanValue3) {
                            z = true;
                        }
                    }
                } catch (Exception e) {
                    UpdateSdkLog.m3500a("AutoUpdateUtil", "close cursor error: " + e.toString());
                    if (0 != 0) {
                    }
                }
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Exception unused) {
                        UpdateLogWriter.m3516b("AutoUpdateUtil", "cursor Execption");
                    }
                }
                return Boolean.valueOf(z);
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        cursorQuery.close();
                    } catch (Exception unused2) {
                        UpdateLogWriter.m3516b("AutoUpdateUtil", "cursor Execption");
                    }
                }
                throw th;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            a aVar = this.f4787a;
            if (aVar != null) {
                aVar.mo3865a(bool);
            }
        }
    }

    /* renamed from: a */
    public void m3870a(Context context, String str, a aVar) throws ExecutionException, InterruptedException, TimeoutException {
        if (!UpdatePackageInfo.m3769e(context, str) || !MarketStoreOptions.m3889f().m3897d()) {
            aVar.mo3865a(Boolean.FALSE);
            return;
        }
        b bVar = new b(aVar);
        bVar.executeOnExecutor(Executors.newSingleThreadExecutor(), new Void[0]);
        try {
            f4786a = String.format(Locale.ROOT, "content://%s.commondata/item/4", str);
            bVar.get(500L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            bVar.cancel(true);
            UpdateSdkLog.m3500a("AutoUpdateUtil", "init AutoUpdateInfo error: " + e.toString());
            aVar.mo3865a(Boolean.FALSE);
        }
    }
}
