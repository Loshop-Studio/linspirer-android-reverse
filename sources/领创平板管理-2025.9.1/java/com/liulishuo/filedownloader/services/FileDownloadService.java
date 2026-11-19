package com.liulishuo.filedownloader.services;

import android.R;
import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import com.huawei.hem.FDServiceSeparateHandler;
import com.huawei.hem.FDServiceSharedHandler;
import com.huawei.hem.PauseAllMarker;
import com.huawei.hem.FileDownloadProperties;
import com.huawei.hem.FileDownloadUtils;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.CustomComponentHolder;
import com.huawei.hem.FileDownloadManager;
import com.huawei.hem.ForegroundServiceConfig;
import com.huawei.hem.IFileDownloadIPCService;
import com.huawei.hem.IFileDownloadServiceHandler;
import com.liulishuo.filedownloader.R$string;
import java.lang.ref.WeakReference;

@SuppressLint({"Registered"})
/* loaded from: classes.dex */
public class FileDownloadService extends Service {

    /* renamed from: a */
    public IFileDownloadServiceHandler f4849a;

    /* renamed from: b */
    public PauseAllMarker f4850b;

    public static class SeparateProcessService extends FileDownloadService {
    }

    public static class SharedMainProcessService extends FileDownloadService {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f4849a.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() throws IllegalAccessException {
        int i;
        super.onCreate();
        ConnectionProfile.b.f3400a = this;
        try {
            i = FileDownloadProperties.b.f2783a.f2775a;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        if (!FileDownloadUtils.m1965o(ConnectionProfile.b.f3400a)) {
            throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-step'.");
        }
        FileDownloadUtils.f2867a = i;
        long j = FileDownloadProperties.b.f2783a.f2776b;
        if (!FileDownloadUtils.m1965o(ConnectionProfile.b.f3400a)) {
            throw new IllegalAccessException("This value is used in the :filedownloader process, so set this value in your process is without effect. You can add 'process.non-separate=true' in 'filedownloader.properties' to share the main process to FileDownloadService. Or you can configure this value in 'filedownloader.properties' by 'download.min-progress-time'.");
        }
        FileDownloadUtils.f2868b = j;
        FileDownloadManager c1310tg = new FileDownloadManager();
        if (FileDownloadProperties.b.f2783a.f2778d) {
            this.f4849a = new FDServiceSharedHandler(new WeakReference(this), c1310tg);
        } else {
            this.f4849a = new FDServiceSeparateHandler(new WeakReference(this), c1310tg);
        }
        PauseAllMarker.m1609a();
        PauseAllMarker c0905df = new PauseAllMarker((IFileDownloadIPCService) this.f4849a);
        this.f4850b = c0905df;
        HandlerThread handlerThread = new HandlerThread("PauseAllChecker");
        c0905df.f2408a = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(c0905df.f2408a.getLooper(), c0905df);
        c0905df.f2409b = handler;
        handler.sendEmptyMessageDelayed(0, PauseAllMarker.f2407e.longValue());
    }

    @Override // android.app.Service
    public void onDestroy() {
        PauseAllMarker c0905df = this.f4850b;
        c0905df.f2409b.removeMessages(0);
        c0905df.f2408a.quit();
        stopForeground(true);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.f4849a.onStartCommand(intent, i, i2);
        if (intent == null || !intent.getBooleanExtra("is_foreground", false)) {
            return 1;
        }
        CustomComponentHolder c1209pf = CustomComponentHolder.a.f3463a;
        ForegroundServiceConfig c1360vg = c1209pf.f3462g;
        if (c1360vg == null) {
            synchronized (c1209pf) {
                if (c1209pf.f3462g == null) {
                    c1209pf.f3462g = c1209pf.m2481c().m2641a();
                }
            }
            c1360vg = c1209pf.f3462g;
        }
        if (c1360vg.f3960e && Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(c1360vg.f3957b, c1360vg.f3958c, 2);
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            if (notificationManager == null) {
                return 1;
            }
            notificationManager.createNotificationChannel(notificationChannel);
        }
        int i3 = c1360vg.f3956a;
        if (c1360vg.f3959d == null) {
            String string = getString(R$string.default_filedownloader_notification_title);
            String string2 = getString(R$string.default_filedownloader_notification_content);
            Notification.Builder builder = new Notification.Builder(this, c1360vg.f3957b);
            builder.setContentTitle(string).setContentText(string2).setSmallIcon(R.drawable.arrow_down_float);
            c1360vg.f3959d = builder.build();
        }
        startForeground(i3, c1360vg.f3959d);
        return 1;
    }
}
