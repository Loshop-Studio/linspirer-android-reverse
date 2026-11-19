package com.alibaba.sdk.android.tbrest.rest;

import android.content.Context;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* compiled from: RestSecuritySDKRequestAuthentication.java */
/* renamed from: com.alibaba.sdk.android.tbrest.rest.g */
/* loaded from: classes.dex */
public class C0606g {

    /* renamed from: b */
    public String f1418b;
    public Context mContext;

    /* renamed from: a */
    public Object f1415a = null;

    /* renamed from: b */
    public Object f1417b = null;

    /* renamed from: a */
    public Class f1414a = null;

    /* renamed from: a */
    public Field f1416a = null;

    /* renamed from: b */
    public Field f1419b = null;

    /* renamed from: c */
    public Field f1421c = null;

    /* renamed from: b */
    public Method f1420b = null;

    /* renamed from: h */
    public int f1423h = 1;

    /* renamed from: e */
    public boolean f1422e = false;

    public C0606g(Context context, String str) {
        this.f1418b = null;
        this.mContext = context;
        this.f1418b = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ba A[Catch: all -> 0x00be, TRY_LEAVE, TryCatch #5 {, blocks: (B:3:0x0001, B:33:0x00ba, B:32:0x00b5, B:12:0x003c, B:14:0x0043, B:19:0x0078, B:30:0x009e, B:23:0x008e, B:17:0x0070, B:15:0x0067, B:21:0x0087), top: B:50:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void m994g() {
        /*
            r7 = this;
            monitor-enter(r7)
            boolean r0 = r7.f1422e     // Catch: java.lang.Throwable -> Lbe
            if (r0 == 0) goto L7
            monitor-exit(r7)
            return
        L7:
            r0 = 0
            r1 = 1
            r2 = 0
            java.lang.String r3 = "com.taobao.wireless.security.sdk.SecurityGuardManager"
            java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.Throwable -> L3b
            java.lang.String r4 = "getInstance"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L3c
            java.lang.Class<android.content.Context> r6 = android.content.Context.class
            r5[r2] = r6     // Catch: java.lang.Throwable -> L3c
            java.lang.reflect.Method r4 = r3.getMethod(r4, r5)     // Catch: java.lang.Throwable -> L3c
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L3c
            android.content.Context r6 = r7.mContext     // Catch: java.lang.Throwable -> L3c
            r5[r2] = r6     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r4 = r4.invoke(r0, r5)     // Catch: java.lang.Throwable -> L3c
            r7.f1415a = r4     // Catch: java.lang.Throwable -> L3c
            java.lang.String r4 = "getSecureSignatureComp"
            java.lang.Class[] r5 = new java.lang.Class[r2]     // Catch: java.lang.Throwable -> L3c
            java.lang.reflect.Method r4 = r3.getMethod(r4, r5)     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r5 = r7.f1415a     // Catch: java.lang.Throwable -> L3c
            java.lang.Object[] r6 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r4 = r4.invoke(r5, r6)     // Catch: java.lang.Throwable -> L3c
            r7.f1417b = r4     // Catch: java.lang.Throwable -> L3c
            goto L41
        L3b:
            r3 = r0
        L3c:
            java.lang.String r4 = "initSecurityCheck failure, It's ok "
            com.alibaba.sdk.android.tbrest.utils.LogUtil.m999i(r4)     // Catch: java.lang.Throwable -> Lbe
        L41:
            if (r3 == 0) goto Lba
            java.lang.String r4 = "com.taobao.wireless.security.sdk.SecurityGuardParamContext"
            java.lang.Class r4 = java.lang.Class.forName(r4)     // Catch: java.lang.Throwable -> Lb5
            r7.f1414a = r4     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r5 = "appKey"
            java.lang.reflect.Field r4 = r4.getDeclaredField(r5)     // Catch: java.lang.Throwable -> Lb5
            r7.f1416a = r4     // Catch: java.lang.Throwable -> Lb5
            java.lang.Class r4 = r7.f1414a     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r5 = "paramMap"
            java.lang.reflect.Field r4 = r4.getDeclaredField(r5)     // Catch: java.lang.Throwable -> Lb5
            r7.f1419b = r4     // Catch: java.lang.Throwable -> Lb5
            java.lang.Class r4 = r7.f1414a     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r5 = "requestType"
            java.lang.reflect.Field r4 = r4.getDeclaredField(r5)     // Catch: java.lang.Throwable -> Lb5
            r7.f1421c = r4     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r4 = "isOpen"
            java.lang.Class[] r5 = new java.lang.Class[r2]     // Catch: java.lang.Throwable -> L70
            java.lang.reflect.Method r3 = r3.getMethod(r4, r5)     // Catch: java.lang.Throwable -> L70
            goto L76
        L70:
            java.lang.String r3 = "initSecurityCheck failure, It's ok"
            com.alibaba.sdk.android.tbrest.utils.LogUtil.m999i(r3)     // Catch: java.lang.Throwable -> Lb5
            r3 = r0
        L76:
            if (r3 == 0) goto L87
            java.lang.Object r0 = r7.f1415a     // Catch: java.lang.Throwable -> Lb5
            java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lb5
            java.lang.Object r0 = r3.invoke(r0, r4)     // Catch: java.lang.Throwable -> Lb5
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> Lb5
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> Lb5
            goto L98
        L87:
            java.lang.String r3 = "com.taobao.wireless.security.sdk.securitybody.ISecurityBodyComponent"
            java.lang.Class r0 = java.lang.Class.forName(r3)     // Catch: java.lang.Throwable -> L8e
            goto L93
        L8e:
            java.lang.String r3 = "initSecurityCheck failure, It's ok"
            com.alibaba.sdk.android.tbrest.utils.LogUtil.m999i(r3)     // Catch: java.lang.Throwable -> Lb5
        L93:
            if (r0 != 0) goto L97
            r0 = r1
            goto L98
        L97:
            r0 = r2
        L98:
            if (r0 == 0) goto L9c
            r0 = r1
            goto L9e
        L9c:
            r0 = 12
        L9e:
            r7.f1423h = r0     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r0 = "com.taobao.wireless.security.sdk.securesignature.ISecureSignatureComponent"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r3 = "signRequest"
            java.lang.Class[] r4 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> Lb5
            java.lang.Class r5 = r7.f1414a     // Catch: java.lang.Throwable -> Lb5
            r4[r2] = r5     // Catch: java.lang.Throwable -> Lb5
            java.lang.reflect.Method r0 = r0.getMethod(r3, r4)     // Catch: java.lang.Throwable -> Lb5
            r7.f1420b = r0     // Catch: java.lang.Throwable -> Lb5
            goto Lba
        Lb5:
            java.lang.String r0 = "initSecurityCheck failure, It's ok"
            com.alibaba.sdk.android.tbrest.utils.LogUtil.m999i(r0)     // Catch: java.lang.Throwable -> Lbe
        Lba:
            r7.f1422e = r1     // Catch: java.lang.Throwable -> Lbe
            monitor-exit(r7)
            return
        Lbe:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.tbrest.rest.C0606g.m994g():void");
    }

    /* renamed from: b */
    public String m995b(String str) throws IllegalAccessException, InstantiationException, IllegalArgumentException {
        Class cls;
        if (!this.f1422e) {
            m994g();
        }
        if (this.f1418b == null) {
            LogUtil.m997e("RestSecuritySDKRequestAuthentication:getSign There is no appkey,please check it!");
            return null;
        }
        if (str == null || this.f1415a == null || (cls = this.f1414a) == null || this.f1416a == null || this.f1419b == null || this.f1421c == null || this.f1420b == null || this.f1417b == null) {
            return null;
        }
        try {
            Object objNewInstance = cls.newInstance();
            this.f1416a.set(objNewInstance, this.f1418b);
            ((Map) this.f1419b.get(objNewInstance)).put("INPUT", str);
            this.f1421c.set(objNewInstance, Integer.valueOf(this.f1423h));
            return (String) this.f1420b.invoke(this.f1417b, objNewInstance);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return null;
        } catch (InstantiationException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
