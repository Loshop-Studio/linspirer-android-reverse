package com.taobao.agoo.p074a.p075a;

import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.JsonUtility;

/* compiled from: Taobao */
/* renamed from: com.taobao.agoo.a.a.a */
/* loaded from: classes.dex */
public class AgooAliasCommand extends AgooCommandFields {
    public static final String INVALID_TOKEN = "deprecated_alias_token_should_be_ignored";
    public static final String JSON_ALIAS_TOKEN_MAP = "aliasTokenMap";
    public static final String JSON_CMD_ADDALIAS = "setAlias";
    public static final String JSON_CMD_LISTALIAS = "getAliasTokenMap";
    public static final String JSON_CMD_REMOVEALIAS = "removeAlias";
    public static final String JSON_CMD_REMOVEALLALIAS = "unbindAllAliasByDeviceId";
    public static final String JSON_CMD_REMOVEALLALIASANDADDALIAS = "resetDeviceAndBindCurrentAlias";
    public static final String JSON_CMD_RESETALIASDEVICEONE2ONE = "resetDeviceAndAliasToSingleBind";
    public static final String JSON_CMD_RESETAlIASANDBINDCURRENT = "resetAliasAndBindCurrentDevice";

    /* renamed from: a */
    public String f6416a;

    /* renamed from: b */
    public String f6417b;

    /* renamed from: c */
    public String f6418c;

    /* renamed from: d */
    public String f6419d;

    /* renamed from: b */
    public static byte[] m5809b(String str, String str2, String str3) {
        AgooAliasCommand c2001a = new AgooAliasCommand();
        c2001a.f6416a = str;
        c2001a.f6417b = str2;
        c2001a.f6418c = str3;
        c2001a.f6420e = JSON_CMD_ADDALIAS;
        return c2001a.m5812a();
    }

    /* renamed from: c */
    public static byte[] m5810c(String str, String str2, String str3) {
        AgooAliasCommand c2001a = new AgooAliasCommand();
        c2001a.f6416a = str;
        c2001a.f6417b = str2;
        c2001a.f6418c = str3;
        c2001a.f6420e = JSON_CMD_REMOVEALLALIASANDADDALIAS;
        return c2001a.m5812a();
    }

    /* renamed from: d */
    public static byte[] m5811d(String str, String str2, String str3) {
        AgooAliasCommand c2001a = new AgooAliasCommand();
        c2001a.f6416a = str;
        c2001a.f6417b = str2;
        c2001a.f6418c = str3;
        c2001a.f6420e = JSON_CMD_RESETALIASDEVICEONE2ONE;
        return c2001a.m5812a();
    }

    /* renamed from: a */
    public byte[] m5812a() {
        try {
            String string = new JsonUtility.JsonObjectBuilder().put(AgooCommandFields.JSON_CMD, this.f6420e).put(Constants.KEY_APP_KEY, this.f6416a).put("deviceId", this.f6417b).put("alias", this.f6418c).put("pushAliasToken", this.f6419d).build().toString();
            ALog.m5729i("AliasDO", "buildData", Constants.KEY_DATA, string);
            return string.getBytes("utf-8");
        } catch (Throwable th) {
            ALog.m5727e("AliasDO", "buildData", th, new Object[0]);
            return null;
        }
    }

    /* renamed from: b */
    public static byte[] m5808b(String str, String str2) {
        AgooAliasCommand c2001a = new AgooAliasCommand();
        c2001a.f6416a = str;
        c2001a.f6417b = str2;
        c2001a.f6420e = JSON_CMD_LISTALIAS;
        return c2001a.m5812a();
    }

    /* renamed from: a */
    public static byte[] m5806a(String str, String str2, String str3) {
        AgooAliasCommand c2001a = new AgooAliasCommand();
        c2001a.f6416a = str;
        c2001a.f6417b = str2;
        c2001a.f6418c = str3;
        c2001a.f6420e = JSON_CMD_RESETAlIASANDBINDCURRENT;
        return c2001a.m5812a();
    }

    /* renamed from: a */
    public static byte[] m5807a(String str, String str2, String str3, String str4) {
        AgooAliasCommand c2001a = new AgooAliasCommand();
        c2001a.f6416a = str;
        c2001a.f6417b = str2;
        c2001a.f6418c = str3;
        c2001a.f6419d = str4;
        c2001a.f6420e = JSON_CMD_REMOVEALIAS;
        return c2001a.m5812a();
    }

    /* renamed from: a */
    public static byte[] m5805a(String str, String str2) {
        AgooAliasCommand c2001a = new AgooAliasCommand();
        c2001a.f6416a = str;
        c2001a.f6417b = str2;
        c2001a.f6420e = JSON_CMD_REMOVEALLALIAS;
        return c2001a.m5812a();
    }
}
