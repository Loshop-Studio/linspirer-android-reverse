package com.taobao.accs;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public interface ConnectionListener {
    void onConnect();

    void onDisconnect(int i, String str);
}
