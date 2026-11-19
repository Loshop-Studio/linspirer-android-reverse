package com.huawei.hem;

import android.content.Context;
import android.os.AsyncTask;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.huawei.hem.nb */
/* loaded from: classes.dex */
public class AsyncTaskC1155nb extends AsyncTask<Context, Integer, Boolean> {

    /* renamed from: a */
    public static final String f3299a = AsyncTaskC1155nb.class.getSimpleName();

    @Override // android.os.AsyncTask
    public Boolean doInBackground(Context[] contextArr) throws IOException {
        InputStream inputStreamM2365i;
        Context[] contextArr2 = contextArr;
        System.currentTimeMillis();
        try {
            inputStreamM2365i = C1130mb.m2365i(contextArr2[0]);
        } catch (Exception e) {
            String str = f3299a;
            StringBuilder sbM1765j = CompilerOutline.m1765j("doInBackground: exception : ");
            sbM1765j.append(e.getMessage());
            AbstractC1102l9.m2264E(str, sbM1765j.toString());
            inputStreamM2365i = null;
        }
        System.currentTimeMillis();
        if (inputStreamM2365i == null) {
            return Boolean.FALSE;
        }
        AbstractC1102l9.m2294q(inputStreamM2365i);
        return Boolean.TRUE;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Boolean bool) {
        if (bool.booleanValue()) {
            AbstractC1102l9.m2267H(f3299a, "onPostExecute: upate done");
        } else {
            AbstractC1102l9.m2264E(f3299a, "onPostExecute: upate failed");
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
    }

    @Override // android.os.AsyncTask
    public void onProgressUpdate(Integer[] numArr) {
        AbstractC1102l9.m2267H(f3299a, "onProgressUpdate");
    }
}
