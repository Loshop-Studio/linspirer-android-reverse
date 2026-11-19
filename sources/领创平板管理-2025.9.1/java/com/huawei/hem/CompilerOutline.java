package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.error.ErrorDefine;
import com.huawei.hms.support.log.HMSLog;
import java.util.ArrayList;
import org.greenrobot.greendao.database.Database;

/* compiled from: outline */
/* renamed from: com.huawei.hem.f6 */
/* loaded from: classes.dex */
public class CompilerOutline {
    /* renamed from: A */
    public static void m1743A(StringBuilder sb, String str, String str2, Database database) {
        sb.append(str);
        sb.append(str2);
        database.execSQL(sb.toString());
    }

    /* renamed from: B */
    public static void m1744B(Throwable th, StringBuilder sb) {
        sb.append(th.getMessage());
        LTKDateUtil.m1393c(sb.toString());
    }

    /* renamed from: C */
    public static void m1745C(Throwable th, StringBuilder sb) {
        sb.append(th.getMessage());
        LTKDateUtil.m1403m(sb.toString());
    }

    /* renamed from: D */
    public static void m1746D(Throwable th, StringBuilder sb) {
        sb.append(th.getMessage());
        LTKDateUtil.m1390A(sb.toString());
    }

    /* renamed from: E */
    public static void m1747E(Throwable th, StringBuilder sb) {
        sb.append(th.getMessage());
        LTKDateUtil.m1403m(sb.toString());
        th.printStackTrace();
    }

    /* renamed from: F */
    public static Intent m1748F(String str, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.putExtra(str2, str3);
        return intent;
    }

    /* renamed from: G */
    public static void m1749G(ArrayList arrayList, String str, String str2, String str3, String str4) {
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(str3);
        arrayList.add(str4);
    }

    /* renamed from: H */
    public static void m1750H(boolean z, String str, Intent intent, String str2) {
        intent.putExtra(str2, z + str);
    }

    /* renamed from: I */
    public static Intent m1751I(String str, String str2, String str3, String str4, String str5) {
        Intent intent = new Intent(str);
        intent.setClassName(str2, str3);
        intent.putExtra(str4, str5);
        return intent;
    }

    /* renamed from: J */
    public static ErrorCode m1752J(ErrorDefine errorDefine, String str, String str2, String str3) {
        return errorDefine.defineSdkError(str).msg(str2).solution(str3).build();
    }

    /* renamed from: K */
    public static String m1753K(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    /* renamed from: L */
    public static String m1754L(String str, int i) {
        return str + i;
    }

    /* renamed from: M */
    public static String m1755M(String str, long j) {
        return str + j;
    }

    /* renamed from: a */
    public static char m1756a(int i, int i2, int i3, JSONLexerBase jSONLexerBase) {
        return jSONLexerBase.charAt(i + i2 + i3);
    }

    /* renamed from: b */
    public static char m1757b(int i, int i2, int i3, JSONScanner jSONScanner) {
        return jSONScanner.charAt(i + i2 + i3);
    }

    /* renamed from: c */
    public static String m1758c(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    /* renamed from: d */
    public static String m1759d(String str, Object obj) {
        return str + obj;
    }

    /* renamed from: e */
    public static String m1760e(String str, String str2) {
        return str + str2;
    }

    /* renamed from: f */
    public static String m1761f(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* renamed from: g */
    public static String m1762g(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: h */
    public static String m1763h(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: i */
    public static StringBuilder m1764i(RemoteException remoteException, String str) {
        remoteException.printStackTrace();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    /* renamed from: j */
    public static StringBuilder m1765j(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    /* renamed from: k */
    public static StringBuilder m1766k(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    /* renamed from: l */
    public static StringBuilder m1767l(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    /* renamed from: m */
    public static Intent m1768m(String str) {
        Intent intent = new Intent();
        intent.setAction(str);
        return intent;
    }

    /* renamed from: n */
    public static StringBuilder m1769n(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    /* renamed from: o */
    public static StringBuilder m1770o(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    /* renamed from: p */
    public static StringBuilder m1771p(Throwable th, String str) {
        th.printStackTrace();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    /* renamed from: q */
    public static ArrayList m1772q(String str, String str2, String str3, String str4, String str5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(str3);
        arrayList.add(str4);
        arrayList.add(str5);
        return arrayList;
    }

    /* renamed from: r */
    public static ArrayList m1773r(Throwable th, StringBuilder sb) {
        sb.append(th.getMessage());
        LTKDateUtil.m1393c(sb.toString());
        return new ArrayList();
    }

    /* renamed from: s */
    public static void m1774s(RemoteException remoteException, StringBuilder sb) {
        sb.append(remoteException.getMessage());
        LTKDateUtil.m1390A(sb.toString());
    }

    /* renamed from: t */
    public static void m1775t(RemoteException remoteException, StringBuilder sb) {
        sb.append(remoteException.getMessage());
        LTKDateUtil.m1390A(sb.toString());
        remoteException.printStackTrace();
    }

    /* renamed from: u */
    public static void m1776u(Exception exc, StringBuilder sb) {
        sb.append(exc.getMessage());
        LTKDateUtil.m1393c(sb.toString());
    }

    /* renamed from: v */
    public static void m1777v(String str, int i, String str2) {
        HMSLog.m3463i(str2, str + i);
    }

    /* renamed from: w */
    public static void m1778w(String str, RemoteException remoteException, String str2) {
        Log.e(str2, str + remoteException);
    }

    /* renamed from: x */
    public static void m1779x(String str, String str2) {
        LTKDateUtil.m1403m(str + str2);
    }

    /* renamed from: y */
    public static void m1780y(String str, String str2, HuaweiEmui11Impl c1282sd, Context context) {
        c1282sd.m2128S0(context, new ComponentName(str, str2));
    }

    /* renamed from: z */
    public static void m1781z(StringBuilder sb, String str, char c, String str2) {
        sb.append(str);
        sb.append(c);
        sb.append(str2);
    }
}
