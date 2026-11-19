package anetwork.channel.aidl.adapter;

import anetwork.channel.IBodyHandler;
import anetwork.channel.aidl.ParcelableBodyHandler;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ParcelableBodyHandlerWrapper extends ParcelableBodyHandler.Stub {
    public static final String TAG = "anet.ParcelableBodyHandlerWrapper";
    public IBodyHandler handler;

    public ParcelableBodyHandlerWrapper(IBodyHandler iBodyHandler) {
        this.handler = iBodyHandler;
    }

    @Override // anetwork.channel.aidl.ParcelableBodyHandler
    public boolean isCompleted() {
        IBodyHandler iBodyHandler = this.handler;
        if (iBodyHandler != null) {
            return iBodyHandler.isCompleted();
        }
        return true;
    }

    @Override // anetwork.channel.aidl.ParcelableBodyHandler
    public int read(byte[] bArr) {
        IBodyHandler iBodyHandler = this.handler;
        if (iBodyHandler != null) {
            return iBodyHandler.read(bArr);
        }
        return 0;
    }

    public String toString() {
        return super.toString() + " handle:" + this.handler;
    }
}
