package android.support.v4.app;

import com.huawei.hem.C1293t;
import java.util.List;

/* loaded from: classes.dex */
public class FragmentManagerNonConfig {
    public final List<FragmentManagerNonConfig> mChildNonConfigs;
    public final List<Fragment> mFragments;
    public final List<C1293t> mViewModelStores;

    public FragmentManagerNonConfig(List<Fragment> list, List<FragmentManagerNonConfig> list2, List<C1293t> list3) {
        this.mFragments = list;
        this.mChildNonConfigs = list2;
        this.mViewModelStores = list3;
    }

    public List<FragmentManagerNonConfig> getChildNonConfigs() {
        return this.mChildNonConfigs;
    }

    public List<Fragment> getFragments() {
        return this.mFragments;
    }

    public List<C1293t> getViewModelStores() {
        return this.mViewModelStores;
    }
}
