package com.p061ta.utdid2.p068b.p069a;

import android.content.Context;
import android.content.SharedPreferences;
import com.p061ta.p062a.p065c.UtCallsiteLogger;

/* renamed from: com.ta.utdid2.b.a.a */
/* loaded from: classes.dex */
public class UtdidPersistentSettings {

    /* renamed from: a */
    public SharedPreferences f6019a;

    public UtdidPersistentSettings(Context context, String str, String str2) {
        this.f6019a = null;
        if (context == null) {
            return;
        }
        this.f6019a = context.getSharedPreferences(str2, 0);
    }

    /* renamed from: a */
    public int m5419a() {
        SharedPreferences sharedPreferences = this.f6019a;
        int i = sharedPreferences != null ? sharedPreferences.getInt("type", 0) : 0;
        UtCallsiteLogger.m5404a("PersistentConfiguration", "getTypeFromSp type", Integer.valueOf(i));
        return i;
    }

    /* renamed from: k */
    public String m5421k() {
        SharedPreferences sharedPreferences = this.f6019a;
        String string = sharedPreferences != null ? sharedPreferences.getString("UTDID2", "") : "";
        UtCallsiteLogger.m5404a("PersistentConfiguration", "getUtdidFromSp utdid", string);
        return string;
    }

    /* renamed from: a */
    public void m5420a(String str, int i) {
        if (this.f6019a != null) {
            UtCallsiteLogger.m5404a("PersistentConfiguration", "writeUtdidToSp utdid", str);
            SharedPreferences.Editor editorEdit = this.f6019a.edit();
            editorEdit.putString("UTDID2", str);
            editorEdit.putInt("type", i);
            if (this.f6019a.getLong("t2", 0L) == 0) {
                editorEdit.putLong("t2", System.currentTimeMillis());
            }
            try {
                editorEdit.commit();
            } catch (Exception unused) {
            }
        }
    }
}
