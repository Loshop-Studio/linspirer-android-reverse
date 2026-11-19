package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import com.huawei.hem.C1094l1;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: AdiuStorageModel.java */
/* renamed from: com.loc.k */
/* loaded from: classes.dex */
public final class AdiuStorageModel {

    /* renamed from: a */
    public static final String f5884a = C1094l1.m2251t("SU2hhcmVkUHJlZmVyZW5jZUFkaXU");

    /* renamed from: f */
    public static AdiuStorageModel f5885f;

    /* renamed from: b */
    public List<String> f5886b;

    /* renamed from: c */
    public String f5887c;

    /* renamed from: d */
    public final Context f5888d;

    /* renamed from: e */
    public final Handler f5889e;

    /* compiled from: AdiuStorageModel.java */
    /* renamed from: com.loc.k$a */
    public static final class a extends Handler {

        /* renamed from: a */
        public final WeakReference<AdiuStorageModel> f5893a;

        public a(Looper looper, AdiuStorageModel c1850k) {
            super(looper);
            this.f5893a = new WeakReference<>(c1850k);
        }

        public a(AdiuStorageModel c1850k) {
            this.f5893a = new WeakReference<>(c1850k);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Object obj;
            AdiuStorageModel c1850k = this.f5893a.get();
            if (c1850k == null || message == null || (obj = message.obj) == null) {
                return;
            }
            c1850k.m5258a((String) obj, message.what);
        }
    }

    public AdiuStorageModel(Context context) {
        this.f5888d = context.getApplicationContext();
        this.f5889e = Looper.myLooper() == null ? new a(Looper.getMainLooper(), this) : new a(this);
    }

    /* renamed from: a */
    public static AdiuStorageModel m5256a(Context context) {
        if (f5885f == null) {
            synchronized (AdiuStorageModel.class) {
                if (f5885f == null) {
                    f5885f = new AdiuStorageModel(context);
                }
            }
        }
        return f5885f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m5258a(final String str, final int i) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            new Thread() { // from class: com.loc.k.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    String strM5287b = SecurityUtil.m5287b(str);
                    if (TextUtils.isEmpty(strM5287b)) {
                        return;
                    }
                    if ((i & 1) > 0) {
                        try {
                            Settings.System.putString(AdiuStorageModel.this.f5888d.getContentResolver(), AdiuStorageModel.this.f5887c, strM5287b);
                        } catch (Exception unused) {
                        }
                    }
                    if ((i & 16) > 0) {
                        FileStorageModel.m5269a(AdiuStorageModel.this.f5888d, AdiuStorageModel.this.f5887c, strM5287b);
                    }
                    if ((i & 256) > 0) {
                        SharedPreferences.Editor editorEdit = AdiuStorageModel.this.f5888d.getSharedPreferences(AdiuStorageModel.f5884a, 0).edit();
                        editorEdit.putString(AdiuStorageModel.this.f5887c, strM5287b);
                        editorEdit.apply();
                    }
                }
            }.start();
            return;
        }
        String strM5287b = SecurityUtil.m5287b(str);
        if (!TextUtils.isEmpty(strM5287b)) {
            if ((i & 1) > 0) {
                try {
                    Settings.System.putString(this.f5888d.getContentResolver(), this.f5887c, strM5287b);
                } catch (Exception unused) {
                }
            }
            if ((i & 16) > 0) {
                FileStorageModel.m5269a(this.f5888d, this.f5887c, strM5287b);
            }
            if ((i & 256) > 0) {
                SharedPreferences.Editor editorEdit = this.f5888d.getSharedPreferences(f5884a, 0).edit();
                editorEdit.putString(this.f5887c, strM5287b);
                editorEdit.apply();
            }
        }
    }

    /* renamed from: a */
    public final void m5260a(String str) {
        this.f5887c = str;
    }

    /* renamed from: b */
    public final void m5261b(String str) {
        List<String> list = this.f5886b;
        if (list != null) {
            list.clear();
            this.f5886b.add(str);
        }
        m5258a(str, 273);
    }
}
