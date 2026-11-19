package com.huawei.hmf.tasks.p029a;

import android.app.Fragment;
import com.huawei.hem.HmsCancellationHandle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* renamed from: com.huawei.hmf.tasks.a.g */
/* loaded from: classes.dex */
public final class StopCancellationFragment extends Fragment {

    /* renamed from: a */
    public final List<WeakReference<HmsCancellationHandle<?>>> f4332a = new ArrayList();

    static {
        new WeakHashMap();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        synchronized (this.f4332a) {
            Iterator<WeakReference<HmsCancellationHandle<?>>> it = this.f4332a.iterator();
            while (it.hasNext()) {
                HmsCancellationHandle<?> interfaceC1351v7 = it.next().get();
                if (interfaceC1351v7 != null) {
                    interfaceC1351v7.cancel();
                }
            }
            this.f4332a.clear();
        }
    }
}
