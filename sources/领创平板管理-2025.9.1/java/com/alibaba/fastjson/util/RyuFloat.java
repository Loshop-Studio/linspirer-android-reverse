package com.alibaba.fastjson.util;

import com.alibaba.fastjson.asm.Label;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.framework.common.NetworkUtil;

/* loaded from: classes.dex */
public final class RyuFloat {
    public static final int[][] POW5_SPLIT = {new int[]{Label.FORWARD_REFERENCE_TYPE_WIDE, 0}, new int[]{671088640, 0}, new int[]{838860800, 0}, new int[]{1048576000, 0}, new int[]{655360000, 0}, new int[]{819200000, 0}, new int[]{1024000000, 0}, new int[]{640000000, 0}, new int[]{800000000, 0}, new int[]{1000000000, 0}, new int[]{625000000, 0}, new int[]{781250000, 0}, new int[]{976562500, 0}, new int[]{610351562, AntiCollisionHashMap.MAXIMUM_CAPACITY}, new int[]{762939453, Label.FORWARD_REFERENCE_TYPE_SHORT}, new int[]{953674316, 872415232}, new int[]{596046447, 1619001344}, new int[]{745058059, 1486880768}, new int[]{931322574, 1321730048}, new int[]{582076609, 289210368}, new int[]{727595761, 898383872}, new int[]{909494701, 1659850752}, new int[]{568434188, 1305842176}, new int[]{710542735, 1632302720}, new int[]{888178419, 1503507488}, new int[]{555111512, 671256724}, new int[]{693889390, 839070905}, new int[]{867361737, 2122580455}, new int[]{542101086, 521306416}, new int[]{677626357, 1725374844}, new int[]{847032947, 546105819}, new int[]{1058791184, 145761362}, new int[]{661744490, 91100851}, new int[]{827180612, 1187617888}, new int[]{1033975765, 1484522360}, new int[]{646234853, 1196261931}, new int[]{807793566, 2032198326}, new int[]{1009741958, 1466506084}, new int[]{631088724, 379695390}, new int[]{788860905, 474619238}, new int[]{986076131, 1130144959}, new int[]{616297582, 437905143}, new int[]{770371977, 1621123253}, new int[]{962964972, 415791331}, new int[]{601853107, 1333611405}, new int[]{752316384, 1130143345}, new int[]{940395480, 1412679181}};
    public static final int[][] POW5_INV_SPLIT = {new int[]{Label.FORWARD_REFERENCE_TYPE_SHORT, 1}, new int[]{214748364, 1717986919}, new int[]{171798691, 1803886265}, new int[]{137438953, 1013612282}, new int[]{219902325, 1192282922}, new int[]{175921860, 953826338}, new int[]{140737488, 763061070}, new int[]{225179981, 791400982}, new int[]{180143985, 203624056}, new int[]{144115188, 162899245}, new int[]{230584300, 1978625710}, new int[]{184467440, 1582900568}, new int[]{147573952, 1266320455}, new int[]{236118324, 308125809}, new int[]{188894659, 675997377}, new int[]{151115727, 970294631}, new int[]{241785163, 1981968139}, new int[]{193428131, 297084323}, new int[]{154742504, 1955654377}, new int[]{247588007, 1840556814}, new int[]{198070406, 613451992}, new int[]{158456325, 61264864}, new int[]{253530120, 98023782}, new int[]{202824096, 78419026}, new int[]{162259276, 1780722139}, new int[]{259614842, 1990161963}, new int[]{207691874, 733136111}, new int[]{166153499, 1016005619}, new int[]{265845599, 337118801}, new int[]{212676479, 699191770}, new int[]{170141183, 988850146}};

    public static String toString(float f) {
        char[] cArr = new char[15];
        return new String(cArr, 0, toString(f, cArr, 0));
    }

    public static int toString(float f, char[] cArr, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        if (Float.isNaN(f)) {
            int i17 = i + 1;
            cArr[i] = 'N';
            int i18 = i17 + 1;
            cArr[i17] = 'a';
            i16 = i18 + 1;
            cArr[i18] = 'N';
        } else {
            if (f == Float.POSITIVE_INFINITY) {
                int i19 = i + 1;
                cArr[i] = 'I';
                int i20 = i19 + 1;
                cArr[i19] = 'n';
                int i21 = i20 + 1;
                cArr[i20] = 'f';
                int i22 = i21 + 1;
                cArr[i21] = 'i';
                int i23 = i22 + 1;
                cArr[i22] = 'n';
                int i24 = i23 + 1;
                cArr[i23] = 'i';
                int i25 = i24 + 1;
                cArr[i24] = 't';
                cArr[i25] = 'y';
                return (i25 + 1) - i;
            }
            if (f == Float.NEGATIVE_INFINITY) {
                int i26 = i + 1;
                cArr[i] = '-';
                int i27 = i26 + 1;
                cArr[i26] = 'I';
                int i28 = i27 + 1;
                cArr[i27] = 'n';
                int i29 = i28 + 1;
                cArr[i28] = 'f';
                int i30 = i29 + 1;
                cArr[i29] = 'i';
                int i31 = i30 + 1;
                cArr[i30] = 'n';
                int i32 = i31 + 1;
                cArr[i31] = 'i';
                int i33 = i32 + 1;
                cArr[i32] = 't';
                i16 = i33 + 1;
                cArr[i33] = 'y';
            } else {
                int iFloatToIntBits = Float.floatToIntBits(f);
                if (iFloatToIntBits != 0) {
                    if (iFloatToIntBits == Integer.MIN_VALUE) {
                        int i34 = i + 1;
                        cArr[i] = '-';
                        int i35 = i34 + 1;
                        cArr[i34] = TransactionIdCreater.FILL_BYTE;
                        int i36 = i35 + 1;
                        cArr[i35] = '.';
                        cArr[i36] = TransactionIdCreater.FILL_BYTE;
                        return (i36 + 1) - i;
                    }
                    int i37 = (iFloatToIntBits >> 23) & 255;
                    int i38 = 8388607 & iFloatToIntBits;
                    if (i37 == 0) {
                        i2 = -149;
                    } else {
                        i2 = (i37 + NetworkUtil.INVALID_RSSI) - 23;
                        i38 |= 8388608;
                    }
                    boolean z2 = iFloatToIntBits < 0;
                    boolean z3 = (i38 & 1) == 0;
                    int i39 = i38 * 4;
                    int i40 = i39 + 2;
                    int i41 = 2;
                    if (i38 == 8388608 && i37 > 1) {
                        i41 = 1;
                    }
                    int i42 = i39 - i41;
                    int i43 = i2 - 2;
                    if (i43 >= 0) {
                        i5 = (int) ((i43 * 3010299) / 10000000);
                        int i44 = i5 == 0 ? 1 : (int) ((((i5 * 23219280) + 10000000) - 1) / 10000000);
                        int i45 = (-i43) + i5;
                        int[][] iArr = POW5_INV_SPLIT;
                        long j = iArr[i5][0];
                        long j2 = iArr[i5][1];
                        long j3 = i39;
                        int i46 = (((i44 + 59) - 1) + i45) - 31;
                        z = z3;
                        int i47 = i39;
                        i6 = (int) (((j3 * j) + ((j3 * j2) >> 31)) >> i46);
                        long j4 = i40;
                        i10 = (int) (((j4 * j) + ((j4 * j2) >> 31)) >> i46);
                        long j5 = i42;
                        i9 = (int) (((j * j5) + ((j5 * j2) >> 31)) >> i46);
                        if (i5 == 0 || (i10 - 1) / 10 > i9 / 10) {
                            i7 = 0;
                        } else {
                            int i48 = i5 - 1;
                            int i49 = (i45 - 1) + (((i48 == 0 ? 1 : (int) ((((i48 * 23219280) + 10000000) - 1) / 10000000)) + 59) - 1);
                            int[][] iArr2 = POW5_INV_SPLIT;
                            i7 = (int) ((((iArr2[i48][0] * j3) + ((j3 * iArr2[i48][1]) >> 31)) >> (i49 - 31)) % 10);
                        }
                        int i50 = 0;
                        int i51 = i40;
                        while (i51 > 0 && i51 % 5 == 0) {
                            i51 /= 5;
                            i50++;
                        }
                        int i52 = 0;
                        while (i47 > 0 && i47 % 5 == 0) {
                            i47 /= 5;
                            i52++;
                        }
                        int i53 = 0;
                        while (i42 > 0 && i42 % 5 == 0) {
                            i42 /= 5;
                            i53++;
                        }
                        i12 = i50 >= i5 ? 1 : 0;
                        i8 = i52 >= i5 ? 1 : 0;
                        i11 = i53 >= i5 ? 1 : 0;
                        i4 = 0;
                    } else {
                        z = z3;
                        int i54 = -i43;
                        int i55 = (int) ((i54 * 6989700) / 10000000);
                        int i56 = i54 - i55;
                        int i57 = i56 == 0 ? 1 : (int) ((((i56 * 23219280) + 10000000) - 1) / 10000000);
                        int[][] iArr3 = POW5_SPLIT;
                        long j6 = iArr3[i56][0];
                        long j7 = iArr3[i56][1];
                        int i58 = (i55 - (i57 - 61)) - 31;
                        long j8 = i39;
                        int i59 = (int) (((j8 * j6) + ((j8 * j7) >> 31)) >> i58);
                        long j9 = i40;
                        int i60 = (int) (((j9 * j6) + ((j9 * j7) >> 31)) >> i58);
                        long j10 = i42;
                        int i61 = (int) (((j6 * j10) + ((j10 * j7) >> 31)) >> i58);
                        if (i55 == 0 || (i60 - 1) / 10 > i61 / 10) {
                            i3 = 0;
                            i4 = 0;
                        } else {
                            int[][] iArr4 = POW5_SPLIT;
                            i3 = (int) ((((iArr4[r2][0] * j8) + ((iArr4[r2][1] * j8) >> 31)) >> (((i55 - 1) - ((i56 + 1 == 0 ? 1 : (int) ((((r2 * 23219280) + 10000000) - 1) / 10000000)) - 61)) - 31)) % 10);
                            i4 = 0;
                        }
                        int i62 = i43 + i55;
                        int i63 = 1 >= i55 ? 1 : i4;
                        int i64 = (i55 >= 23 || (i39 & ((1 << (i55 + (-1))) - 1)) != 0) ? i4 : 1;
                        int i65 = (i42 % 2 == 1 ? i4 : 1) >= i55 ? 1 : i4;
                        i5 = i62;
                        i6 = i59;
                        i7 = i3;
                        i8 = i64;
                        i9 = i61;
                        i10 = i60;
                        i11 = i65;
                        i12 = i63;
                    }
                    int i66 = 1000000000;
                    int i67 = 10;
                    while (i67 > 0 && i10 < i66) {
                        i66 /= 10;
                        i67--;
                    }
                    int i68 = (i5 + i67) - 1;
                    int i69 = (i68 < -3 || i68 >= 7) ? 1 : i4;
                    if (i12 != 0 && !z) {
                        i10--;
                    }
                    int i70 = i4;
                    while (true) {
                        int i71 = i10 / 10;
                        int i72 = i9 / 10;
                        if (i71 <= i72 || (i10 < 100 && i69 != 0)) {
                            break;
                        }
                        i11 &= i9 % 10 == 0 ? 1 : i4;
                        i7 = i6 % 10;
                        i6 /= 10;
                        i70++;
                        i10 = i71;
                        i9 = i72;
                    }
                    if (i11 != 0 && z) {
                        while (i9 % 10 == 0 && (i10 >= 100 || i69 == 0)) {
                            i10 /= 10;
                            i7 = i6 % 10;
                            i6 /= 10;
                            i9 /= 10;
                            i70++;
                        }
                    }
                    int i73 = i6;
                    if (i8 != 0 && i7 == 5 && i73 % 2 == 0) {
                        i7 = 4;
                    }
                    int i74 = i73 + (((i73 != i9 || (i11 != 0 && z)) && i7 < 5) ? i4 : 1);
                    int i75 = i67 - i70;
                    if (z2) {
                        i13 = i + 1;
                        cArr[i] = '-';
                    } else {
                        i13 = i;
                    }
                    if (i69 != 0) {
                        while (i4 < i75 - 1) {
                            int i76 = i74 % 10;
                            i74 /= 10;
                            cArr[(i13 + i75) - i4] = (char) (i76 + 48);
                            i4++;
                        }
                        cArr[i13] = (char) ((i74 % 10) + 48);
                        cArr[i13 + 1] = '.';
                        int i77 = i75 + 1 + i13;
                        if (i75 == 1) {
                            cArr[i77] = TransactionIdCreater.FILL_BYTE;
                            i77++;
                        }
                        int i78 = i77 + 1;
                        cArr[i77] = 'E';
                        if (i68 < 0) {
                            cArr[i78] = '-';
                            i68 = -i68;
                            i78++;
                        }
                        if (i68 >= 10) {
                            i15 = 48;
                            cArr[i78] = (char) ((i68 / 10) + 48);
                            i78++;
                        } else {
                            i15 = 48;
                        }
                        i14 = i78 + 1;
                        cArr[i78] = (char) ((i68 % 10) + i15);
                    } else {
                        int i79 = 48;
                        if (i68 < 0) {
                            int i80 = i13 + 1;
                            cArr[i13] = TransactionIdCreater.FILL_BYTE;
                            int i81 = i80 + 1;
                            cArr[i80] = '.';
                            int i82 = -1;
                            while (i82 > i68) {
                                cArr[i81] = TransactionIdCreater.FILL_BYTE;
                                i82--;
                                i81++;
                            }
                            int i83 = i81;
                            while (i4 < i75) {
                                cArr[((i81 + i75) - i4) - 1] = (char) ((i74 % 10) + i79);
                                i74 /= 10;
                                i83++;
                                i4++;
                                i79 = 48;
                            }
                            i14 = i83;
                        } else {
                            int i84 = i68 + 1;
                            if (i84 >= i75) {
                                while (i4 < i75) {
                                    cArr[((i13 + i75) - i4) - 1] = (char) ((i74 % 10) + 48);
                                    i74 /= 10;
                                    i4++;
                                }
                                int i85 = i13 + i75;
                                while (i75 < i84) {
                                    cArr[i85] = TransactionIdCreater.FILL_BYTE;
                                    i75++;
                                    i85++;
                                }
                                int i86 = i85 + 1;
                                cArr[i85] = '.';
                                cArr[i86] = TransactionIdCreater.FILL_BYTE;
                                i14 = i86 + 1;
                            } else {
                                int i87 = i13 + 1;
                                while (i4 < i75) {
                                    if ((i75 - i4) - 1 == i68) {
                                        cArr[((i87 + i75) - i4) - 1] = '.';
                                        i87--;
                                    }
                                    cArr[((i87 + i75) - i4) - 1] = (char) ((i74 % 10) + 48);
                                    i74 /= 10;
                                    i4++;
                                }
                                i14 = i75 + 1 + i13;
                            }
                        }
                    }
                    return i14 - i;
                }
                int i88 = i + 1;
                cArr[i] = TransactionIdCreater.FILL_BYTE;
                int i89 = i88 + 1;
                cArr[i88] = '.';
                i16 = i89 + 1;
                cArr[i89] = TransactionIdCreater.FILL_BYTE;
            }
        }
        return i16 - i;
    }
}
