package com.android.launcher3.network.response;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import com.alibaba.fastjson.JSON;
import com.taobao.accs.common.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class LTKResponseListener<T> extends BaseResponse {
    public Class<T> clazz;

    public LTKResponseListener(Class<T> cls) {
        this.clazz = cls;
    }

    public void handleResult(Boolean bool) {
    }

    public void handleResult(Integer num) {
    }

    public void handleResult(T t) {
    }

    public void handleResult(String str) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.launcher3.network.response.BaseResponse
    // RE note: This callback receives decoded business JSON. Only type=boolean and type=string take scalar branches.
    public void onSucessDecrypt(String str) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("code") && jSONObject.getInt("code") == 0) {
                String string = jSONObject.getString("type");
                if ("boolean".equals(string)) {
                    handleResult(Boolean.valueOf(jSONObject.getBoolean(Constants.KEY_DATA)));
                } else if ("string".equals(string)) {
                    handleResult(jSONObject.getString(Constants.KEY_DATA));
                } else {
                    handleResult((LTKResponseListener<T>) JSON.parseObject(jSONObject.getJSONObject(Constants.KEY_DATA).toString(), this.clazz));
                }
            } else {
                onFailed((Response) JSON.parseObject(str, Response.class));
            }
        } catch (JSONException e) {
            e.printStackTrace();
            Response response = new Response();
            response.setCode(-200);
            response.setData("");
            onFailed(response);
        }
    }
}
