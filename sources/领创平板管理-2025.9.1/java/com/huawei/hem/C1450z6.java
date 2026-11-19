package com.huawei.hem;

import android.util.Log;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.z6 */
/* loaded from: classes.dex */
public class C1450z6 implements InterfaceC1400x6 {

    /* renamed from: a */
    public final JSONObject f4271a;

    public C1450z6(InputStream inputStream) {
        String str;
        JSONObject jSONObject;
        if (inputStream != null) {
            try {
                jSONObject = new JSONObject(LauncherMenuHelper.m2980a(inputStream, "UTF-8"));
            } catch (IOException unused) {
                str = "IOException when reading the 'Config' from InputStream.";
                Log.e("InputStreamReader", str);
                jSONObject = new JSONObject();
                this.f4271a = jSONObject;
            } catch (JSONException unused2) {
                str = "JSONException when reading the 'Config' from InputStream.";
                Log.e("InputStreamReader", str);
                jSONObject = new JSONObject();
                this.f4271a = jSONObject;
            }
        } else {
            jSONObject = new JSONObject();
        }
        this.f4271a = jSONObject;
    }

    @Override // com.huawei.hem.InterfaceC1400x6
    /* renamed from: a */
    public String mo1299a(String str, String str2) throws JSONException {
        if (str.endsWith(GrsManager.SEPARATOR)) {
            return str2;
        }
        String[] strArrSplit = str.split(GrsManager.SEPARATOR);
        try {
            JSONObject jSONObject = this.f4271a;
            for (int i = 1; i < strArrSplit.length; i++) {
                if (i == strArrSplit.length - 1) {
                    str = jSONObject.get(strArrSplit[i]).toString();
                    return str;
                }
                jSONObject = jSONObject.getJSONObject(strArrSplit[i]);
            }
        } catch (JSONException unused) {
            Log.w("InputStreamReader", "JSONException when reading 'path': " + str);
        }
        return str2;
    }
}
