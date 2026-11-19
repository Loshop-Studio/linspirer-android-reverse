package org.android.agoo.message;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.UTMini;
import java.util.HashMap;
import java.util.Map;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.MsgDO;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class MessageService {
    public static final String MSG_ACCS_NOTIFY_CLICK = "8";
    public static final String MSG_ACCS_NOTIFY_DISMISS = "9";
    public static final String MSG_ACCS_READY_REPORT = "4";
    public static final String MSG_DB_COMPLETE = "100";
    public static final String MSG_DB_NOTIFY_CLICK = "2";
    public static final String MSG_DB_NOTIFY_DISMISS = "3";
    public static final String MSG_DB_NOTIFY_REACHED = "1";
    public static final String MSG_DB_READY_REPORT = "0";

    /* renamed from: a */
    public static Context f6496a;

    /* renamed from: c */
    public static Map<String, Integer> f6497c;

    /* renamed from: b */
    public volatile SQLiteOpenHelper f6498b = null;

    /* compiled from: Taobao */
    /* renamed from: org.android.agoo.message.MessageService$a */
    public static class C2022a extends SQLiteOpenHelper {
        public C2022a(Context context) {
            super(context, "emas_message_accs_db", (SQLiteDatabase.CursorFactory) null, 3);
        }

        /* renamed from: a */
        private String m5854a() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("create table accs_message");
            stringBuffer.append("(");
            stringBuffer.append("id text UNIQUE not null,");
            stringBuffer.append("state text,");
            stringBuffer.append("message text,");
            stringBuffer.append("create_time date");
            stringBuffer.append(");");
            return stringBuffer.toString();
        }

        /* renamed from: b */
        private String m5855b() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("create table message");
            stringBuffer.append("(");
            stringBuffer.append("id text UNIQUE not null,");
            stringBuffer.append("state integer,");
            stringBuffer.append("body_code integer,");
            stringBuffer.append("report long,");
            stringBuffer.append("target_time long,");
            stringBuffer.append("interval integer,");
            stringBuffer.append("type text,");
            stringBuffer.append("message text,");
            stringBuffer.append("notify integer,");
            stringBuffer.append("create_time date");
            stringBuffer.append(");");
            return stringBuffer.toString();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (AdapterUtilityImpl.checkIsWritable(super.getWritableDatabase().getPath(), 102400)) {
                return super.getWritableDatabase();
            }
            return null;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.execSQL(m5855b());
                    sQLiteDatabase.execSQL("CREATE INDEX id_index ON message(id)");
                    sQLiteDatabase.execSQL("CREATE INDEX body_code_index ON message(body_code)");
                    sQLiteDatabase.execSQL(m5854a());
                } catch (Throwable th) {
                    ALog.m5727e("MessageService", "messagedbhelper create", th, new Object[0]);
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.execSQL("delete from message where create_time< date('now','-7 day') and state=1");
                } catch (Throwable th) {
                    try {
                        ALog.m5727e("MessageService", "messagedbhelper create", th, new Object[0]);
                        try {
                            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS accs_message");
                            sQLiteDatabase.execSQL(m5854a());
                            return;
                        } catch (Throwable th2) {
                            ALog.m5727e("MessageService", "MessageService onUpgrade is error", th2, new Object[0]);
                            return;
                        }
                    } catch (Throwable th3) {
                        try {
                            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS accs_message");
                            sQLiteDatabase.execSQL(m5854a());
                        } catch (Throwable th4) {
                            ALog.m5727e("MessageService", "MessageService onUpgrade is error", th4, new Object[0]);
                        }
                        throw th3;
                    }
                }
            }
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS accs_message");
                sQLiteDatabase.execSQL(m5854a());
            } catch (Throwable th5) {
                ALog.m5727e("MessageService", "MessageService onUpgrade is error", th5, new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public void m5847a(Context context) {
        f6497c = new HashMap();
        f6496a = context;
        this.f6498b = new C2022a(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0144 A[Catch: all -> 0x0187, TRY_LEAVE, TryCatch #4 {all -> 0x0187, blocks: (B:59:0x013c, B:61:0x0144), top: B:94:0x013c }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0165 A[Catch: all -> 0x0161, TRY_LEAVE, TryCatch #0 {all -> 0x0161, blocks: (B:63:0x015d, B:67:0x0165), top: B:86:0x015d }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x015d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<org.android.agoo.common.MsgDO> m5853b() {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.android.agoo.message.MessageService.m5853b():java.util.ArrayList");
    }

    /* renamed from: a */
    public void m5848a(String str, String str2) {
        if (ALog.isPrintLog(ALog.Level.I)) {
            ALog.m5729i("MessageService", "updateAccsMessage sqlite3--->[" + str + ",state=" + str2 + "]", new Object[0]);
        }
        SQLiteDatabase writableDatabase = null;
        try {
        } catch (Throwable th) {
            try {
                if (ALog.isPrintLog(ALog.Level.E)) {
                    ALog.m5728e("MessageService", "updateAccsMessage error,e--->[" + th + "],ex=" + th.getStackTrace().toString(), new Object[0]);
                }
                UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.add_agoo_message", AdapterUtilityImpl.getDeviceId(f6496a), "updateAccsMessageFailed", th.toString());
                if (0 == 0) {
                    return;
                }
            } finally {
                if (0 != 0) {
                    writableDatabase.close();
                }
            }
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            writableDatabase = this.f6498b.getWritableDatabase();
            if (writableDatabase == null) {
                if (writableDatabase != null) {
                    return;
                } else {
                    return;
                }
            }
            if (TextUtils.equals(str2, "1")) {
                writableDatabase.execSQL("UPDATE accs_message set state = ? where id = ? and state = ?", new Object[]{str2, str, MSG_DB_READY_REPORT});
            } else {
                writableDatabase.execSQL("UPDATE accs_message set state = ? where id = ?", new Object[]{str2, str});
            }
            writableDatabase.close();
        }
    }

    /* renamed from: a */
    public void m5849a(String str, String str2, String str3) {
        Cursor cursor;
        if (ALog.isPrintLog(ALog.Level.I)) {
            ALog.m5729i("MessageService", CompilerOutline.m1762g(CompilerOutline.m1770o("addAccsMessage sqlite3--->[", str, ",message=", str2, ",state="), str3, "]"), new Object[0]);
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                SQLiteDatabase writableDatabase = this.f6498b.getWritableDatabase();
                if (writableDatabase == null) {
                    if (writableDatabase != null) {
                        writableDatabase.close();
                        return;
                    }
                    return;
                }
                try {
                    Cursor cursorRawQuery = writableDatabase.rawQuery("select count(1) from accs_message where id = ?", new String[]{str});
                    if (cursorRawQuery != null && cursorRawQuery.moveToFirst() && cursorRawQuery.getInt(0) > 0) {
                        cursorRawQuery.close();
                        cursorRawQuery.close();
                        writableDatabase.close();
                    } else {
                        writableDatabase.execSQL("INSERT INTO accs_message VALUES(?,?,?,date('now'))", new Object[]{str, str3, str2});
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        writableDatabase.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = null;
                    sQLiteDatabase = writableDatabase;
                    try {
                        if (ALog.isPrintLog(ALog.Level.E)) {
                            ALog.m5728e("MessageService", "addAccsMessage error,e--->[" + th + "],ex=" + m5842a(th), new Object[0]);
                        }
                        UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.add_agoo_message", AdapterUtilityImpl.getDeviceId(f6496a), "addAccsMessageFailed", th.toString());
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.close();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    /* renamed from: a */
    private String m5842a(Throwable th) {
        StringBuffer stringBuffer = new StringBuffer();
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace != null && stackTrace.length > 0) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                stringBuffer.append(stackTraceElement.toString());
                stringBuffer.append("\n");
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: b */
    private MsgDO m5845b(String str, String str2) {
        int i;
        String str3;
        boolean z;
        String str4 = "ext";
        int i2 = 0;
        if (ALog.isPrintLog(ALog.Level.I)) {
            StringBuilder sbM1769n = CompilerOutline.m1769n("msgRecevie,message--->[", str, "],utdid=");
            sbM1769n.append(AdapterUtilityImpl.getDeviceId(f6496a));
            ALog.m5729i("MessageService", sbM1769n.toString(), new Object[0]);
        }
        String string = null;
        if (TextUtils.isEmpty(str)) {
            UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.dealMessage", AdapterUtilityImpl.getDeviceId(f6496a), "message==null");
            if (ALog.isPrintLog(ALog.Level.I)) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("handleMessage message==null,utdid=");
                sbM1765j.append(AdapterUtilityImpl.getDeviceId(f6496a));
                ALog.m5729i("MessageService", sbM1765j.toString(), new Object[0]);
            }
            return null;
        }
        MsgDO msgDO = new MsgDO();
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            new Bundle();
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            while (i2 < length) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (jSONObject == null) {
                    i = length;
                    str3 = str4;
                } else {
                    String string2 = jSONObject.getString("p");
                    String string3 = jSONObject.getString("i");
                    String string4 = jSONObject.getString("b");
                    long j = jSONObject.getLong("f");
                    sb.append(string3);
                    if (!jSONObject.isNull(str4)) {
                        string = jSONObject.getString(str4);
                    }
                    int i3 = length - 1;
                    i = length;
                    if (i2 < i3) {
                        sb.append(",");
                    }
                    msgDO.msgIds = string3;
                    msgDO.extData = string;
                    str3 = str4;
                    msgDO.messageSource = "accs";
                    msgDO.type = "cache";
                    if (TextUtils.isEmpty(string4)) {
                        msgDO.errorCode = AgooConstants.ACK_BODY_NULL;
                    } else if (TextUtils.isEmpty(string2)) {
                        msgDO.errorCode = AgooConstants.ACK_PACK_NULL;
                    } else if (j == -1) {
                        msgDO.errorCode = AgooConstants.ACK_FLAG_NULL;
                    } else if (!m5844a(f6496a, string2)) {
                        ALog.m5726d("MessageService", "ondata checkpackage is del,pack=" + string2, new Object[0]);
                        UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.dealMessage", AdapterUtilityImpl.getDeviceId(f6496a), "deletePack", string2);
                        sb3.append(string2);
                        sb2.append(string3);
                        msgDO.removePacks = string2;
                        if (i2 < i3) {
                            sb3.append(",");
                            sb2.append(",");
                        }
                    } else {
                        String string5 = m5841a(j, msgDO).getString(AgooConstants.MESSAGE_ENCRYPTED);
                        if (!f6496a.getPackageName().equals(string2)) {
                            z = true;
                        } else if (TextUtils.equals(Integer.toString(0), string5) || TextUtils.equals(Integer.toString(4), string5)) {
                            z = false;
                        } else {
                            msgDO.errorCode = AgooConstants.ACK_PACK_ERROR;
                            ALog.m5728e("MessageService", "error encrypted: " + string5, new Object[0]);
                        }
                        msgDO.agooFlag = z;
                        if (!TextUtils.isEmpty(str2)) {
                            msgDO.msgStatus = str2;
                        }
                        i2++;
                        length = i;
                        str4 = str3;
                    }
                }
                i2++;
                length = i;
                str4 = str3;
            }
        } catch (Throwable th) {
            if (ALog.isPrintLog(ALog.Level.E)) {
                ALog.m5728e("MessageService", "createMsg is error,e: " + th, new Object[0]);
            }
        }
        return msgDO;
    }

    /* renamed from: a */
    public void m5850a(String str, String str2, String str3, int i) {
        m5843a(str, str2, str3, 1, -1L, -1, i);
    }

    /* renamed from: a */
    private void m5843a(String str, String str2, String str3, int i, long j, int i2, int i3) {
        Throwable th;
        int iHashCode;
        String str4;
        ALog.m5726d("MessageService", CompilerOutline.m1761f("add sqlite3--->[", str, "]"), new Object[0]);
        SQLiteDatabase sQLiteDatabase = null;
        try {
            String str5 = "";
            if (TextUtils.isEmpty(str2)) {
                iHashCode = -1;
                str4 = "";
            } else {
                iHashCode = str2.hashCode();
                str4 = str2;
            }
            if (!TextUtils.isEmpty(str3)) {
                str5 = str3;
            }
            if (!f6497c.containsKey(str)) {
                f6497c.put(str, Integer.valueOf(iHashCode));
                if (ALog.isPrintLog(ALog.Level.I)) {
                    ALog.m5729i("MessageService", "addMessage,messageId=" + str + ",messageStores＝" + f6497c.toString(), new Object[0]);
                }
            }
            try {
                SQLiteDatabase writableDatabase = this.f6498b.getWritableDatabase();
                if (writableDatabase == null) {
                    if (writableDatabase != null) {
                        try {
                            writableDatabase.close();
                            return;
                        } catch (Throwable th2) {
                            if (ALog.isPrintLog(ALog.Level.E)) {
                                ALog.m5728e("MessageService", "addMessage,db.close(),error,e--->[" + th2 + "]", new Object[0]);
                            }
                            UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.add_agoo_message", AdapterUtilityImpl.getDeviceId(f6496a), "addMessageDBcloseFailed", th2.toString());
                            return;
                        }
                    }
                    return;
                }
                writableDatabase.execSQL("INSERT INTO message VALUES(?,?,?,?,?,?,?,?,?,date('now'))", new Object[]{str, Integer.valueOf(i), Integer.valueOf(iHashCode), 0, Long.valueOf(j), Integer.valueOf(i2), str5, str4, Integer.valueOf(i3)});
                try {
                    writableDatabase.close();
                } catch (Throwable th3) {
                    th = th3;
                    if (ALog.isPrintLog(ALog.Level.E)) {
                        ALog.m5728e("MessageService", "addMessage,db.close(),error,e--->[" + th + "]", new Object[0]);
                    }
                    UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.add_agoo_message", AdapterUtilityImpl.getDeviceId(f6496a), "addMessageDBcloseFailed", th.toString());
                }
            } catch (Throwable th4) {
                th = th4;
                try {
                    if (ALog.isPrintLog(ALog.Level.E)) {
                        ALog.m5728e("MessageService", "addMessage error,e--->[" + th + "]", new Object[0]);
                    }
                    UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.add_agoo_message", AdapterUtilityImpl.getDeviceId(f6496a), "addMessageFailed", th.toString());
                    if (0 != 0) {
                        try {
                            sQLiteDatabase.close();
                        } catch (Throwable th5) {
                            th = th5;
                            if (ALog.isPrintLog(ALog.Level.E)) {
                                ALog.m5728e("MessageService", "addMessage,db.close(),error,e--->[" + th + "]", new Object[0]);
                            }
                            UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.add_agoo_message", AdapterUtilityImpl.getDeviceId(f6496a), "addMessageDBcloseFailed", th.toString());
                        }
                    }
                } finally {
                }
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    /* renamed from: a */
    public void m5846a() {
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = this.f6498b.getWritableDatabase();
        } catch (Throwable th) {
            try {
                ALog.m5727e("MessageService", "deleteCacheMessage sql Throwable", th, new Object[0]);
                if (0 == 0) {
                    return;
                }
            } catch (Throwable th2) {
                if (0 != 0) {
                    try {
                        writableDatabase.close();
                    } catch (Throwable unused) {
                    }
                }
                throw th2;
            }
        }
        if (writableDatabase == null) {
            if (writableDatabase != null) {
                try {
                    writableDatabase.close();
                    return;
                } catch (Throwable unused2) {
                    return;
                }
            }
            return;
        }
        writableDatabase.execSQL("delete from message where create_time< date('now','-7 day') and state=1");
        writableDatabase.execSQL("delete from accs_message where create_time< date('now','-1 day') ");
        try {
            writableDatabase.close();
        } catch (Throwable unused3) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0055  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5851a(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            java.util.Map<java.lang.String, java.lang.Integer> r2 = org.android.agoo.message.MessageService.f6497c     // Catch: java.lang.Throwable -> L62
            boolean r2 = r2.containsKey(r8)     // Catch: java.lang.Throwable -> L62
            r3 = 1
            if (r2 == 0) goto L2d
            com.taobao.accs.utl.ALog$Level r2 = com.taobao.accs.utl.ALog.Level.E     // Catch: java.lang.Throwable -> L62
            boolean r2 = com.taobao.accs.utl.ALog.isPrintLog(r2)     // Catch: java.lang.Throwable -> L62
            if (r2 == 0) goto L2b
            java.lang.String r2 = "MessageService"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L62
            r4.<init>()     // Catch: java.lang.Throwable -> L62
            java.lang.String r5 = "hasMessageDuplicate,msgid="
            r4.append(r5)     // Catch: java.lang.Throwable -> L62
            r4.append(r8)     // Catch: java.lang.Throwable -> L62
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L62
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L62
            com.taobao.accs.utl.ALog.m5728e(r2, r4, r5)     // Catch: java.lang.Throwable -> L62
        L2b:
            r2 = r3
            goto L2e
        L2d:
            r2 = r1
        L2e:
            android.database.sqlite.SQLiteOpenHelper r4 = r7.f6498b     // Catch: java.lang.Throwable -> L5f
            android.database.sqlite.SQLiteDatabase r4 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L5f
            if (r4 != 0) goto L3c
            if (r4 == 0) goto L3b
            r4.close()     // Catch: java.lang.Throwable -> L3b
        L3b:
            return r2
        L3c:
            java.lang.String r5 = "select count(1) from message where id = ?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L60
            r6[r1] = r8     // Catch: java.lang.Throwable -> L60
            android.database.Cursor r0 = r4.rawQuery(r5, r6)     // Catch: java.lang.Throwable -> L60
            if (r0 == 0) goto L55
            boolean r8 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L60
            if (r8 == 0) goto L55
            int r8 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L60
            if (r8 <= 0) goto L55
            goto L56
        L55:
            r3 = r2
        L56:
            if (r0 == 0) goto L5b
            r0.close()     // Catch: java.lang.Throwable -> L6e
        L5b:
            r4.close()     // Catch: java.lang.Throwable -> L6e
            goto L6e
        L5f:
            r4 = r0
        L60:
            r1 = r2
            goto L63
        L62:
            r4 = r0
        L63:
            if (r0 == 0) goto L68
            r0.close()     // Catch: java.lang.Throwable -> L6d
        L68:
            if (r4 == 0) goto L6d
            r4.close()     // Catch: java.lang.Throwable -> L6d
        L6d:
            r3 = r1
        L6e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.android.agoo.message.MessageService.m5851a(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5852a(java.lang.String r9, int r10) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            java.util.Map<java.lang.String, java.lang.Integer> r2 = org.android.agoo.message.MessageService.f6497c     // Catch: java.lang.Throwable -> L82
            boolean r2 = r2.containsKey(r9)     // Catch: java.lang.Throwable -> L82
            r3 = 1
            if (r2 == 0) goto L39
            java.util.Map<java.lang.String, java.lang.Integer> r2 = org.android.agoo.message.MessageService.f6497c     // Catch: java.lang.Throwable -> L82
            java.lang.Integer r4 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> L82
            boolean r2 = r2.containsValue(r4)     // Catch: java.lang.Throwable -> L82
            if (r2 == 0) goto L39
            com.taobao.accs.utl.ALog$Level r2 = com.taobao.accs.utl.ALog.Level.I     // Catch: java.lang.Throwable -> L82
            boolean r2 = com.taobao.accs.utl.ALog.isPrintLog(r2)     // Catch: java.lang.Throwable -> L82
            if (r2 == 0) goto L37
            java.lang.String r2 = "MessageService"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82
            r4.<init>()     // Catch: java.lang.Throwable -> L82
            java.lang.String r5 = "addMessage,messageStores hasMessageDuplicate,msgid="
            r4.append(r5)     // Catch: java.lang.Throwable -> L82
            r4.append(r9)     // Catch: java.lang.Throwable -> L82
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L82
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L82
            com.taobao.accs.utl.ALog.m5729i(r2, r4, r5)     // Catch: java.lang.Throwable -> L82
        L37:
            r2 = r3
            goto L3a
        L39:
            r2 = r1
        L3a:
            android.database.sqlite.SQLiteOpenHelper r4 = r8.f6498b     // Catch: java.lang.Throwable -> L7f
            android.database.sqlite.SQLiteDatabase r4 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L7f
            if (r4 != 0) goto L48
            if (r4 == 0) goto L47
            r4.close()     // Catch: java.lang.Throwable -> L47
        L47:
            return r2
        L48:
            java.lang.String r5 = "select count(1) from message where id = ? and body_code=? and create_time< date('now','-1 day')"
            r6 = 2
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> L80
            r6[r1] = r9     // Catch: java.lang.Throwable -> L80
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L80
            r9.<init>()     // Catch: java.lang.Throwable -> L80
            java.lang.String r7 = ""
            r9.append(r7)     // Catch: java.lang.Throwable -> L80
            r9.append(r10)     // Catch: java.lang.Throwable -> L80
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L80
            r6[r3] = r9     // Catch: java.lang.Throwable -> L80
            android.database.Cursor r0 = r4.rawQuery(r5, r6)     // Catch: java.lang.Throwable -> L80
            if (r0 == 0) goto L75
            boolean r9 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L80
            if (r9 == 0) goto L75
            int r9 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L80
            if (r9 <= 0) goto L75
            goto L76
        L75:
            r3 = r2
        L76:
            if (r0 == 0) goto L7b
            r0.close()     // Catch: java.lang.Throwable -> L8e
        L7b:
            r4.close()     // Catch: java.lang.Throwable -> L8e
            goto L8e
        L7f:
            r4 = r0
        L80:
            r1 = r2
            goto L83
        L82:
            r4 = r0
        L83:
            if (r0 == 0) goto L88
            r0.close()     // Catch: java.lang.Throwable -> L8d
        L88:
            if (r4 == 0) goto L8d
            r4.close()     // Catch: java.lang.Throwable -> L8d
        L8d:
            r3 = r1
        L8e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.android.agoo.message.MessageService.m5852a(java.lang.String, int):boolean");
    }

    /* renamed from: a */
    public static final boolean m5844a(Context context, String str) {
        return context.getPackageManager().getApplicationInfo(str, 0) != null;
    }

    /* renamed from: a */
    public static Bundle m5841a(long j, MsgDO msgDO) {
        Bundle bundle = new Bundle();
        try {
            char[] charArray = Long.toBinaryString(j).toCharArray();
            if (charArray != null && 8 <= charArray.length) {
                if (8 <= charArray.length) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("");
                    sb.append(Integer.parseInt("" + charArray[1] + charArray[2] + charArray[3] + charArray[4], 2));
                    bundle.putString(AgooConstants.MESSAGE_ENCRYPTED, sb.toString());
                    if (charArray[6] == '1') {
                        bundle.putString(AgooConstants.MESSAGE_REPORT, "1");
                        msgDO.reportStr = "1";
                    }
                    if (charArray[7] == '1') {
                        bundle.putString(AgooConstants.MESSAGE_NOTIFICATION, "1");
                    }
                }
                if (9 <= charArray.length && charArray[8] == '1') {
                    bundle.putString(AgooConstants.MESSAGE_HAS_TEST, "1");
                }
                if (10 <= charArray.length && charArray[9] == '1') {
                    bundle.putString(AgooConstants.MESSAGE_DUPLICATE, "1");
                }
                if (11 <= charArray.length && charArray[10] == '1') {
                    bundle.putInt(AgooConstants.MESSAGE_POPUP, 1);
                }
            }
        } catch (Throwable unused) {
        }
        return bundle;
    }
}
