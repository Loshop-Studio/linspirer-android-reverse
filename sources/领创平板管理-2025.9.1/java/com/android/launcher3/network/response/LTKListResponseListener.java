package com.android.launcher3.network.response;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import com.alibaba.fastjson.JSON;
import com.taobao.accs.common.Constants;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class LTKListResponseListener<T> extends BaseResponse {
    public Class<T> clazz;

    public LTKListResponseListener(Class<T> cls) {
        this.clazz = cls;
    }

    public abstract void handleResult(List<T> list);

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onSucessDecrypt(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("code") && jSONObject.getInt("code") == 0) {
                handleResult(JSON.parseArray(jSONObject.getJSONArray(Constants.KEY_DATA).toString(), this.clazz));
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
