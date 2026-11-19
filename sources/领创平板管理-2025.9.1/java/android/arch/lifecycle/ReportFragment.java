package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.ComponentCallbacks2;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.C1067k;
import com.huawei.hem.InterfaceC1042j;
import com.huawei.hem.InterfaceC1092l;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ReportFragment extends Fragment {

    /* renamed from: a */
    public InterfaceC0003a f12a;

    /* renamed from: android.arch.lifecycle.ReportFragment$a */
    public interface InterfaceC0003a {
        /* renamed from: a */
        void m13a();

        void onCreate();

        void onStart();
    }

    /* renamed from: b */
    public static void m11b(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ReportFragment(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: a */
    public final void m12a(AbstractC0992h.a aVar) {
        ComponentCallbacks2 activity = getActivity();
        if (activity instanceof InterfaceC1092l) {
            ((InterfaceC1092l) activity).getLifecycle().m2151c(aVar);
        } else if (activity instanceof InterfaceC1042j) {
            AbstractC0992h lifecycle = ((InterfaceC1042j) activity).getLifecycle();
            if (lifecycle instanceof C1067k) {
                ((C1067k) lifecycle).m2151c(aVar);
            }
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        InterfaceC0003a interfaceC0003a = this.f12a;
        if (interfaceC0003a != null) {
            interfaceC0003a.onCreate();
        }
        m12a(AbstractC0992h.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m12a(AbstractC0992h.a.ON_DESTROY);
        this.f12a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m12a(AbstractC0992h.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        InterfaceC0003a interfaceC0003a = this.f12a;
        if (interfaceC0003a != null) {
            interfaceC0003a.m13a();
        }
        m12a(AbstractC0992h.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        InterfaceC0003a interfaceC0003a = this.f12a;
        if (interfaceC0003a != null) {
            interfaceC0003a.onStart();
        }
        m12a(AbstractC0992h.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m12a(AbstractC0992h.a.ON_STOP);
    }
}
