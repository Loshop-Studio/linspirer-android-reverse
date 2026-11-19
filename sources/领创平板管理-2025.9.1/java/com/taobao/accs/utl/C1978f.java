package com.taobao.accs.utl;

import android.content.SharedPreferences;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.f */
/* loaded from: classes.dex */
public class C1978f {
    public static final int MAX_FAIL_TIMES = 3;

    /* renamed from: a */
    public static void m5780a() {
        try {
            int iM5782c = m5782c();
            if (iM5782c > 0) {
                SharedPreferences.Editor editorEdit = GlobalClientInfo.getContext().getSharedPreferences(Constants.SP_LOAD_SO_FILE_NAME, 0).edit();
                editorEdit.clear();
                editorEdit.apply();
                ALog.m5729i("LoadSoFailUtil", "loadSoSuccess", "fail times", Integer.valueOf(iM5782c));
            }
        } catch (Throwable th) {
            ALog.m5727e("LoadSoFailUtil", "loadSoSuccess", th, new Object[0]);
        }
    }

    /* renamed from: b */
    public static void m5781b() {
        try {
            SharedPreferences sharedPreferences = GlobalClientInfo.getContext().getSharedPreferences(Constants.SP_LOAD_SO_FILE_NAME, 0);
            int i = sharedPreferences.getInt(Constants.SP_KEY_LOAD_SO_TIMES, 0) + 1;
            if (i > 0) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putInt(Constants.SP_KEY_LOAD_SO_TIMES, i);
                editorEdit.apply();
            }
            ALog.m5728e("LoadSoFailUtil", "loadSoFail", "times", Integer.valueOf(i));
        } catch (Throwable th) {
            ALog.m5727e("LoadSoFailUtil", "loadSoFail", th, new Object[0]);
        }
    }

    /* renamed from: c */
    public static int m5782c() {
        int i;
        try {
            i = GlobalClientInfo.getContext().getSharedPreferences(Constants.SP_LOAD_SO_FILE_NAME, 0).getInt(Constants.SP_KEY_LOAD_SO_TIMES, 0);
            try {
                ALog.m5729i("LoadSoFailUtil", "getSoFailTimes", "times", Integer.valueOf(i));
            } catch (Throwable th) {
                th = th;
                ALog.m5727e("LoadSoFailUtil", "getSoFailTimes", th, new Object[0]);
                return i;
            }
        } catch (Throwable th2) {
            th = th2;
            i = 0;
        }
        return i;
    }
}
