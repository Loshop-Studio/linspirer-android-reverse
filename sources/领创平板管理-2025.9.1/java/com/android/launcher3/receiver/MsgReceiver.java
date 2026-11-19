package com.android.launcher3.receiver;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.sdk.android.push.MessageReceiver;
import com.alibaba.sdk.android.push.notification.CPushMessage;
import com.android.launcher3.model.CommandInfo;
import com.android.launcher3.network.ReciverPushHelper;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.AgooNotificationHandler;
import java.util.Map;

/* loaded from: classes.dex */
public class MsgReceiver extends MessageReceiver {
    @Override // com.alibaba.sdk.android.push.MessageReceiver
    public void onMessage(Context context, CPushMessage cPushMessage) {
        String content = cPushMessage.getContent();
        LTKDateUtil.m1403m("handle push message" + content);
        if (TextUtils.isEmpty(content)) {
            LTKDateUtil.m1403m("MPS:AgooMessageReceiverpush message empty");
            return;
        }
        CommandInfo commandInfo = (CommandInfo) JSON.parseObject(content, CommandInfo.class);
        if (commandInfo == null) {
            LTKDateUtil.m1403m("MPS:AgooMessageReceiverparser message empty");
            return;
        }
        int type = commandInfo.getType();
        if (type != 1) {
            if (type == 3) {
                ReciverPushHelper.getInstance().getPushMessage(type);
                return;
            }
            return;
        }
        String command = commandInfo.getCommand();
        if ("command_applist".equals(command) || "command_dynamic_device_info".equals(command) || "command_tactics_updated".equals(command)) {
            AgooNotificationHandler.m2521q(context, command, commandInfo.getActive());
        } else {
            ReciverPushHelper.getInstance().reportServer(command, commandInfo.getActive(), context);
        }
    }

    @Override // com.alibaba.sdk.android.push.MessageReceiver
    public void onNotification(Context context, String str, String str2, Map<String, String> map) {
    }

    @Override // com.alibaba.sdk.android.push.MessageReceiver
    public void onNotificationClickedWithNoAction(Context context, String str, String str2, String str3) {
    }

    @Override // com.alibaba.sdk.android.push.MessageReceiver
    public void onNotificationOpened(Context context, String str, String str2, String str3) {
    }

    @Override // com.alibaba.sdk.android.push.MessageReceiver
    public void onNotificationReceivedInApp(Context context, String str, String str2, Map<String, String> map, int i, String str3, String str4) {
    }

    @Override // com.alibaba.sdk.android.push.MessageReceiver
    public void onNotificationRemoved(Context context, String str) {
    }
}
