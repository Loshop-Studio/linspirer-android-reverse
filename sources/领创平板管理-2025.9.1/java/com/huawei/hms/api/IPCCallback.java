package com.huawei.hms.api;

import android.os.RemoteException;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.core.aidl.CodecLookup;
import com.huawei.hms.core.aidl.C1541b;
import com.huawei.hms.core.aidl.MessageCodec;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.IAIDLCallback;
import com.huawei.hms.core.aidl.ResponseHeader;
import com.huawei.hms.support.api.transport.DatagramTransport;
import com.huawei.hms.support.log.HMSLog;

/* loaded from: classes.dex */
public class IPCCallback extends IAIDLCallback.a {

    /* renamed from: a */
    public final Class<? extends IMessageEntity> f4420a;

    /* renamed from: b */
    public final DatagramTransport.InterfaceC1571a f4421b;

    public IPCCallback(Class<? extends IMessageEntity> cls, DatagramTransport.InterfaceC1571a interfaceC1571a) {
        this.f4420a = cls;
        this.f4421b = interfaceC1571a;
    }

    @Override // com.huawei.hms.core.aidl.InterfaceC1542c
    public void call(C1541b c1541b) throws RemoteException {
        if (c1541b == null || TextUtils.isEmpty(c1541b.f4526a)) {
            HMSLog.m3461e("IPCCallback", "In call, URI cannot be empty.");
            throw new RemoteException();
        }
        MessageCodec c1544eM3386a = CodecLookup.m3386a(c1541b.m3392c());
        IMessageEntity iMessageEntityNewResponseInstance = null;
        if (c1541b.m3391b() > 0 && (iMessageEntityNewResponseInstance = newResponseInstance()) != null) {
            c1544eM3386a.m3402a(c1541b.m3389a(), iMessageEntityNewResponseInstance);
        }
        if (c1541b.f4527b == null) {
            this.f4421b.mo3452a(0, iMessageEntityNewResponseInstance);
            return;
        }
        ResponseHeader responseHeader = new ResponseHeader();
        c1544eM3386a.m3402a(c1541b.f4527b, responseHeader);
        this.f4421b.mo3452a(responseHeader.getStatusCode(), iMessageEntityNewResponseInstance);
    }

    public IMessageEntity newResponseInstance() {
        Class<? extends IMessageEntity> cls = this.f4420a;
        if (cls == null) {
            return null;
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException | InstantiationException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("In newResponseInstance, instancing exception.");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("IPCCallback", sbM1765j.toString());
            return null;
        }
    }
}
