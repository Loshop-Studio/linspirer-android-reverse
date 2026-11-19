package com.huawei.hem;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.alibaba.fastjson.asm.Label;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* compiled from: TecCustomApi.java */
/* renamed from: com.huawei.hem.xi */
/* loaded from: classes.dex */
public class C1412xi {

    /* renamed from: a */
    public Context f4079a;

    /* renamed from: b */
    public ContentResolver f4080b;

    public C1412xi(Context context) {
        this.f4079a = context;
        this.f4080b = context.getContentResolver();
    }

    /* renamed from: a */
    public boolean m2943a(List<String> list) {
        Iterator<String> it = list.iterator();
        StringBuffer stringBuffer = new StringBuffer();
        while (it.hasNext()) {
            stringBuffer.append(it.next() + ";");
        }
        if (stringBuffer.length() <= 0) {
            return false;
        }
        Intent intent = new Intent();
        intent.putExtra("whitelistapp", stringBuffer.substring(0, stringBuffer.length() - 1));
        intent.setAction("roco.whiteapplist.write");
        this.f4079a.sendBroadcast(intent);
        return true;
    }

    /* renamed from: b */
    public void m2944b(int i, int i2, int i3, int i4, int i5, int i6) {
        Intent intent = new Intent();
        intent.putExtra("year", i);
        intent.putExtra("month", i2);
        intent.putExtra("day", i3);
        intent.putExtra("hour", i4);
        intent.putExtra("minute", i5);
        intent.putExtra("second", i6);
        intent.setAction("roco.change.systemtime");
        this.f4079a.sendBroadcast(intent);
    }

    /* renamed from: c */
    public void m2945c(String str) {
        File file = new File(str);
        if (file.exists()) {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putBoolean("isSilentInstall", true);
            intent.putExtras(bundle);
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            this.f4079a.startActivity(intent);
        }
    }

    /* renamed from: d */
    public void m2946d(String str) {
        if (str.equals("")) {
            return;
        }
        Intent intent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", str, null));
        Bundle bundle = new Bundle();
        bundle.putBoolean("isSilentUninstall", true);
        intent.putExtras(bundle);
        intent.setFlags(276824064);
        this.f4079a.startActivity(intent);
    }
}
