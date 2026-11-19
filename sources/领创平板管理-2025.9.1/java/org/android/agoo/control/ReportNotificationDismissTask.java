package org.android.agoo.control;

import android.text.TextUtils;
import com.taobao.accs.utl.ALog;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.MsgDO;
import org.android.agoo.message.MessageService;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.g */
/* loaded from: classes.dex */
public class ReportNotificationDismissTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6480a;

    /* renamed from: b */
    public final /* synthetic */ String f6481b;

    /* renamed from: c */
    public final /* synthetic */ AgooFactory f6482c;

    public ReportNotificationDismissTask(AgooFactory agooFactory, String str, String str2) {
        this.f6482c = agooFactory;
        this.f6480a = str;
        this.f6481b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        MsgDO msgDO = null;
        try {
            if (ALog.isPrintLog(ALog.Level.I)) {
                ALog.m5729i(AgooFactory.TAG, "dismissMessage", "msgid", this.f6480a, AgooConstants.MESSAGE_EXT, this.f6481b);
            }
            if (TextUtils.isEmpty(this.f6480a)) {
                ALog.m5726d(AgooFactory.TAG, "messageId == null", new Object[0]);
                return;
            }
            MsgDO msgDO2 = new MsgDO();
            try {
                msgDO2.msgIds = this.f6480a;
                msgDO2.extData = this.f6481b;
                msgDO2.messageSource = "accs";
                msgDO2.msgStatus = MessageService.MSG_ACCS_NOTIFY_DISMISS;
                this.f6482c.updateMsgStatus(this.f6480a, MessageService.MSG_ACCS_NOTIFY_DISMISS);
                this.f6482c.notifyManager.reportNotifyMessage(msgDO2);
            } catch (Throwable th) {
                th = th;
                msgDO = msgDO2;
                try {
                    ALog.m5728e(AgooFactory.TAG, "clickMessage,error=" + th, new Object[0]);
                } finally {
                    if (msgDO != null) {
                        this.f6482c.notifyManager.reportNotifyMessage(msgDO);
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
