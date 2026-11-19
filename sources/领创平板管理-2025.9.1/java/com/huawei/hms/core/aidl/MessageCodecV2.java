package com.huawei.hms.core.aidl;

import android.os.Bundle;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.utils.JsonUtil;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MessageCodecV2.java */
/* renamed from: com.huawei.hms.core.aidl.f */
/* loaded from: classes.dex */
public class MessageCodecV2 extends MessageCodec {
    @Override // com.huawei.hms.core.aidl.C1544e
    /* renamed from: a */
    public List<Object> mo3403a(Type type, Bundle bundle) throws InstantiationException {
        int i = bundle.getInt(JsonUtil.LIST_SIZE);
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = bundle.get(JsonUtil.LIST_ITEM_VALUE + i2);
            if (obj.getClass().isPrimitive() || (obj instanceof String) || (obj instanceof Serializable)) {
                arrayList.add(obj);
            } else if (obj instanceof Bundle) {
                Bundle bundle2 = (Bundle) obj;
                int i3 = bundle2.getInt(JsonUtil.VAL_TYPE, -1);
                if (i3 == 1) {
                    throw new InstantiationException("Nested List can not be supported");
                }
                if (i3 != 0) {
                    throw new InstantiationException("Unknown type can not be supported");
                }
                arrayList.add(m3402a(bundle2, (IMessageEntity) ((Class) ((ParameterizedType) type).getActualTypeArguments()[0]).newInstance()));
            } else {
                continue;
            }
        }
        return arrayList;
    }

    @Override // com.huawei.hms.core.aidl.C1544e
    /* renamed from: a */
    public void mo3405a(String str, List list, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(JsonUtil.VAL_TYPE, 1);
        bundle2.putInt(JsonUtil.LIST_SIZE, list.size());
        for (int i = 0; i < list.size(); i++) {
            m3404a(CompilerOutline.m1754L(JsonUtil.LIST_ITEM_VALUE, i), list.get(i), bundle2);
        }
        bundle.putBundle(str, bundle2);
    }
}
