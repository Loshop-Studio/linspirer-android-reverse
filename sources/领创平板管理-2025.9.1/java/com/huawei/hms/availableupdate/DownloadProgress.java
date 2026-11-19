package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.text.NumberFormat;

/* compiled from: DownloadProgress.java */
/* renamed from: com.huawei.hms.availableupdate.w */
/* loaded from: classes.dex */
public class DownloadProgress extends UpdateAlertDialog {

    /* renamed from: c */
    public ProgressBar f4502c;

    /* renamed from: d */
    public TextView f4503d;

    /* renamed from: e */
    public int f4504e = 0;

    /* renamed from: f */
    public DialogInterface.OnKeyListener f4505f = new b();

    /* compiled from: DownloadProgress.java */
    /* renamed from: com.huawei.hms.availableupdate.w$b */
    public static class b implements DialogInterface.OnKeyListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 4 && keyEvent.getRepeatCount() == 0;
        }
    }

    /* renamed from: a */
    public void m3355a(int i) {
        this.f4504e = i;
    }

    /* renamed from: b */
    public void m3356b(int i) {
        ProgressBar progressBar;
        Activity activityM3347e = m3347e();
        if (activityM3347e == null || activityM3347e.isFinishing()) {
            HMSLog.m3464w("DownloadProgress", "In setDownloading, The activity is null or finishing.");
        } else {
            if (this.f4503d == null || (progressBar = this.f4502c) == null) {
                return;
            }
            progressBar.setProgress(i);
            this.f4503d.setText(NumberFormat.getPercentInstance().format(i / 100.0f));
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1510o
    /* renamed from: g */
    public AlertDialog mo3269g() {
        AlertDialog.Builder builder = new AlertDialog.Builder(m3347e(), m3348f());
        View viewInflate = View.inflate(m3347e(), ResourceLoaderUtil.getLayoutId("hms_download_progress"), null);
        builder.setView(viewInflate);
        builder.setCancelable(false);
        builder.setOnKeyListener(this.f4505f);
        this.f4502c = (ProgressBar) viewInflate.findViewById(ResourceLoaderUtil.getIdId("download_info_progress"));
        this.f4503d = (TextView) viewInflate.findViewById(ResourceLoaderUtil.getIdId("hms_progress_text"));
        m3356b(this.f4504e);
        return builder.create();
    }
}
