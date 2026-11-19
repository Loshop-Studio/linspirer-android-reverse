package com.taobao.accs.client;

import android.text.TextUtils;
import com.taobao.accs.IAppReceiver;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.client.a */
/* loaded from: classes.dex */
public class C1910a {

    /* renamed from: a */
    public ConcurrentHashMap<String, HashSet<IAppReceiver>> f6069a;

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.client.a$a */
    public static class a {

        /* renamed from: a */
        public static final C1910a f6070a = new C1910a();
    }

    /* renamed from: a */
    public static C1910a m5471a() {
        return a.f6070a;
    }

    /* renamed from: b */
    public ArrayList<IAppReceiver> m5474b() {
        HashSet hashSet = new HashSet();
        Iterator<HashSet<IAppReceiver>> it = this.f6069a.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next());
        }
        return new ArrayList<>(hashSet);
    }

    public C1910a() {
        this.f6069a = new ConcurrentHashMap<>(2);
    }

    /* renamed from: a */
    public void m5473a(String str, IAppReceiver iAppReceiver) {
        if (iAppReceiver != null) {
            HashSet<IAppReceiver> hashSet = this.f6069a.get(str);
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.f6069a.put(str, hashSet);
            }
            if (hashSet.contains(iAppReceiver)) {
                return;
            }
            hashSet.add(iAppReceiver);
        }
    }

    /* renamed from: b */
    public void m5475b(String str) {
        try {
            this.f6069a.remove(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public ArrayList<IAppReceiver> m5472a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashSet<IAppReceiver> hashSet = this.f6069a.get(str);
        if (hashSet == null) {
            return new ArrayList<>();
        }
        return new ArrayList<>(hashSet);
    }
}
