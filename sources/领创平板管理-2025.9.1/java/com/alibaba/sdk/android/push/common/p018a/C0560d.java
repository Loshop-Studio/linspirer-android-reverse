package com.alibaba.sdk.android.push.common.p018a;

import com.alibaba.sdk.android.error.CodeGenerator;
import com.alibaba.sdk.android.error.ErrorBuilder;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.error.ErrorDefine;
import com.huawei.hem.CompilerOutline;
import com.taobao.agoo.p074a.p075a.AbstractC2002b;

/* renamed from: com.alibaba.sdk.android.push.common.a.d */
/* loaded from: classes.dex */
public class C0560d {

    /* renamed from: A */
    public static final ErrorDefine f1125A;

    /* renamed from: a */
    public static final ErrorCode f1126a;

    /* renamed from: b */
    public static final ErrorCode f1127b;

    /* renamed from: c */
    public static final ErrorCode f1128c;

    /* renamed from: d */
    public static final ErrorCode f1129d;

    /* renamed from: e */
    public static final ErrorCode f1130e;

    /* renamed from: f */
    public static final ErrorCode f1131f;

    /* renamed from: g */
    public static final ErrorCode f1132g;

    /* renamed from: h */
    public static final ErrorCode f1133h;

    /* renamed from: i */
    public static final ErrorCode f1134i;

    /* renamed from: j */
    public static final ErrorCode f1135j;

    /* renamed from: k */
    public static final ErrorCode f1136k;

    /* renamed from: l */
    public static final ErrorCode f1137l;

    /* renamed from: m */
    public static final ErrorCode f1138m;

    /* renamed from: n */
    public static final ErrorCode f1139n;

    /* renamed from: o */
    public static final ErrorCode f1140o;

    /* renamed from: p */
    public static final ErrorCode f1141p;

    /* renamed from: q */
    public static final ErrorCode f1142q;

    /* renamed from: r */
    public static final ErrorCode f1143r;

    /* renamed from: s */
    public static final ErrorCode f1144s;

    /* renamed from: t */
    public static final ErrorCode f1145t;

    /* renamed from: u */
    public static final ErrorCode f1146u;

    /* renamed from: v */
    public static final ErrorCode f1147v;

    /* renamed from: w */
    public static final ErrorCode f1148w;

    /* renamed from: x */
    public static final ErrorCode f1149x;

    /* renamed from: y */
    public static final ErrorCode f1150y;

    /* renamed from: z */
    public static final ErrorCode[] f1151z;

    /* renamed from: com.alibaba.sdk.android.push.common.a.d$a */
    public static class a extends CodeGenerator {
        public a() {
        }

        @Override // com.alibaba.sdk.android.error.CodeGenerator
        public String generateCodeStr(String str, String str2, String str3) {
            return CompilerOutline.m1761f(str, "_", str3);
        }
    }

    static {
        ErrorDefine errorDefine = new ErrorDefine("PUSH", new a());
        f1125A = errorDefine;
        f1126a = errorDefine.defineSdkError("00000").msg(AbstractC2002b.JSON_SUCCESS).build();
        f1127b = f1125A.defineServerError("10101").msg("参数缺失").solution("请检查请求参数是否正确").build();
        f1128c = f1125A.defineServerError("10102").msg("参数无效").solution("请检查请求参数是否正确").build();
        f1129d = f1125A.defineServerError("10103").msg("服务端签名与客户端不匹配").solution("请检查推送配置是否正确").build();
        f1130e = f1125A.defineServerError("10104").msg("Tag相关错误").solution("请根据具体错误信息排查，如果不能解决，请联系阿里云技术支持").build();
        f1131f = f1125A.defineServerError("10105").msg("Alias相关错误").solution("请根据具体错误信息排查，如果不能解决，请联系阿里云技术支持").build();
        f1132g = f1125A.defineServerError("10106").msg("服务端内部错误").solution("请根据具体错误信息联系阿里云技术支持").build();
        f1133h = f1125A.defineAndroidError("10107").msg("网络IO错误").solution("请检查网络是否可用").solution("请根据具体错误信息排查，如果不能解决，请联系阿里云技术支持").build();
        f1134i = CompilerOutline.m1752J(f1125A, "10108", "返回结果解析错误", "请保留具体错误信息，联系阿里云技术支持排查");
        f1135j = CompilerOutline.m1752J(f1125A, "10109", "网络连接失败,请检查网络配置", "请检查网络是否可用");
        f1136k = CompilerOutline.m1752J(f1125A, "10114", "内部错误", "请保留具体错误信息，联系阿里云技术支持排查");
        f1137l = CompilerOutline.m1752J(f1125A, "10115", "通道注册状态异常", "请保留具体错误信息，联系阿里云技术支持排查");
        f1138m = f1125A.defineServerError("10118").msg("其它接口错误").solution("请根据具体错误信息联系阿里云技术支持").build();
        f1139n = CompilerOutline.m1752J(f1125A, "10119", "非主进程不用初始化", "在非主进程执行初始化时触发，可以忽略");
        f1140o = CompilerOutline.m1752J(f1125A, "10120", "推送注册超时", "请保留具体错误信息，联系阿里云技术支持排查");
        f1141p = f1125A.defineAndroidError("10121").msg("网络请求失败，请检查网络是否可用").solution("请检查网络是否可用").solution("请根据具体错误信息排查，如果不能解决，请联系阿里云技术支持").build();
        f1142q = CompilerOutline.m1752J(f1125A, "20101", "参数输入非法", "请检查请求的输入参数是否正确");
        f1143r = CompilerOutline.m1752J(f1125A, "20102", "静默连接进程名设置错误,进程名不能为空且必须与manifest文件配置相符。系统自动设置为manifest所配置进程名", "开启debug会检查此错误，目前进程名不支持修改，请不要修改组件进程配置");
        f1144s = CompilerOutline.m1752J(f1125A, "20103", "appversion参数错误,请检查您的版本号,版本号不能为null或长度不能超过32位", "开启debug会检查此错误，请检查应用版本号是否过长");
        f1145t = CompilerOutline.m1752J(f1125A, "20105", "ChannelService未设置辅助进程", "开启debug会检查此错误，如果不是特殊场景，请检查是否修改了推送组件的进程配置");
        f1146u = CompilerOutline.m1752J(f1125A, "20106", "核心组件未配置", "开启debug会检查此错误，请检查是否删除了推送组件的声明");
        f1147v = f1125A.defineSdkError("20107").msg("连续crash，推送服务关闭").solution("应用初始化推送后崩溃，会在下次启动关闭推送服务。请检查应用的崩溃记录").solution("开发测试场景下，人为触发的，请清除应用数据恢复").solution("线上场景会尝试自动恢复，如果仍然崩溃，需要升级应用版本才会恢复").build();
        f1148w = CompilerOutline.m1752J(f1125A, "20108", "未初始化，请先调用 PushServiceFactory的init方法", "请确认是否正常初始化");
        f1149x = CompilerOutline.m1752J(f1125A, "20109", "废弃接口", "请查看文档，使用合适的api");
        ErrorCode errorCodeBuild = f1125A.defineSdkError("20110").msg("已经调用注册，重复调用无效").solution("register方法如果失败了，会自动重试，一般情况下不需要重复调用").solution("如果希望内部重试失败的情况，由外部重新调用register，请至少在上一次register失败回调两次（确认内部重试还是失败）的情况下，先调用PushControlService的reset方法，然后再调用下一次register方法").build();
        f1150y = errorCodeBuild;
        f1151z = new ErrorCode[]{f1126a, f1127b, f1128c, f1129d, f1130e, f1131f, f1132g, f1133h, f1134i, f1135j, f1136k, f1137l, f1138m, f1139n, f1140o, f1141p, f1142q, f1143r, f1144s, f1145t, f1146u, f1147v, f1148w, f1149x, errorCodeBuild, m761a(123, "accs错误信息").solution("格式ACCS_123, 123为accs错误码，请结合accs错误码排查").build(), m762a("xxx", "agoo错误信息").solution("格式AGOO_xxx, xxx为agoo错误码，请结合agoo错误码排查").build()};
    }

    /* renamed from: a */
    public static ErrorBuilder m761a(int i, String str) {
        return f1125A.defineSdkError("ACCS_" + i).msg(str);
    }

    /* renamed from: a */
    public static ErrorBuilder m762a(String str, String str2) {
        return f1125A.defineSdkError(str).msg(str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004e  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.alibaba.sdk.android.error.ErrorCode m763b(java.lang.String r2, java.lang.String r3) {
        /*
            int r0 = r2.hashCode()
            switch(r0) {
                case -1693386453: goto L44;
                case -996611353: goto L3a;
                case -723241298: goto L30;
                case -265907281: goto L26;
                case 2524: goto L1c;
                case 39557560: goto L12;
                case 677129462: goto L8;
                default: goto L7;
            }
        L7:
            goto L4e
        L8:
            java.lang.String r0 = "InvalidParam"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 2
            goto L4f
        L12:
            java.lang.String r0 = "AliasError"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 5
            goto L4f
        L1c:
            java.lang.String r0 = "OK"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 0
            goto L4f
        L26:
            java.lang.String r0 = "SignNotMatch"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 3
            goto L4f
        L30:
            java.lang.String r0 = "TagError"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 4
            goto L4f
        L3a:
            java.lang.String r0 = "MissingParam"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 1
            goto L4f
        L44:
            java.lang.String r0 = "InternalError"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L4e
            r0 = 6
            goto L4f
        L4e:
            r0 = -1
        L4f:
            switch(r0) {
                case 0: goto L8f;
                case 1: goto L8c;
                case 2: goto L89;
                case 3: goto L86;
                case 4: goto L83;
                case 5: goto L80;
                case 6: goto L75;
                default: goto L52;
            }
        L52:
            com.alibaba.sdk.android.error.ErrorCode r0 = com.alibaba.sdk.android.push.common.p018a.C0560d.f1138m
            com.alibaba.sdk.android.error.ErrorBuilder r0 = r0.copy()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            java.lang.String r2 = ":"
            r1.append(r2)
            r1.append(r3)
            java.lang.String r2 = r1.toString()
            com.alibaba.sdk.android.error.ErrorBuilder r2 = r0.msg(r2)
        L70:
            com.alibaba.sdk.android.error.ErrorCode r2 = r2.build()
            return r2
        L75:
            com.alibaba.sdk.android.error.ErrorCode r2 = com.alibaba.sdk.android.push.common.p018a.C0560d.f1132g
        L77:
            com.alibaba.sdk.android.error.ErrorBuilder r2 = r2.copy()
            com.alibaba.sdk.android.error.ErrorBuilder r2 = r2.msg(r3)
            goto L70
        L80:
            com.alibaba.sdk.android.error.ErrorCode r2 = com.alibaba.sdk.android.push.common.p018a.C0560d.f1131f
            goto L77
        L83:
            com.alibaba.sdk.android.error.ErrorCode r2 = com.alibaba.sdk.android.push.common.p018a.C0560d.f1130e
            goto L77
        L86:
            com.alibaba.sdk.android.error.ErrorCode r2 = com.alibaba.sdk.android.push.common.p018a.C0560d.f1129d
            goto L77
        L89:
            com.alibaba.sdk.android.error.ErrorCode r2 = com.alibaba.sdk.android.push.common.p018a.C0560d.f1128c
            goto L77
        L8c:
            com.alibaba.sdk.android.error.ErrorCode r2 = com.alibaba.sdk.android.push.common.p018a.C0560d.f1127b
            goto L77
        L8f:
            com.alibaba.sdk.android.error.ErrorCode r2 = com.alibaba.sdk.android.push.common.p018a.C0560d.f1126a
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.push.common.p018a.C0560d.m763b(java.lang.String, java.lang.String):com.alibaba.sdk.android.error.ErrorCode");
    }
}
