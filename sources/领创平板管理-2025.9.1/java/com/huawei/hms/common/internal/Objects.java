package com.huawei.hms.common.internal;

import com.huawei.hem.CompilerOutline;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class Objects {

    public static final class ToStringHelper {

        /* renamed from: a */
        public final List<String> f4524a;

        /* renamed from: b */
        public final Object f4525b;

        public final ToStringHelper add(String str, Object obj) {
            String str2 = (String) Preconditions.checkNotNull(str);
            String strValueOf = String.valueOf(obj);
            this.f4524a.add(CompilerOutline.m1763h(new StringBuilder(strValueOf.length() + str2.length() + 1), str2, ContainerUtils.KEY_VALUE_DELIMITER, strValueOf));
            return this;
        }

        public final String toString() {
            String simpleName = this.f4525b.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(100);
            sb.append(simpleName);
            sb.append('{');
            int size = this.f4524a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f4524a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }

        public ToStringHelper(Object obj) {
            this.f4525b = Preconditions.checkNotNull(obj);
            this.f4524a = new ArrayList();
        }
    }

    public Objects() {
        throw new AssertionError("Uninstantiable");
    }

    public static boolean equal(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        return obj != null && obj.equals(obj2);
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj);
    }
}
