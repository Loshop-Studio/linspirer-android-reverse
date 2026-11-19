package org.android.agoo.control;

import android.text.TextUtils;
import com.taobao.accs.utl.ALog;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.MsgDO;
import org.android.agoo.message.MessageService;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.f */
/* loaded from: classes.dex */
public class ReportNotificationClickTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6477a;

    /* renamed from: b */
    public final /* synthetic */ String f6478b;

    /* renamed from: c */
    public final /* synthetic */ AgooFactory f6479c;

    public ReportNotificationClickTask(AgooFactory agooFactory, String str, String str2) {
        this.f6479c = agooFactory;
        this.f6477a = str;
        this.f6478b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        MsgDO msgDO = null;
        try {
            if (ALog.isPrintLog(ALog.Level.I)) {
                ALog.m5729i(AgooFactory.TAG, "clickMessage", "msgid", this.f6477a, AgooConstants.MESSAGE_EXT, this.f6478b);
            }
            if (TextUtils.isEmpty(this.f6477a)) {
                ALog.m5726d(AgooFactory.TAG, "messageId == null", new Object[0]);
                return;
            }
            MsgDO msgDO2 = new MsgDO();
            try {
                msgDO2.msgIds = this.f6477a;
                msgDO2.extData = this.f6478b;
                msgDO2.messageSource = "accs";
                msgDO2.msgStatus = MessageService.MSG_ACCS_NOTIFY_CLICK;
                this.f6479c.updateMsgStatus(this.f6477a, MessageService.MSG_ACCS_NOTIFY_CLICK);
                this.f6479c.notifyManager.reportNotifyMessage(msgDO2);
            } catch (Throwable th) {
                th = th;
                msgDO = msgDO2;
                try {
                    ALog.m5728e(AgooFactory.TAG, "clickMessage,error=" + th, new Object[0]);
                } finally {
                    if (msgDO != null) {
                        this.f6479c.notifyManager.reportNotifyMessage(msgDO);
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
