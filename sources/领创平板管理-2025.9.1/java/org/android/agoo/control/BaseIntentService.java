package org.android.agoo.control;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.Messenger;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.OrangeAdapter;
import com.taobao.accs.utl.Utils;
import org.android.agoo.common.Config;
import org.android.agoo.message.MessageService;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public abstract class BaseIntentService extends Service {
    public static final String TAG = "BaseIntentService";
    public static final String msgStatus = "4";
    public AgooFactory agooFactory;
    public MessageService messageService;
    public NotifManager notifyManager;
    public Context mContext = null;
    public Messenger messenger = new Messenger(new HandlerC2016h(this));

    private final String getTrace(Context context, long j) {
        String str = TextUtils.isEmpty(null) ? "unknow" : null;
        String str2 = TextUtils.isEmpty(null) ? "unknow" : null;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("appkey");
        stringBuffer.append("|");
        stringBuffer.append(j);
        stringBuffer.append("|");
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append("|");
        stringBuffer.append(str);
        stringBuffer.append("|");
        stringBuffer.append(str2);
        return stringBuffer.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0333 A[Catch: all -> 0x0341, TryCatch #2 {all -> 0x0341, blocks: (B:63:0x01ed, B:65:0x01f5, B:67:0x01fd, B:68:0x0220, B:70:0x0228, B:72:0x0230, B:104:0x02e2, B:106:0x0333, B:107:0x033d, B:87:0x0284, B:89:0x028c, B:62:0x01d2), top: B:128:0x01d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0164 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c0 A[Catch: all -> 0x0343, TryCatch #5 {all -> 0x0343, blocks: (B:30:0x00b4, B:32:0x00c0, B:33:0x00fd, B:35:0x0126, B:37:0x0130, B:39:0x0142, B:41:0x014c, B:44:0x015e, B:49:0x0176, B:47:0x016d, B:29:0x009a), top: B:132:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0126 A[Catch: all -> 0x0343, TryCatch #5 {all -> 0x0343, blocks: (B:30:0x00b4, B:32:0x00c0, B:33:0x00fd, B:35:0x0126, B:37:0x0130, B:39:0x0142, B:41:0x014c, B:44:0x015e, B:49:0x0176, B:47:0x016d, B:29:0x009a), top: B:132:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0176 A[Catch: all -> 0x0343, TRY_LEAVE, TryCatch #5 {all -> 0x0343, blocks: (B:30:0x00b4, B:32:0x00c0, B:33:0x00fd, B:35:0x0126, B:37:0x0130, B:39:0x0142, B:41:0x014c, B:44:0x015e, B:49:0x0176, B:47:0x016d, B:29:0x009a), top: B:132:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01f5 A[Catch: all -> 0x0341, TryCatch #2 {all -> 0x0341, blocks: (B:63:0x01ed, B:65:0x01f5, B:67:0x01fd, B:68:0x0220, B:70:0x0228, B:72:0x0230, B:104:0x02e2, B:106:0x0333, B:107:0x033d, B:87:0x0284, B:89:0x028c, B:62:0x01d2), top: B:128:0x01d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0228 A[Catch: all -> 0x0341, TryCatch #2 {all -> 0x0341, blocks: (B:63:0x01ed, B:65:0x01f5, B:67:0x01fd, B:68:0x0220, B:70:0x0228, B:72:0x0230, B:104:0x02e2, B:106:0x0333, B:107:0x033d, B:87:0x0284, B:89:0x028c, B:62:0x01d2), top: B:128:0x01d2 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void handleRemoteMessage(android.content.Context r33, android.content.Intent r34) {
        /*
            Method dump skipped, instructions count: 872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.android.agoo.control.BaseIntentService.handleRemoteMessage(android.content.Context, android.content.Intent):void");
    }

    private final void handleRemovePackage(Context context, Intent intent) {
        if (intent == null || context == null) {
            return;
        }
        Uri data = intent.getData();
        String schemeSpecificPart = data != null ? data.getSchemeSpecificPart() : null;
        if (TextUtils.isEmpty(schemeSpecificPart)) {
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
        if (ALog.isPrintLog(ALog.Level.D)) {
            ALog.m5726d(TAG, "handleRemovePackage---->[replacing:" + booleanExtra + "],uninstallPack=" + schemeSpecificPart, new Object[0]);
        }
        if (booleanExtra) {
            return;
        }
        this.notifyManager.doUninstall(schemeSpecificPart, booleanExtra);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (OrangeAdapter.isBindService(this) && Utils.isTarget26(this)) {
            getApplicationContext().bindService(new Intent(this, getClass()), new ServiceConnectionC2018j(this), 1);
        }
        return this.messenger.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ThreadPoolExecutorFactory.execute(new RunnableC2019k(this));
    }

    @Deprecated
    public abstract void onError(Context context, String str);

    public void onHandleIntent(Intent intent) {
        this.mContext = getApplicationContext();
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return;
        }
        ALog.m5729i(TAG, CompilerOutline.m1760e("onHandleIntent,action=", action), new Object[0]);
        try {
            if (action.equals("org.agoo.android.intent.action.RECEIVE")) {
                handleRemoteMessage(this.mContext, intent);
            } else if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                handleRemovePackage(this.mContext, intent);
            } else if (TextUtils.equals(action, "org.agoo.android.intent.action.REPORT") || TextUtils.equals(action, "android.net.conn.CONNECTIVITY_CHANGE") || TextUtils.equals(action, "android.intent.action.BOOT_COMPLETED") || TextUtils.equals(action, "android.intent.action.PACKAGE_ADDED") || TextUtils.equals(action, "android.intent.action.PACKAGE_REPLACED") || TextUtils.equals(action, "android.intent.action.USER_PRESENT") || TextUtils.equals(action, "android.intent.action.ACTION_POWER_CONNECTED") || TextUtils.equals(action, "android.intent.action.ACTION_POWER_DISCONNECTED")) {
                try {
                    ALog.m5729i(TAG, "is report cache msg,Config.isReportCacheMsg(mContext)=" + Config.m5833d(this.mContext), new Object[0]);
                    if (Config.m5833d(this.mContext) && AdapterUtilityImpl.isNetworkConnected(this.mContext)) {
                        Config.m5834e(this.mContext);
                        this.agooFactory.reportCacheMsg();
                        this.messageService.m5846a();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (ALog.isPrintLog(ALog.Level.I)) {
                        ALog.m5729i(TAG, "is clear all msg=" + Config.m5831b(this.mContext, jCurrentTimeMillis), new Object[0]);
                    }
                    if (Config.m5831b(this.mContext, jCurrentTimeMillis)) {
                        Config.m5828a(this.mContext, jCurrentTimeMillis);
                        this.messageService.m5846a();
                    }
                } catch (Throwable th) {
                    ALog.m5727e(TAG, "reportCacheMsg", th, new Object[0]);
                }
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public abstract void onMessage(Context context, Intent intent);

    @Deprecated
    public abstract void onRegistered(Context context, String str);

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        ThreadPoolExecutorFactory.execute(new RunnableC2020l(this, intent));
        return 2;
    }
}
