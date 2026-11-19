package com.huawei.hms.api;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Fragment;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import com.huawei.hem.AbstractC1376w7;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1401x7;
import com.huawei.hem.C1426y7;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.activity.EnableServiceActivity;
import com.huawei.hms.activity.ForegroundIntentBuilder;
import com.huawei.hms.activity.internal.BusResponseCallback;
import com.huawei.hms.activity.internal.BusResponseResult;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.ErrorDialogFragment;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.api.AvailabilityException;
import com.huawei.hms.common.api.HuaweiApiCallable;
import com.huawei.hms.common.internal.ConnectionErrorMessages;
import com.huawei.hms.common.internal.DialogRedirect;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.manager.UpdateManager;
import com.huawei.hms.update.p033ui.UpdateBean;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.hms.utils.Util;

/* compiled from: HuaweiApiAvailabilityImpl.java */
/* renamed from: com.huawei.hms.api.b */
/* loaded from: classes.dex */
public final class C1489b extends HuaweiApiAvailability {

    /* renamed from: b */
    public static final C1489b f4432b = new C1489b();

    /* compiled from: HuaweiApiAvailabilityImpl.java */
    /* renamed from: com.huawei.hms.api.b$a */
    public class a implements BusResponseCallback {

        /* renamed from: a */
        public final /* synthetic */ C1401x7[] f4433a;

        public a(C1489b c1489b, C1401x7[] c1401x7Arr) {
            this.f4433a = c1401x7Arr;
        }

        @Override // com.huawei.hms.activity.internal.BusResponseCallback
        public BusResponseResult innerError(Activity activity, int i, String str) {
            HMSLog.m3461e("HuaweiApiAvailabilityImpl", "Test foreground bus error: resultCode " + i + ", errMessage" + str);
            this.f4433a[0].m2930a(new AvailabilityException());
            return null;
        }

        @Override // com.huawei.hms.activity.internal.BusResponseCallback
        public BusResponseResult succeedReturn(Activity activity, int i, Intent intent) {
            HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Test foreground bus success: resultCode " + i + ", data" + intent);
            return null;
        }
    }

    /* renamed from: a */
    public static Intent m3256a(Activity activity, String str) {
        return BridgeActivity.getIntentStartBridgeActivity(activity, str);
    }

    public static C1489b getInstance() {
        return f4432b;
    }

    /* renamed from: b */
    public PendingIntent m3261b(Context context, int i) {
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i);
        Intent intentM3260a = m3260a(context, i);
        if (intentM3260a != null) {
            return PendingIntent.getActivity(context, 0, intentM3260a, 134217728);
        }
        return null;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public AbstractC1376w7<Void> checkApiAccessible(HuaweiApi<?> huaweiApi, HuaweiApi<?>... huaweiApiArr) {
        C1426y7 c1426y7 = new C1426y7();
        if (huaweiApi != null) {
            try {
                m3259a(huaweiApi);
            } catch (AvailabilityException e) {
                StringBuilder sbM1765j = C0948f6.m1765j("checkApi has AvailabilityException ");
                sbM1765j.append(e.getMessage());
                HMSLog.m3463i("HuaweiApiAvailabilityImpl", sbM1765j.toString());
            }
        }
        if (huaweiApiArr != null) {
            for (HuaweiApi<?> huaweiApi2 : huaweiApiArr) {
                m3259a(huaweiApi2);
            }
        }
        return c1426y7;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getErrPendingIntent(Context context, ConnectionResult connectionResult) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(connectionResult);
        return m3261b(context, connectionResult.getErrorCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Dialog getErrorDialog(Activity activity, int i, int i2) {
        Checker.checkNonNull(activity, "activity must not be null.");
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter getErrorDialog, errorCode: " + i);
        return getErrorDialog(activity, i, i2, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public String getErrorString(int i) {
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter getErrorString, errorCode: " + i);
        return ConnectionResult.m3211a(i);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public AbstractC1376w7<Void> getHuaweiServicesReady(Activity activity) {
        Preconditions.checkNotNull(activity);
        C1401x7[] c1401x7Arr = {new C1401x7()};
        AbstractC1376w7 abstractC1376w7 = c1401x7Arr[0].f4053a;
        int iIsHuaweiMobileServicesAvailable = isHuaweiMobileServicesAvailable(activity.getApplicationContext(), 30000000);
        Intent resolveErrorIntent = getResolveErrorIntent(activity, iIsHuaweiMobileServicesAvailable);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, ResolutionDelegate.class.getName());
        if (resolveErrorIntent != null) {
            ForegroundIntentBuilder.registerResponseCallback(ResolutionDelegate.CALLBACK_METHOD, new a(this, c1401x7Arr));
            Bundle bundle = new Bundle();
            bundle.putParcelable(CommonCode.MapKey.HAS_RESOLUTION, resolveErrorIntent);
            intentStartBridgeActivity.putExtras(bundle);
            activity.startActivity(intentStartBridgeActivity);
        } else if (iIsHuaweiMobileServicesAvailable == 3) {
            Intent intent = new Intent();
            intent.setClass(activity, EnableServiceActivity.class);
            activity.startActivity(intent);
        } else if (iIsHuaweiMobileServicesAvailable == 0) {
            HMSLog.m3463i("HuaweiApiAvailabilityImpl", "The HMS service is available.");
        } else {
            HMSLog.m3461e("HuaweiApiAvailabilityImpl", "Framework can not solve the availability problem.");
            c1401x7Arr[0].m2930a(new AvailabilityException());
        }
        return abstractC1376w7;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Intent getResolveErrorIntent(Activity activity, int i) {
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorIntent, errorCode: " + i);
        if (!Util.isAvailableLibExist(activity.getApplicationContext())) {
            return null;
        }
        if (i != 1 && i != 2) {
            if (i != 6) {
                return null;
            }
            return m3256a(activity, BindingFailedResolution.class.getName());
        }
        UpdateBean updateBean = new UpdateBean();
        updateBean.setHmsOrApkUpgrade(true);
        updateBean.setClientPackageName(HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName());
        updateBean.setClientVersionCode(HuaweiApiAvailability.getServicesVersionCode());
        updateBean.setClientAppId("C10132067");
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        updateBean.setClientAppName(ResourceLoaderUtil.getString("hms_update_title"));
        return UpdateManager.getStartUpdateIntent(activity, updateBean);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getResolveErrorPendingIntent(Activity activity, int i) {
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i);
        Intent resolveErrorIntent = getResolveErrorIntent(activity, i);
        if (resolveErrorIntent != null) {
            return PendingIntent.getActivity(activity, 0, resolveErrorIntent, 134217728);
        }
        return null;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileNoticeAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(new PackageManagerHelper(context).getPackageStates(HMSPackageManager.getInstance(context).getHMSPackageName()))) {
            return 1;
        }
        return HMSPackageManager.getInstance(context).isApkUpdateNecessary(20600000) ? 2 : 0;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileServicesAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        return HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(context, HuaweiApiAvailability.getServicesVersionCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean isUserResolvableError(int i) {
        return isUserResolvableError(i, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean isUserResolvableError(int i, PendingIntent pendingIntent) {
        if (i == 0) {
            return false;
        }
        return pendingIntent != null || i == 1 || i == 2 || i == 6;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void popupErrNotification(Context context, ConnectionResult connectionResult) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(connectionResult);
        showErrorNotification(context, connectionResult.getErrorCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void resolveError(Activity activity, int i, int i2) throws IntentSender.SendIntentException {
        resolveError(activity, i, i2, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void showErrorNotification(Context context, int i) {
        Checker.checkNonNull(context, "context must not be null.");
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter showErrorNotification, errorCode: " + i);
        Dialog errorDialog = getErrorDialog((Activity) context, i, 0);
        if (errorDialog == null) {
            HMSLog.m3463i("HuaweiApiAvailabilityImpl", "showErrorNotification errorDialog can not be null");
        } else {
            errorDialog.show();
        }
    }

    /* renamed from: a */
    public static Intent m3257a(Context context, String str) {
        return BridgeActivity.getIntentStartBridgeActivity(context, str);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void resolveError(Activity activity, int i, int i2, PendingIntent pendingIntent) throws IntentSender.SendIntentException {
        Checker.checkNonNull(activity, "activity must not be null.");
        if (pendingIntent != null) {
            C0948f6.m1777v("Enter resolveError, param pendingIntent is not null. and.errorCode: ", i, "HuaweiApiAvailabilityImpl");
        } else {
            HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter resolveError, param pendingIntent is  null. get pendingIntent from error code.and.errorCode: " + i);
            pendingIntent = getResolveErrorPendingIntent(activity, i);
        }
        if (pendingIntent != null) {
            C0948f6.m1777v("In resolveError, start pingding intent.errorCode: ", i, "HuaweiApiAvailabilityImpl");
            try {
                activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i2, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException unused) {
                HMSLog.m3461e("HuaweiApiAvailabilityImpl", "Enter resolveError, start pendingIntent failed.errorCode: " + i);
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        m3258a(activity, errorDialog, HuaweiMobileServicesUtil.HMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    /* renamed from: a */
    public Intent m3260a(Context context, int i) {
        C0948f6.m1777v("Enter getResolveErrorIntent, errorCode: ", i, "HuaweiApiAvailabilityImpl");
        if (i != 1 && i != 2) {
            if (i != 6) {
                return null;
            }
            return m3257a(context, BindingFailedResolution.class.getName());
        }
        UpdateBean updateBean = new UpdateBean();
        updateBean.setHmsOrApkUpgrade(true);
        updateBean.setClientPackageName(HMSPackageManager.getInstance(context.getApplicationContext()).getHMSPackageName());
        updateBean.setClientVersionCode(HuaweiApiAvailability.getServicesVersionCode());
        updateBean.setClientAppId("C10132067");
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(context.getApplicationContext());
        }
        updateBean.setClientAppName(ResourceLoaderUtil.getString("hms_update_title"));
        return UpdateManager.getStartUpdateIntent(context, updateBean);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Checker.checkNonNull(activity, "activity must not be null.");
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter getErrorDialog, errorCode: " + i);
        return m3254a(activity, i, DialogRedirect.getInstance(activity, m3255a(activity, i), i2), onCancelListener);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileServicesAvailable(Context context, int i) {
        Checker.checkNonNull(context, "context must not be null.");
        return HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(context, i);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i, Fragment fragment, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(activity, i, i2, onCancelListener);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getErrPendingIntent(Context context, int i, int i2) {
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i + " requestCode: " + i2);
        Intent intentM3260a = m3260a(context, i);
        if (intentM3260a != null) {
            return PendingIntent.getActivity(context, i2, intentM3260a, 134217728);
        }
        return null;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public AbstractC1376w7<Void> checkApiAccessible(HuaweiApiCallable huaweiApiCallable, HuaweiApiCallable... huaweiApiCallableArr) {
        C1426y7 c1426y7 = new C1426y7();
        if (huaweiApiCallable != null) {
            try {
                m3259a(huaweiApiCallable);
            } catch (AvailabilityException e) {
                StringBuilder sbM1765j = C0948f6.m1765j("HuaweiApiCallable checkApi has AvailabilityException ");
                sbM1765j.append(e.getMessage());
                HMSLog.m3463i("HuaweiApiAvailabilityImpl", sbM1765j.toString());
            }
        }
        if (huaweiApiCallableArr != null) {
            for (HuaweiApiCallable huaweiApiCallable2 : huaweiApiCallableArr) {
                m3259a(huaweiApiCallable2);
            }
        }
        return c1426y7;
    }

    /* renamed from: a */
    private Intent m3255a(Activity activity, int i) {
        if (!Util.isAvailableLibExist(activity.getApplicationContext())) {
            return null;
        }
        if (i == 1 || i == 2) {
            return UpdateManager.startUpdateIntent(activity);
        }
        if (i != 6) {
            return null;
        }
        return BridgeActivity.getIntentStartBridgeActivity(activity, BindingFailedResolution.class.getName());
    }

    /* renamed from: a */
    public static int m3252a(Activity activity) {
        return m3253a((Context) activity) != 0 ? 0 : 3;
    }

    /* renamed from: a */
    public static int m3253a(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier("androidhwext:style/Theme.Emui", null, null);
    }

    /* renamed from: a */
    public static Dialog m3254a(Activity activity, int i, DialogRedirect dialogRedirect, DialogInterface.OnCancelListener onCancelListener) {
        if (i == 0) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, m3252a(activity));
        builder.setMessage(ConnectionErrorMessages.getErrorMessage(activity, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        builder.setPositiveButton(ConnectionErrorMessages.getErrorDialogButtonMessage(activity, i), dialogRedirect);
        String errorTitle = ConnectionErrorMessages.getErrorTitle(activity, i);
        if (errorTitle != null) {
            builder.setTitle(errorTitle);
        }
        return builder.create();
    }

    /* renamed from: a */
    public static void m3258a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        Checker.checkNonNull(activity, "activity must not be null.");
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    /* renamed from: a */
    private void m3259a(Object obj) throws AvailabilityException {
        ConnectionResult connectionResult;
        AvailabilityException availabilityException = new AvailabilityException();
        if (obj instanceof HuaweiApi) {
            connectionResult = availabilityException.getConnectionResult((HuaweiApi<? extends Api.ApiOptions>) obj);
        } else {
            connectionResult = availabilityException.getConnectionResult((HuaweiApiCallable) obj);
        }
        if (connectionResult.getErrorCode() == 0) {
            return;
        }
        StringBuilder sbM1765j = C0948f6.m1765j("The service is unavailable: ");
        sbM1765j.append(availabilityException.getMessage());
        HMSLog.m3463i("HuaweiApiAvailabilityImpl", sbM1765j.toString());
        throw availabilityException;
    }
}
