package com.alibaba.fastjson;

import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.huawei.hem.CompilerOutline;

/* loaded from: classes.dex */
public class JSONPatch {

    /* renamed from: com.alibaba.fastjson.JSONPatch$1 */
    public static /* synthetic */ class C04761 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;

        static {
            int[] iArr = new int[OperationType.values().length];
            $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType = iArr;
            try {
                OperationType operationType = OperationType.add;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                OperationType operationType2 = OperationType.replace;
                iArr2[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                OperationType operationType3 = OperationType.remove;
                iArr3[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                OperationType operationType4 = OperationType.copy;
                iArr4[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                OperationType operationType5 = OperationType.move;
                iArr5[3] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                OperationType operationType6 = OperationType.test;
                iArr6[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @JSONType(orders = {"op", "from", "path", "value"})
    public static class Operation {
        public String from;
        public String path;

        @JSONField(name = "op")
        public OperationType type;
        public Object value;
    }

    public enum OperationType {
        add,
        remove,
        replace,
        move,
        copy,
        test
    }

    public static String apply(String str, String str2) {
        return JSON.toJSONString(apply(JSON.parse(str, Feature.OrderedField), str2));
    }

    public static boolean isObject(String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!JSONLexerBase.isWhitespace(cCharAt)) {
                return cCharAt == '{';
            }
        }
        return false;
    }

    public static Object apply(Object obj, String str) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        for (Operation operation : isObject(str) ? new Operation[]{(Operation) JSON.parseObject(str, Operation.class)} : (Operation[]) JSON.parseObject(str, Operation[].class)) {
            JSONPath jSONPathCompile = JSONPath.compile(operation.path);
            int iOrdinal = operation.type.ordinal();
            if (iOrdinal == 0) {
                jSONPathCompile.patchAdd(obj, operation.value, false);
            } else if (iOrdinal == 1) {
                jSONPathCompile.remove(obj);
            } else if (iOrdinal == 2) {
                jSONPathCompile.patchAdd(obj, operation.value, true);
            } else if (iOrdinal == 3 || iOrdinal == 4) {
                JSONPath jSONPathCompile2 = JSONPath.compile(operation.from);
                Object objEval = jSONPathCompile2.eval(obj);
                if (operation.type == OperationType.move && !jSONPathCompile2.remove(obj)) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("json patch move error : ");
                    sbM1765j.append(operation.from);
                    sbM1765j.append(" -> ");
                    sbM1765j.append(operation.path);
                    throw new JSONException(sbM1765j.toString());
                }
                jSONPathCompile.set(obj, objEval);
            } else if (iOrdinal == 5) {
                Object objEval2 = jSONPathCompile.eval(obj);
                if (objEval2 == null) {
                    return Boolean.valueOf(operation.value == null);
                }
                return Boolean.valueOf(objEval2.equals(operation.value));
            }
        }
        return obj;
    }
}
