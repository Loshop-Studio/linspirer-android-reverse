package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.R;
import com.android.launcher3.model.FileUpload;
import com.android.launcher3.network.params.ClientLogParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.FileUploadResponse;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0904de;
import com.huawei.hem.C0930ee;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1380wb;
import com.huawei.hem.InterfaceC1430yb;
import java.io.File;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class RunningLogHelper {
    public static void UploadRunningLog(Context context, String str) {
        if (!C0930ee.m1680e(str)) {
            C0850bc.m1403m("upload file:" + str + "not exsit");
            C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_faile), 0);
            return;
        }
        File file = new File(str);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && file.length() != 0) {
            uploadFile(context, fileArrListFiles);
        } else {
            C0850bc.m1403m("upload file but no child file");
            C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_faile), 0);
        }
    }

    public static void handleResult(Context context, String str, File file) {
        try {
            if (str == null) {
                C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
                return;
            }
            FileUploadResponse fileUploadResponse = (FileUploadResponse) JSON.parseObject(str, FileUploadResponse.class);
            if (fileUploadResponse != null && fileUploadResponse.getCode() == 0) {
                FileUpload data = fileUploadResponse.getData();
                if (data != null) {
                    reportLogs(context, data.getFileNewPath());
                    C0930ee.m1679d(file.getAbsolutePath());
                    C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_success), 0);
                    return;
                }
                return;
            }
            C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
        } catch (Exception e) {
            e.printStackTrace();
            C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
        }
    }

    public static void reportLogs(final Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
            return;
        }
        try {
            ClientLogParams clientLogParams = new ClientLogParams();
            clientLogParams.setSwdid(C0904de.m1593j(context));
            clientLogParams.setPath(str);
            V2Params v2Params = new V2Params();
            v2Params.setParams(JSON.toJSONString(clientLogParams));
            v2Params.setMethod(RequestUrl.LOG_METHOD);
            C1355vb c1355vb = new C1355vb(new C1255rb());
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.RunningLogHelper.2
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    C0850bc.m1403m("client log file failed");
                    C0850bc.m1415y(context, R.string.log_report_error);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    C0850bc.m1403m("client log file failure");
                    C0850bc.m1415y(context, R.string.log_report_error);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    C0850bc.m1403m("client log file sucess");
                    C0850bc.m1415y(context, R.string.log_success);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
        }
    }

    public static void uploadFile(final Context context, File[] fileArr) {
        try {
            for (final File file : fileArr) {
                if (C0930ee.m1681f(file.getAbsolutePath())) {
                    C1380wb c1380wb = new C1380wb(new C1255rb());
                    if (c1380wb.f4014e == null) {
                        c1380wb.f4014e = new LinkedHashMap();
                    }
                    c1380wb.f4014e.put("upload_tlt", file);
                    c1380wb.f3777a = RequestUrl.FILE_UPLOAD_URL;
                    c1380wb.m2907c(new InterfaceC1430yb() { // from class: com.android.launcher3.network.RunningLogHelper.1
                        @Override // com.huawei.hem.InterfaceC1430yb
                        public void onFailure(Object obj) {
                            StringBuilder sbM1765j = C0948f6.m1765j("upload log file failed:");
                            sbM1765j.append(obj.toString());
                            C0850bc.m1403m(sbM1765j.toString());
                        }

                        @Override // com.huawei.hem.InterfaceC1430yb
                        public void onProgress(long j, long j2) {
                        }

                        @Override // com.huawei.hem.InterfaceC1430yb
                        public void onSucess(String str) {
                            C0850bc.m1403m("upload log file sucess");
                            RunningLogHelper.handleResult(context, str, file);
                        }
                    });
                } else {
                    C0850bc.m1403m("upload item file:" + file.getAbsolutePath() + " not exsit");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            C0850bc.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
        }
    }
}
