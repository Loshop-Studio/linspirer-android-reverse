package com.android.launcher3.network.params;

import android.content.pm.PackageManager;
import com.alibaba.fastjson.annotation.JSONField;
import com.android.launcher3.GuardSecureApplication;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0940eo;
import com.huawei.hem.C0948f6;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import org.android.agoo.common.AgooConstants;

/* loaded from: classes.dex */
public class V2Params {
    public String client_version;
    public String method;
    public String params;

    /* renamed from: id */
    public int f2035id = 1;
    public int version = 6;
    public String jsonrpc = "2.0";

    private String getOwnVersionName() {
        try {
            return GuardSecureApplication.f1640b.getPackageManager().getPackageInfo("com.android.launcher3", 1).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getClient_version() {
        return getOwnVersionName();
    }

    @JSONField(name = AgooConstants.MESSAGE_ID)
    public int getId() {
        return this.f2035id;
    }

    public String getJsonrpc() {
        return this.jsonrpc;
    }

    @JSONField(name = "method")
    public String getMethod() {
        return this.method;
    }

    public String getParams() {
        String str = this.params;
        C0850bc.m1395e("1191ADF1-8489-D8DA-5E9B-755A8B674394");
        try {
            Cipher cipherM1402l = C0850bc.m1402l(1);
            return cipherM1402l == null ? str : new String(C0940eo.m1690f(cipherM1402l.doFinal(str.getBytes())));
        } catch (BadPaddingException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("login two:");
            sbM1765j.append(e.getMessage());
            C0850bc.m1393c(sbM1765j.toString());
            return str;
        } catch (IllegalBlockSizeException e2) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("login one:");
            sbM1765j2.append(e2.getMessage());
            C0850bc.m1393c(sbM1765j2.toString());
            return str;
        } catch (Exception e3) {
            C0948f6.m1776u(e3, C0948f6.m1765j("logoutold exception:"));
            return str;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("logoutold throwable:"));
            return str;
        }
    }

    @JSONField(name = "!version")
    public int getVersion() {
        return this.version;
    }

    public void setClient_version(String str) {
        this.client_version = str;
    }

    public void setId(int i) {
        this.f2035id = i;
    }

    public void setJsonrpc(String str) {
        this.jsonrpc = str;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setParams(String str) {
        this.params = str;
    }

    public void setVersion(int i) {
        this.version = i;
    }
}
