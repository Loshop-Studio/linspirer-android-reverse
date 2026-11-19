package com.alibaba.fastjson;

/* loaded from: classes.dex */
public enum PropertyNamingStrategy {
    CamelCase,
    PascalCase,
    SnakeCase,
    KebabCase,
    NoChange,
    NeverUseThisValueExceptDefaultValue;

    /* renamed from: com.alibaba.fastjson.PropertyNamingStrategy$1 */
    public static /* synthetic */ class C04781 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;

        static {
            int[] iArr = new int[PropertyNamingStrategy.values().length];
            $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy = iArr;
            try {
                PropertyNamingStrategy propertyNamingStrategy = PropertyNamingStrategy.SnakeCase;
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                PropertyNamingStrategy propertyNamingStrategy2 = PropertyNamingStrategy.KebabCase;
                iArr2[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                PropertyNamingStrategy propertyNamingStrategy3 = PropertyNamingStrategy.PascalCase;
                iArr3[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                PropertyNamingStrategy propertyNamingStrategy4 = PropertyNamingStrategy.CamelCase;
                iArr4[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                PropertyNamingStrategy propertyNamingStrategy5 = PropertyNamingStrategy.NoChange;
                iArr5[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                PropertyNamingStrategy propertyNamingStrategy6 = PropertyNamingStrategy.NeverUseThisValueExceptDefaultValue;
                iArr6[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public String translate(String str) {
        int iOrdinal = ordinal();
        int i = 0;
        if (iOrdinal == 0) {
            char cCharAt = str.charAt(0);
            if (cCharAt < 'A' || cCharAt > 'Z') {
                return str;
            }
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] + ' ');
            return new String(charArray);
        }
        if (iOrdinal == 1) {
            char cCharAt2 = str.charAt(0);
            if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                return str;
            }
            char[] charArray2 = str.toCharArray();
            charArray2[0] = (char) (charArray2[0] - ' ');
            return new String(charArray2);
        }
        if (iOrdinal == 2) {
            StringBuilder sb = new StringBuilder();
            while (i < str.length()) {
                char cCharAt3 = str.charAt(i);
                if (cCharAt3 < 'A' || cCharAt3 > 'Z') {
                    sb.append(cCharAt3);
                } else {
                    char c = (char) (cCharAt3 + ' ');
                    if (i > 0) {
                        sb.append('_');
                    }
                    sb.append(c);
                }
                i++;
            }
            return sb.toString();
        }
        if (iOrdinal != 3) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        while (i < str.length()) {
            char cCharAt4 = str.charAt(i);
            if (cCharAt4 < 'A' || cCharAt4 > 'Z') {
                sb2.append(cCharAt4);
            } else {
                char c2 = (char) (cCharAt4 + ' ');
                if (i > 0) {
                    sb2.append('-');
                }
                sb2.append(c2);
            }
            i++;
        }
        return sb2.toString();
    }
}
