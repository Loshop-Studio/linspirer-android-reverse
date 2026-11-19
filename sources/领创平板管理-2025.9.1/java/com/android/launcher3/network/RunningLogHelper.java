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
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.C0930ee;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HttpCore;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.UploadBuilder;
import com.huawei.hem.IResponseHandler;
import java.io.File;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class RunningLogHelper {
    public static void UploadRunningLog(Context context, String str) {
        if (!C0930ee.m1680e(str)) {
            LTKDateUtil.m1403m("upload file:" + str + "not exsit");
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_faile), 0);
            return;
        }
        File file = new File(str);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && file.length() != 0) {
            uploadFile(context, fileArrListFiles);
        } else {
            LTKDateUtil.m1403m("upload file but no child file");
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_faile), 0);
        }
    }

    public static void handleResult(Context context, String str, File file) {
        try {
            if (str == null) {
                LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
                return;
            }
            FileUploadResponse fileUploadResponse = (FileUploadResponse) JSON.parseObject(str, FileUploadResponse.class);
            if (fileUploadResponse != null && fileUploadResponse.getCode() == 0) {
                FileUpload data = fileUploadResponse.getData();
                if (data != null) {
                    reportLogs(context, data.getFileNewPath());
                    C0930ee.m1679d(file.getAbsolutePath());
                    LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_success), 0);
                    return;
                }
                return;
            }
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
        } catch (Exception e) {
            e.printStackTrace();
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
        }
    }

    public static void reportLogs(final Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
            return;
        }
        try {
            ClientLogParams clientLogParams = new ClientLogParams();
            clientLogParams.setSwdid(LauncherDeviceUtils.m1593j(context));
            clientLogParams.setPath(str);
            V2Params v2Params = new V2Params();
            v2Params.setParams(JSON.toJSONString(clientLogParams));
            v2Params.setMethod(RequestUrl.LOG_METHOD);
            PostBuilder c1355vb = new PostBuilder(new HttpCore());
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.RunningLogHelper.2
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    LTKDateUtil.m1403m("client log file failed");
                    LTKDateUtil.m1415y(context, R.string.log_report_error);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    LTKDateUtil.m1403m("client log file failure");
                    LTKDateUtil.m1415y(context, R.string.log_report_error);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    LTKDateUtil.m1403m("client log file sucess");
                    LTKDateUtil.m1415y(context, R.string.log_success);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
        }
    }

    public static void uploadFile(final Context context, File[] fileArr) {
        try {
            for (final File file : fileArr) {
                if (C0930ee.m1681f(file.getAbsolutePath())) {
                    UploadBuilder c1380wb = new UploadBuilder(new HttpCore());
                    if (c1380wb.f4014e == null) {
                        c1380wb.f4014e = new LinkedHashMap();
                    }
                    c1380wb.f4014e.put("upload_tlt", file);
                    c1380wb.f3777a = RequestUrl.FILE_UPLOAD_URL;
                    c1380wb.m2907c(new IResponseHandler() { // from class: com.android.launcher3.network.RunningLogHelper.1
                        @Override // com.huawei.hem.InterfaceC1430yb
                        public void onFailure(Object obj) {
                            StringBuilder sbM1765j = CompilerOutline.m1765j("upload log file failed:");
                            sbM1765j.append(obj.toString());
                            LTKDateUtil.m1403m(sbM1765j.toString());
                        }

                        @Override // com.huawei.hem.InterfaceC1430yb
                        public void onProgress(long j, long j2) {
                        }

                        @Override // com.huawei.hem.InterfaceC1430yb
                        public void onSucess(String str) {
                            LTKDateUtil.m1403m("upload log file sucess");
                            RunningLogHelper.handleResult(context, str, file);
                        }
                    });
                } else {
                    LTKDateUtil.m1403m("upload item file:" + file.getAbsolutePath() + " not exsit");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.log_report_error), 0);
        }
    }
}
