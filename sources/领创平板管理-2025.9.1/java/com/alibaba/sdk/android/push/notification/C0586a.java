package com.alibaba.sdk.android.push.notification;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;

/* renamed from: com.alibaba.sdk.android.push.notification.a */
/* loaded from: classes.dex */
public class C0586a extends AbstractC0588c {

    /* renamed from: l */
    public static final AmsLogger f1299l = AmsLogger.getLogger("MPS:BasicNotificationBuilder");

    /* renamed from: a */
    private Bitmap m882a(Drawable drawable) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01c4  */
    @Override // com.alibaba.sdk.android.push.notification.AbstractC0588c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Notification mo883a(android.content.Context r9, com.alibaba.sdk.android.push.notification.PushData r10, com.alibaba.sdk.android.push.notification.NotificationConfigure r11) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.push.notification.C0586a.mo883a(android.content.Context, com.alibaba.sdk.android.push.notification.PushData, com.alibaba.sdk.android.push.notification.NotificationConfigure):android.app.Notification");
    }
}
