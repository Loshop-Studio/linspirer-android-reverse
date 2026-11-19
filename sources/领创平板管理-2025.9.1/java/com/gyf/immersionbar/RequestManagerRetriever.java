package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.app.FragmentManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.huawei.hem.CompilerOutline;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class RequestManagerRetriever implements Handler.Callback {
    public static final int ID_REMOVE_FRAGMENT_MANAGER = 1;
    public static final int ID_REMOVE_SUPPORT_FRAGMENT_MANAGER = 2;
    public Handler mHandler;
    public final Map<FragmentManager, RequestManagerFragment> mPendingFragments;
    public final Map<android.support.v4.app.FragmentManager, SupportRequestManagerFragment> mPendingSupportFragments;
    public String mTag;

    public static class Holder {
        public static final RequestManagerRetriever INSTANCE = new RequestManagerRetriever();
    }

    public static <T> void checkNotNull(@Nullable T t, @NonNull String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
    }

    private RequestManagerFragment getFragment(FragmentManager fragmentManager, String str) {
        return getFragment(fragmentManager, str, false);
    }

    public static RequestManagerRetriever getInstance() {
        return Holder.INSTANCE;
    }

    private SupportRequestManagerFragment getSupportFragment(android.support.v4.app.FragmentManager fragmentManager, String str) {
        return getSupportFragment(fragmentManager, str, false);
    }

    public void destroy(Fragment fragment, boolean z) {
        String string;
        if (fragment == null) {
            return;
        }
        String str = this.mTag;
        if (z) {
            StringBuilder sbM1765j = CompilerOutline.m1765j(str);
            sbM1765j.append(fragment.getClass().getName());
            string = sbM1765j.toString();
        } else {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j(str);
            sbM1765j2.append(System.identityHashCode(fragment));
            string = sbM1765j2.toString();
        }
        getSupportFragment(fragment.getChildFragmentManager(), string, true);
    }

    public ImmersionBar get(Activity activity) {
        checkNotNull(activity, "activity is null");
        String str = this.mTag + System.identityHashCode(activity);
        return activity instanceof FragmentActivity ? getSupportFragment(((FragmentActivity) activity).getSupportFragmentManager(), str).get(activity) : getFragment(activity.getFragmentManager(), str).get(activity);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.mPendingFragments.remove((FragmentManager) message.obj);
            return true;
        }
        if (i != 2) {
            return false;
        }
        this.mPendingSupportFragments.remove((android.support.v4.app.FragmentManager) message.obj);
        return true;
    }

    public RequestManagerRetriever() {
        this.mTag = ImmersionBar.class.getName();
        this.mPendingFragments = new HashMap();
        this.mPendingSupportFragments = new HashMap();
        this.mHandler = new Handler(Looper.getMainLooper(), this);
    }

    private RequestManagerFragment getFragment(FragmentManager fragmentManager, String str, boolean z) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag(str);
        if (requestManagerFragment == null && (requestManagerFragment = this.mPendingFragments.get(fragmentManager)) == null) {
            if (z) {
                return null;
            }
            requestManagerFragment = new RequestManagerFragment();
            this.mPendingFragments.put(fragmentManager, requestManagerFragment);
            fragmentManager.beginTransaction().add(requestManagerFragment, str).commitAllowingStateLoss();
            this.mHandler.obtainMessage(1, fragmentManager).sendToTarget();
        }
        if (!z) {
            return requestManagerFragment;
        }
        fragmentManager.beginTransaction().remove(requestManagerFragment).commitAllowingStateLoss();
        return null;
    }

    private SupportRequestManagerFragment getSupportFragment(android.support.v4.app.FragmentManager fragmentManager, String str, boolean z) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag(str);
        if (supportRequestManagerFragment == null && (supportRequestManagerFragment = this.mPendingSupportFragments.get(fragmentManager)) == null) {
            if (z) {
                return null;
            }
            supportRequestManagerFragment = new SupportRequestManagerFragment();
            this.mPendingSupportFragments.put(fragmentManager, supportRequestManagerFragment);
            fragmentManager.beginTransaction().add(supportRequestManagerFragment, str).commitAllowingStateLoss();
            this.mHandler.obtainMessage(2, fragmentManager).sendToTarget();
        }
        if (!z) {
            return supportRequestManagerFragment;
        }
        fragmentManager.beginTransaction().remove(supportRequestManagerFragment).commitAllowingStateLoss();
        return null;
    }

    public void destroy(Activity activity, Dialog dialog) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (activity == null || dialog == null) {
            return;
        }
        String str = this.mTag + System.identityHashCode(dialog);
        if (activity instanceof FragmentActivity) {
            SupportRequestManagerFragment supportFragment = getSupportFragment(((FragmentActivity) activity).getSupportFragmentManager(), str, true);
            if (supportFragment != null) {
                supportFragment.get(activity, dialog).onDestroy();
                return;
            }
            return;
        }
        RequestManagerFragment fragment = getFragment(activity.getFragmentManager(), str, true);
        if (fragment != null) {
            fragment.get(activity, dialog).onDestroy();
        }
    }

    public ImmersionBar get(Fragment fragment, boolean z) {
        String string;
        checkNotNull(fragment, "fragment is null");
        checkNotNull(fragment.getActivity(), "fragment.getActivity() is null");
        if (fragment instanceof DialogFragment) {
            checkNotNull(((DialogFragment) fragment).getDialog(), "fragment.getDialog() is null");
        }
        String str = this.mTag;
        if (z) {
            StringBuilder sbM1765j = CompilerOutline.m1765j(str);
            sbM1765j.append(fragment.getClass().getName());
            string = sbM1765j.toString();
        } else {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j(str);
            sbM1765j2.append(System.identityHashCode(fragment));
            string = sbM1765j2.toString();
        }
        return getSupportFragment(fragment.getChildFragmentManager(), string).get(fragment);
    }

    @RequiresApi(api = 17)
    public ImmersionBar get(android.app.Fragment fragment, boolean z) {
        String string;
        checkNotNull(fragment, "fragment is null");
        checkNotNull(fragment.getActivity(), "fragment.getActivity() is null");
        if (fragment instanceof android.app.DialogFragment) {
            checkNotNull(((android.app.DialogFragment) fragment).getDialog(), "fragment.getDialog() is null");
        }
        String str = this.mTag;
        if (z) {
            StringBuilder sbM1765j = CompilerOutline.m1765j(str);
            sbM1765j.append(fragment.getClass().getName());
            string = sbM1765j.toString();
        } else {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j(str);
            sbM1765j2.append(System.identityHashCode(fragment));
            string = sbM1765j2.toString();
        }
        return getFragment(fragment.getChildFragmentManager(), string).get(fragment);
    }

    public ImmersionBar get(Activity activity, Dialog dialog) {
        checkNotNull(activity, "activity is null");
        checkNotNull(dialog, "dialog is null");
        String str = this.mTag + System.identityHashCode(dialog);
        if (activity instanceof FragmentActivity) {
            return getSupportFragment(((FragmentActivity) activity).getSupportFragmentManager(), str).get(activity, dialog);
        }
        return getFragment(activity.getFragmentManager(), str).get(activity, dialog);
    }
}
