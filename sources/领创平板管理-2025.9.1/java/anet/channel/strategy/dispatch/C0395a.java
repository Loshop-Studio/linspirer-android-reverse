package anet.channel.strategy.dispatch;

import android.support.graphics.drawable.PathInterpolatorCompat;
import android.support.v7.widget.RecyclerView;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.utils.C0411a;
import anet.channel.util.ALog;
import java.util.Map;
import java.util.Random;
import java.util.Set;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.dispatch.a */
/* loaded from: classes.dex */
public class C0395a {
    public static final String TAG = "awcn.AmdcThreadPoolExecutor";

    /* renamed from: b */
    public static Random f498b = new Random();

    /* renamed from: a */
    public Map<String, Object> f499a;

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.dispatch.a$a */
    public class a implements Runnable {

        /* renamed from: b */
        public Map<String, Object> f501b;

        public a(Map<String, Object> map) {
            this.f501b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, Object> map;
            try {
                Map<String, Object> map2 = this.f501b;
                if (map2 == null) {
                    synchronized (C0395a.class) {
                        map = C0395a.this.f499a;
                        C0395a.this.f499a = null;
                    }
                    map2 = map;
                }
                if (NetworkStatusHelper.isConnected()) {
                    if (GlobalAppRuntimeInfo.getEnv() != map2.get("Env")) {
                        ALog.m342w(C0395a.TAG, "task's env changed", null, new Object[0]);
                    } else {
                        C0396b.m305a(C0398d.m308a(map2));
                    }
                }
            } catch (Exception e) {
                ALog.m338e(C0395a.TAG, "exec amdc task failed.", null, e, new Object[0]);
            }
        }

        public a() {
        }
    }

    /* renamed from: a */
    public void m298a(Map<String, Object> map) {
        try {
            map.put("Env", GlobalAppRuntimeInfo.getEnv());
            synchronized (this) {
                if (this.f499a == null) {
                    this.f499a = map;
                    int iNextInt = f498b.nextInt(PathInterpolatorCompat.MAX_NUM_POINTS) + RecyclerView.MAX_SCROLL_DURATION;
                    ALog.m340i(TAG, "merge amdc request", null, "delay", Integer.valueOf(iNextInt));
                    C0411a.m327a(new a(), iNextInt);
                } else {
                    Set set = (Set) this.f499a.get(DispatchConstants.HOSTS);
                    Set set2 = (Set) map.get(DispatchConstants.HOSTS);
                    if (map.get("Env") != this.f499a.get("Env")) {
                        this.f499a = map;
                    } else if (set.size() + set2.size() <= 40) {
                        set2.addAll(set);
                        this.f499a = map;
                    } else {
                        C0411a.m326a(new a(map));
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
