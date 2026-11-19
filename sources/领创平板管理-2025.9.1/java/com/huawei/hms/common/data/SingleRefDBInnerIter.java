package com.huawei.hms.common.data;

import com.huawei.hem.CompilerOutline;
import com.huawei.hms.common.internal.Preconditions;

/* loaded from: classes.dex */
public class SingleRefDBInnerIter<T> extends DBInnerIter<T> {
    public SingleRefDBInnerIter(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.huawei.hms.common.data.DBInnerIter, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            return null;
        }
        int i = this.index + 1;
        this.index = i;
        if (i == 0) {
            boolean z = this.dataBuffer.get(0) instanceof DataBufferRef;
            StringBuilder sbM1765j = CompilerOutline.m1765j("DataBuffer reference of type ");
            sbM1765j.append(this.dataBuffer.get(0).getClass());
            sbM1765j.append(" is not movable");
            Preconditions.checkState(z, sbM1765j.toString());
            ((DataBufferRef) this.dataBuffer.get(0)).getWindowIndex(this.index);
        }
        return (T) this.dataBuffer.get(0);
    }
}
