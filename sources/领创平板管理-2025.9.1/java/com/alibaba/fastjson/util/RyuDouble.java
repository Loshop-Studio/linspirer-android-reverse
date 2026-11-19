package com.alibaba.fastjson.util;

import com.huawei.hem.C0948f6;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.lang.reflect.Array;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class RyuDouble {
    public static final int[][] POW5_SPLIT = (int[][]) Array.newInstance((Class<?>) int.class, 326, 4);
    public static final int[][] POW5_INV_SPLIT = (int[][]) Array.newInstance((Class<?>) int.class, 291, 4);

    static {
        BigInteger bigIntegerSubtract = BigInteger.ONE.shiftLeft(31).subtract(BigInteger.ONE);
        BigInteger bigIntegerSubtract2 = BigInteger.ONE.shiftLeft(31).subtract(BigInteger.ONE);
        int i = 0;
        while (i < 326) {
            BigInteger bigIntegerPow = BigInteger.valueOf(5L).pow(i);
            int iBitLength = bigIntegerPow.bitLength();
            int i2 = i == 0 ? 1 : (int) ((((i * 23219280) + 10000000) - 1) / 10000000);
            if (i2 != iBitLength) {
                throw new IllegalStateException(iBitLength + " != " + i2);
            }
            if (i < POW5_SPLIT.length) {
                for (int i3 = 0; i3 < 4; i3++) {
                    POW5_SPLIT[i][i3] = bigIntegerPow.shiftRight(((3 - i3) * 31) + (iBitLength - 121)).and(bigIntegerSubtract).intValue();
                }
            }
            if (i < POW5_INV_SPLIT.length) {
                BigInteger bigIntegerAdd = BigInteger.ONE.shiftLeft(iBitLength + 121).divide(bigIntegerPow).add(BigInteger.ONE);
                for (int i4 = 0; i4 < 4; i4++) {
                    if (i4 == 0) {
                        POW5_INV_SPLIT[i][i4] = bigIntegerAdd.shiftRight((3 - i4) * 31).intValue();
                    } else {
                        POW5_INV_SPLIT[i][i4] = bigIntegerAdd.shiftRight((3 - i4) * 31).and(bigIntegerSubtract2).intValue();
                    }
                }
            }
            i++;
        }
    }

    public static String toString(double d) {
        char[] cArr = new char[24];
        return new String(cArr, 0, toString(d, cArr, 0));
    }

    public static int toString(double d, char[] cArr, int i) {
        int i2;
        boolean z;
        boolean z2;
        long j;
        int i3;
        long j2;
        int i4;
        int i5;
        long j3;
        int i6;
        int i7;
        long j4;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        if (!Double.isNaN(d)) {
            if (d == Double.POSITIVE_INFINITY) {
                int i18 = i + 1;
                cArr[i] = 'I';
                int i19 = i18 + 1;
                cArr[i18] = 'n';
                int i20 = i19 + 1;
                cArr[i19] = 'f';
                int i21 = i20 + 1;
                cArr[i20] = 'i';
                int i22 = i21 + 1;
                cArr[i21] = 'n';
                int i23 = i22 + 1;
                cArr[i22] = 'i';
                int i24 = i23 + 1;
                cArr[i23] = 't';
                i17 = i24 + 1;
                cArr[i24] = 'y';
            } else if (d == Double.NEGATIVE_INFINITY) {
                int i25 = i + 1;
                cArr[i] = '-';
                int i26 = i25 + 1;
                cArr[i25] = 'I';
                int i27 = i26 + 1;
                cArr[i26] = 'n';
                int i28 = i27 + 1;
                cArr[i27] = 'f';
                int i29 = i28 + 1;
                cArr[i28] = 'i';
                int i30 = i29 + 1;
                cArr[i29] = 'n';
                int i31 = i30 + 1;
                cArr[i30] = 'i';
                int i32 = i31 + 1;
                cArr[i31] = 't';
                i12 = i32 + 1;
                cArr[i32] = 'y';
            } else {
                long jDoubleToLongBits = Double.doubleToLongBits(d);
                if (jDoubleToLongBits == 0) {
                    int i33 = i + 1;
                    cArr[i] = TransactionIdCreater.FILL_BYTE;
                    int i34 = i33 + 1;
                    cArr[i33] = '.';
                    i12 = i34 + 1;
                    cArr[i34] = TransactionIdCreater.FILL_BYTE;
                } else if (jDoubleToLongBits == Long.MIN_VALUE) {
                    int i35 = i + 1;
                    cArr[i] = '-';
                    int i36 = i35 + 1;
                    cArr[i35] = TransactionIdCreater.FILL_BYTE;
                    int i37 = i36 + 1;
                    cArr[i36] = '.';
                    i17 = i37 + 1;
                    cArr[i37] = TransactionIdCreater.FILL_BYTE;
                } else {
                    int i38 = (int) ((jDoubleToLongBits >>> 52) & 2047);
                    long j5 = jDoubleToLongBits & 4503599627370495L;
                    if (i38 == 0) {
                        i2 = -1074;
                    } else {
                        i2 = (i38 - 1023) - 52;
                        j5 |= 4503599627370496L;
                    }
                    boolean z3 = jDoubleToLongBits < 0;
                    boolean z4 = (j5 & 1) == 0;
                    long j6 = 4 * j5;
                    long j7 = 2 + j6;
                    int i39 = (j5 != 4503599627370496L || i38 <= 1) ? 1 : 0;
                    long j8 = (j6 - 1) - i39;
                    int i40 = i2 - 2;
                    if (i40 >= 0) {
                        z = z3;
                        int iMax = Math.max(0, ((int) ((i40 * 3010299) / 10000000)) - 1);
                        int i41 = ((((-i40) + iMax) + (((iMax == 0 ? 1 : (int) ((((iMax * 23219280) + 10000000) - 1) / 10000000)) + 122) - 1)) - 93) - 21;
                        if (i41 >= 0) {
                            int[] iArr = POW5_INV_SPLIT[iMax];
                            long j9 = j6 >>> 31;
                            long j10 = 2147483647L & j6;
                            z2 = z4;
                            long j11 = iArr[0] * j10;
                            long j12 = iArr[1] * j9;
                            long j13 = iArr[1] * j10;
                            long j14 = ((((((((((((j10 * iArr[3]) >>> 31) + (iArr[2] * j10)) + (j9 * iArr[3])) >>> 31) + j13) + (iArr[2] * j9)) >>> 31) + j11) + j12) >>> 21) + ((iArr[0] * j9) << 10)) >>> i41;
                            long j15 = j7 >>> 31;
                            long j16 = j7 & 2147483647L;
                            long j17 = iArr[0] * j16;
                            long j18 = iArr[1] * j15;
                            long j19 = iArr[1] * j16;
                            long j20 = ((((((((((((j16 * iArr[3]) >>> 31) + (iArr[2] * j16)) + (j15 * iArr[3])) >>> 31) + j19) + (iArr[2] * j15)) >>> 31) + j17) + j18) >>> 21) + ((iArr[0] * j15) << 10)) >>> i41;
                            long j21 = j8 >>> 31;
                            long j22 = j8 & 2147483647L;
                            long j23 = iArr[0] * j22;
                            long j24 = iArr[1] * j21;
                            long j25 = iArr[1] * j22;
                            j2 = ((((((((((((j22 * iArr[3]) >>> 31) + (iArr[2] * j22)) + (j21 * iArr[3])) >>> 31) + j25) + (iArr[2] * j21)) >>> 31) + j23) + j24) >>> 21) + ((iArr[0] * j21) << 10)) >>> i41;
                            i4 = iMax;
                            if (i4 <= 21) {
                                long j26 = j6 % 5;
                                if (j26 == 0) {
                                    if (j26 != 0) {
                                        i16 = 0;
                                    } else if (j6 % 25 != 0) {
                                        i16 = 1;
                                    } else if (j6 % 125 != 0) {
                                        i16 = 2;
                                    } else if (j6 % 625 != 0) {
                                        i16 = 3;
                                    } else {
                                        long j27 = j6 / 625;
                                        int i42 = 4;
                                        for (long j28 = 0; j27 > j28 && j27 % 5 == j28; j28 = 0) {
                                            j27 /= 5;
                                            i42++;
                                        }
                                        i16 = i42;
                                    }
                                    i13 = i16 >= i4 ? 1 : 0;
                                    i6 = 0;
                                    j3 = j20;
                                    i7 = 0;
                                    j = j14;
                                    i5 = i13;
                                    i3 = 3;
                                } else {
                                    if (z2) {
                                        if (j8 % 5 != 0) {
                                            i15 = 0;
                                        } else if (j8 % 25 != 0) {
                                            i15 = 1;
                                        } else if (j8 % 125 != 0) {
                                            i15 = 2;
                                        } else if (j8 % 625 != 0) {
                                            i15 = 3;
                                        } else {
                                            long j29 = j8 / 625;
                                            int i43 = 4;
                                            for (long j30 = 0; j29 > j30 && j29 % 5 == j30; j30 = 0) {
                                                j29 /= 5;
                                                i43++;
                                            }
                                            i15 = i43;
                                        }
                                        if (i15 >= i4) {
                                            i6 = 1;
                                            j3 = j20;
                                            i13 = 0;
                                            i7 = 0;
                                            j = j14;
                                            i5 = i13;
                                            i3 = 3;
                                        }
                                    } else {
                                        if (j7 % 5 != 0) {
                                            i14 = 0;
                                        } else if (j7 % 25 != 0) {
                                            i14 = 1;
                                        } else if (j7 % 125 != 0) {
                                            i14 = 2;
                                        } else if (j7 % 625 != 0) {
                                            i14 = 3;
                                        } else {
                                            long j31 = j7 / 625;
                                            int i44 = 4;
                                            for (long j32 = 0; j31 > j32 && j31 % 5 == j32; j32 = 0) {
                                                j31 /= 5;
                                                i44++;
                                            }
                                            i14 = i44;
                                        }
                                        if (i14 >= i4) {
                                            j3 = j20 - 1;
                                        }
                                        i6 = 0;
                                        i13 = 0;
                                        i7 = 0;
                                        j = j14;
                                        i5 = i13;
                                        i3 = 3;
                                    }
                                    j3 = j20;
                                    i6 = 0;
                                    i13 = 0;
                                    i7 = 0;
                                    j = j14;
                                    i5 = i13;
                                    i3 = 3;
                                }
                            } else {
                                j3 = j20;
                                i6 = 0;
                                i13 = 0;
                                i7 = 0;
                                j = j14;
                                i5 = i13;
                                i3 = 3;
                            }
                        } else {
                            throw new IllegalArgumentException(C0948f6.m1754L("", i41));
                        }
                    } else {
                        z = z3;
                        z2 = z4;
                        int iMax2 = Math.max(0, ((int) ((r1 * 6989700) / 10000000)) - 1);
                        int i45 = (-i40) - iMax2;
                        int i46 = ((iMax2 - ((i45 == 0 ? 1 : (int) ((((i45 * 23219280) + 10000000) - 1) / 10000000)) - 121)) - 93) - 21;
                        if (i46 >= 0) {
                            int[] iArr2 = POW5_SPLIT[i45];
                            long j33 = j6 >>> 31;
                            long j34 = j6 & 2147483647L;
                            long j35 = iArr2[0] * j34;
                            long j36 = iArr2[1] * j33;
                            long j37 = iArr2[1] * j34;
                            int i47 = i39;
                            long j38 = ((((((((((((j34 * iArr2[3]) >>> 31) + (iArr2[2] * j34)) + (j33 * iArr2[3])) >>> 31) + j37) + (iArr2[2] * j33)) >>> 31) + j35) + j36) >>> 21) + ((iArr2[0] * j33) << 10)) >>> i46;
                            long j39 = j7 >>> 31;
                            long j40 = j7 & 2147483647L;
                            long j41 = iArr2[0] * j40;
                            j = j38;
                            long j42 = iArr2[1] * j39;
                            long j43 = iArr2[1] * j40;
                            long j44 = ((((((((((((j40 * iArr2[3]) >>> 31) + (iArr2[2] * j40)) + (j39 * iArr2[3])) >>> 31) + j43) + (iArr2[2] * j39)) >>> 31) + j41) + j42) >>> 21) + ((iArr2[0] * j39) << 10)) >>> i46;
                            long j45 = j8 >>> 31;
                            long j46 = j8 & 2147483647L;
                            long j47 = iArr2[0] * j46;
                            long j48 = iArr2[1] * j45;
                            long j49 = iArr2[1] * j46;
                            i3 = 3;
                            j2 = ((((((((((((j46 * iArr2[3]) >>> 31) + (iArr2[2] * j46)) + (j45 * iArr2[3])) >>> 31) + j49) + (iArr2[2] * j45)) >>> 31) + j47) + j48) >>> 21) + ((iArr2[0] * j45) << 10)) >>> i46;
                            i4 = iMax2 + i40;
                            if (iMax2 > 1) {
                                i5 = (iMax2 >= 63 || (j6 & ((1 << (iMax2 + (-1))) - 1)) != 0) ? 0 : 1;
                                j3 = j44;
                            } else if (z2) {
                                i6 = i47 == 1 ? 1 : 0;
                                i5 = 1;
                                j3 = j44;
                                i7 = 0;
                            } else {
                                i5 = 1;
                                j3 = j44 - 1;
                            }
                            i6 = 0;
                            i7 = 0;
                        } else {
                            throw new IllegalArgumentException(C0948f6.m1754L("", i46));
                        }
                    }
                    if (j3 >= 1000000000000000000L) {
                        i3 = 19;
                    } else if (j3 >= 100000000000000000L) {
                        i3 = 18;
                    } else if (j3 >= 10000000000000000L) {
                        i3 = 17;
                    } else if (j3 >= 1000000000000000L) {
                        i3 = 16;
                    } else if (j3 >= 100000000000000L) {
                        i3 = 15;
                    } else if (j3 >= 10000000000000L) {
                        i3 = 14;
                    } else if (j3 >= 1000000000000L) {
                        i3 = 13;
                    } else if (j3 >= 100000000000L) {
                        i3 = 12;
                    } else if (j3 >= 10000000000L) {
                        i3 = 11;
                    } else if (j3 >= 1000000000) {
                        i3 = 10;
                    } else if (j3 >= 100000000) {
                        i3 = 9;
                    } else if (j3 >= 10000000) {
                        i3 = 8;
                    } else if (j3 >= 1000000) {
                        i3 = 7;
                    } else if (j3 >= 100000) {
                        i3 = 6;
                    } else if (j3 >= 10000) {
                        i3 = 5;
                    } else if (j3 >= 1000) {
                        i3 = 4;
                    } else if (j3 < 100) {
                        i3 = j3 >= 10 ? 2 : 1;
                    }
                    int i48 = (i4 + i3) - 1;
                    int i49 = (i48 < -3 || i48 >= 7) ? 1 : i7;
                    if (i6 == 0 && i5 == 0) {
                        i8 = i7;
                        int i50 = i8;
                        while (true) {
                            long j50 = j3 / 10;
                            long j51 = j2 / 10;
                            if (j50 <= j51 || (j3 < 100 && i49 != 0)) {
                                break;
                            }
                            i50 = (int) (j % 10);
                            j /= 10;
                            i8++;
                            j3 = j50;
                            j2 = j51;
                        }
                        j4 = j + ((j == j2 || i50 >= 5) ? 1 : i7);
                    } else {
                        int i51 = i7;
                        int i52 = i51;
                        while (true) {
                            long j52 = j3 / 10;
                            long j53 = j2 / 10;
                            if (j52 <= j53 || (j3 < 100 && i49 != 0)) {
                                break;
                            }
                            i6 &= j2 % 10 == 0 ? 1 : i7;
                            i5 &= i51 == 0 ? 1 : i7;
                            i51 = (int) (j % 10);
                            j /= 10;
                            i52++;
                            j3 = j52;
                            j2 = j53;
                        }
                        if (i6 != 0 && z2) {
                            for (long j54 = 100; j2 % 10 == 0 && (j3 >= j54 || i49 == 0); j54 = 100) {
                                i5 &= i51 == 0 ? 1 : i7;
                                i51 = (int) (j % 10);
                                j3 /= 10;
                                j /= 10;
                                j2 /= 10;
                                i52++;
                            }
                        }
                        if (i5 != 0 && i51 == 5 && j % 2 == 0) {
                            i51 = 4;
                        }
                        j4 = j + (((j != j2 || (i6 != 0 && z2)) && i51 < 5) ? i7 : 1);
                        i8 = i52;
                    }
                    int i53 = i3 - i8;
                    if (z) {
                        i9 = i + 1;
                        cArr[i] = '-';
                    } else {
                        i9 = i;
                    }
                    if (i49 == 0) {
                        char c = TransactionIdCreater.FILL_BYTE;
                        if (i48 < 0) {
                            int i54 = i9 + 1;
                            cArr[i9] = TransactionIdCreater.FILL_BYTE;
                            int i55 = i54 + 1;
                            cArr[i54] = '.';
                            int i56 = -1;
                            while (i56 > i48) {
                                cArr[i55] = c;
                                i56--;
                                c = TransactionIdCreater.FILL_BYTE;
                                i55++;
                            }
                            i10 = i55;
                            for (int i57 = i7; i57 < i53; i57++) {
                                cArr[((i55 + i53) - i57) - 1] = (char) ((j4 % 10) + 48);
                                j4 /= 10;
                                i10++;
                            }
                        } else {
                            int i58 = i48 + 1;
                            if (i58 >= i53) {
                                for (int i59 = i7; i59 < i53; i59++) {
                                    cArr[((i9 + i53) - i59) - 1] = (char) ((j4 % 10) + 48);
                                    j4 /= 10;
                                }
                                int i60 = i9 + i53;
                                while (i53 < i58) {
                                    cArr[i60] = TransactionIdCreater.FILL_BYTE;
                                    i53++;
                                    i60++;
                                }
                                int i61 = i60 + 1;
                                cArr[i60] = '.';
                                cArr[i61] = TransactionIdCreater.FILL_BYTE;
                                i10 = i61 + 1;
                            } else {
                                int i62 = i9 + 1;
                                for (int i63 = i7; i63 < i53; i63++) {
                                    if ((i53 - i63) - 1 == i48) {
                                        cArr[((i62 + i53) - i63) - 1] = '.';
                                        i62--;
                                    }
                                    cArr[((i62 + i53) - i63) - 1] = (char) ((j4 % 10) + 48);
                                    j4 /= 10;
                                }
                                i10 = i53 + 1 + i9;
                            }
                        }
                        return i10 - i;
                    }
                    for (int i64 = i7; i64 < i53 - 1; i64++) {
                        int i65 = (int) (j4 % 10);
                        j4 /= 10;
                        cArr[(i9 + i53) - i64] = (char) (i65 + 48);
                    }
                    cArr[i9] = (char) ((j4 % 10) + 48);
                    cArr[i9 + 1] = '.';
                    int i66 = i53 + 1 + i9;
                    if (i53 == 1) {
                        cArr[i66] = TransactionIdCreater.FILL_BYTE;
                        i66++;
                    }
                    int i67 = i66 + 1;
                    cArr[i66] = 'E';
                    if (i48 < 0) {
                        cArr[i67] = '-';
                        i48 = -i48;
                        i67++;
                    }
                    if (i48 >= 100) {
                        int i68 = i67 + 1;
                        i11 = 48;
                        cArr[i67] = (char) ((i48 / 100) + 48);
                        i48 %= 100;
                        i67 = i68 + 1;
                        cArr[i68] = (char) ((i48 / 10) + 48);
                    } else {
                        i11 = 48;
                        if (i48 >= 10) {
                            cArr[i67] = (char) ((i48 / 10) + 48);
                            i67++;
                        }
                    }
                    cArr[i67] = (char) ((i48 % 10) + i11);
                    i12 = i67 + 1;
                }
            }
            return i17 - i;
        }
        int i69 = i + 1;
        cArr[i] = 'N';
        int i70 = i69 + 1;
        cArr[i69] = 'a';
        i12 = i70 + 1;
        cArr[i70] = 'N';
        return i12 - i;
    }
}
