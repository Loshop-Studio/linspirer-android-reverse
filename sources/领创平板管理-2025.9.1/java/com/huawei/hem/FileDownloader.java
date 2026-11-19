package com.huawei.hem;

import android.content.Context;
import com.huawei.hem.FileDownloadEventPool;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.FileDownloadServiceProxy;
import java.util.HashMap;
import java.util.LinkedList;

/* compiled from: FileDownloader.java */
/* renamed from: com.huawei.hem.ue */
/* loaded from: classes.dex */
public class FileDownloader {

    /* renamed from: c */
    public static final Object f3863c = new Object();

    /* renamed from: d */
    public static final Object f3864d = new Object();

    /* renamed from: a */
    public IQueuesHandler f3865a;

    /* renamed from: b */
    public ILostServiceConnectedHandler f3866b;

    /* compiled from: FileDownloader.java */
    /* renamed from: com.huawei.hem.ue$a */
    public static final class a {

        /* renamed from: a */
        public static final FileDownloader f3867a = new FileDownloader();
    }

    /* renamed from: b */
    public static FileDownloader m2788b() {
        return a.f3867a;
    }

    /* renamed from: f */
    public static void m2789f(Context context) {
        ConnectionProfile.b.f3400a = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m2790a(FileDownloadConnectListener abstractC1057je) {
        FileDownloadEventPool c1082ke = FileDownloadEventPool.b.f3080a;
        if (c1082ke == null) {
            throw null;
        }
        LinkedList<IDownloadListener> linkedList = c1082ke.f3953b.get("event.service.connect.changed");
        if (linkedList == null) {
            synchronized ("event.service.connect.changed".intern()) {
                linkedList = c1082ke.f3953b.get("event.service.connect.changed");
                if (linkedList == null) {
                    HashMap<String, LinkedList<IDownloadListener>> map = c1082ke.f3953b;
                    linkedList = new LinkedList<>();
                    map.put("event.service.connect.changed", linkedList);
                }
            }
        }
        synchronized ("event.service.connect.changed".intern()) {
            linkedList.add(abstractC1057je);
        }
    }

    /* renamed from: c */
    public ILostServiceConnectedHandler m2791c() {
        if (this.f3866b == null) {
            synchronized (f3864d) {
                if (this.f3866b == null) {
                    LostServiceConnectedHandler c0853bf = new LostServiceConnectedHandler();
                    this.f3866b = c0853bf;
                    m2790a(c0853bf);
                }
            }
        }
        return this.f3866b;
    }

    /* renamed from: d */
    public IQueuesHandler m2792d() {
        if (this.f3865a == null) {
            synchronized (f3863c) {
                if (this.f3865a == null) {
                    this.f3865a = new QueuesHandler();
                }
            }
        }
        return this.f3865a;
    }

    /* renamed from: e */
    public boolean m2793e() {
        return FileDownloadServiceProxy.b.f3535a.f3534a.isConnected();
    }
}
