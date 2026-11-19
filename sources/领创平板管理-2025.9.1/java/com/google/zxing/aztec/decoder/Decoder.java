package com.google.zxing.aztec.decoder;

import android.support.v4.graphics.PaintCompat;
import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.framework.network.grs.GrsManager;
import com.loc.C1860u;
import java.util.Arrays;
import org.android.agoo.message.MessageService;

/* loaded from: classes.dex */
public final class Decoder {
    public AztecDetectorResult ddata;
    public static final String[] UPPER_TABLE = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    public static final String[] LOWER_TABLE = {"CTRL_PS", " ", "a", "b", "c", "d", "e", "f", C1860u.f5946f, C1860u.f5947g, "i", C1860u.f5950j, "k", "l", PaintCompat.EM_STRING, "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    public static final String[] MIXED_TABLE = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    public static final String[] PUNCT_TABLE = {"", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", GrsManager.SEPARATOR, ":", ";", "<", ContainerUtils.KEY_VALUE_DELIMITER, ">", "?", "[", "]", "{", "}", "CTRL_UL"};
    public static final String[] DIGIT_TABLE = {"CTRL_PS", " ", MessageService.MSG_DB_READY_REPORT, "1", MessageService.MSG_DB_NOTIFY_CLICK, MessageService.MSG_DB_NOTIFY_DISMISS, "4", "5", "6", "7", MessageService.MSG_ACCS_NOTIFY_CLICK, MessageService.MSG_ACCS_NOTIFY_DISMISS, ",", ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: com.google.zxing.aztec.decoder.Decoder$1 */
    public static /* synthetic */ class C07801 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;

        static {
            int[] iArr = new int[Table.values().length];
            $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table = iArr;
            try {
                Table table = Table.UPPER;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;
                Table table2 = Table.LOWER;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;
                Table table3 = Table.MIXED;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;
                Table table4 = Table.PUNCT;
                iArr4[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;
                Table table5 = Table.DIGIT;
                iArr5[3] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    public static byte[] convertBoolArrayToByteArray(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = readByte(zArr, i << 3);
        }
        return bArr;
    }

    private boolean[] correctBits(boolean[] zArr) throws FormatException {
        GenericGF genericGF;
        int i = 8;
        if (this.ddata.getNbLayers() <= 2) {
            i = 6;
            genericGF = GenericGF.AZTEC_DATA_6;
        } else if (this.ddata.getNbLayers() <= 8) {
            genericGF = GenericGF.AZTEC_DATA_8;
        } else if (this.ddata.getNbLayers() <= 22) {
            i = 10;
            genericGF = GenericGF.AZTEC_DATA_10;
        } else {
            i = 12;
            genericGF = GenericGF.AZTEC_DATA_12;
        }
        int nbDatablocks = this.ddata.getNbDatablocks();
        int length = zArr.length / i;
        if (length < nbDatablocks) {
            throw FormatException.getFormatInstance();
        }
        int length2 = zArr.length % i;
        int[] iArr = new int[length];
        int i2 = 0;
        while (i2 < length) {
            iArr[i2] = readCode(zArr, length2, i);
            i2++;
            length2 += i;
        }
        try {
            new ReedSolomonDecoder(genericGF).decode(iArr, length - nbDatablocks);
            int i3 = (1 << i) - 1;
            int i4 = 0;
            for (int i5 = 0; i5 < nbDatablocks; i5++) {
                int i6 = iArr[i5];
                if (i6 == 0 || i6 == i3) {
                    throw FormatException.getFormatInstance();
                }
                if (i6 == 1 || i6 == i3 - 1) {
                    i4++;
                }
            }
            boolean[] zArr2 = new boolean[(nbDatablocks * i) - i4];
            int i7 = 0;
            for (int i8 = 0; i8 < nbDatablocks; i8++) {
                int i9 = iArr[i8];
                if (i9 == 1 || i9 == i3 - 1) {
                    Arrays.fill(zArr2, i7, (i7 + i) - 1, i9 > 1);
                    i7 = (i - 1) + i7;
                } else {
                    int i10 = i - 1;
                    while (i10 >= 0) {
                        int i11 = i7 + 1;
                        zArr2[i7] = ((1 << i10) & i9) != 0;
                        i10--;
                        i7 = i11;
                    }
                }
            }
            return zArr2;
        } catch (ReedSolomonException e) {
            throw FormatException.getFormatInstance(e);
        }
    }

    private boolean[] extractBits(BitMatrix bitMatrix) {
        boolean zIsCompact = this.ddata.isCompact();
        int nbLayers = this.ddata.getNbLayers();
        int i = (zIsCompact ? 11 : 14) + (nbLayers << 2);
        int[] iArr = new int[i];
        boolean[] zArr = new boolean[totalBitsInLayer(nbLayers, zIsCompact)];
        int i2 = 2;
        if (zIsCompact) {
            for (int i3 = 0; i3 < i; i3++) {
                iArr[i3] = i3;
            }
        } else {
            int i4 = i / 2;
            int i5 = ((((i4 - 1) / 15) * 2) + (i + 1)) / 2;
            for (int i6 = 0; i6 < i4; i6++) {
                iArr[(i4 - i6) - 1] = (i5 - r12) - 1;
                iArr[i4 + i6] = (i6 / 15) + i6 + i5 + 1;
            }
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < nbLayers) {
            int i9 = ((nbLayers - i7) << i2) + (zIsCompact ? 9 : 12);
            int i10 = i7 << 1;
            int i11 = (i - 1) - i10;
            int i12 = 0;
            while (i12 < i9) {
                int i13 = i12 << 1;
                int i14 = 0;
                while (i14 < i2) {
                    int i15 = i10 + i14;
                    int i16 = i10 + i12;
                    zArr[i8 + i13 + i14] = bitMatrix.get(iArr[i15], iArr[i16]);
                    int i17 = iArr[i16];
                    int i18 = i11 - i14;
                    zArr[(i9 * 2) + i8 + i13 + i14] = bitMatrix.get(i17, iArr[i18]);
                    int i19 = i11 - i12;
                    zArr[(i9 * 4) + i8 + i13 + i14] = bitMatrix.get(iArr[i18], iArr[i19]);
                    zArr[(i9 * 6) + i8 + i13 + i14] = bitMatrix.get(iArr[i19], iArr[i15]);
                    i14++;
                    nbLayers = nbLayers;
                    zIsCompact = zIsCompact;
                    i2 = 2;
                }
                i12++;
                i2 = 2;
            }
            i8 += i9 << 3;
            i7++;
            i2 = 2;
        }
        return zArr;
    }

    public static String getCharacter(Table table, int i) {
        int iOrdinal = table.ordinal();
        if (iOrdinal == 0) {
            return UPPER_TABLE[i];
        }
        if (iOrdinal == 1) {
            return LOWER_TABLE[i];
        }
        if (iOrdinal == 2) {
            return MIXED_TABLE[i];
        }
        if (iOrdinal == 3) {
            return DIGIT_TABLE[i];
        }
        if (iOrdinal == 4) {
            return PUNCT_TABLE[i];
        }
        throw new IllegalStateException("Bad table");
    }

    public static String getEncodedData(boolean[] zArr) {
        int length = zArr.length;
        Table table = Table.UPPER;
        StringBuilder sb = new StringBuilder(20);
        Table table2 = table;
        int i = 0;
        while (i < length) {
            if (table != Table.BINARY) {
                int i2 = table == Table.DIGIT ? 4 : 5;
                if (length - i < i2) {
                    break;
                }
                int code = readCode(zArr, i, i2);
                i += i2;
                String character = getCharacter(table, code);
                if (character.startsWith("CTRL_")) {
                    table2 = getTable(character.charAt(5));
                    if (character.charAt(6) != 'L') {
                        table2 = table;
                        table = table2;
                    }
                } else {
                    sb.append(character);
                }
                table = table2;
            } else {
                if (length - i < 5) {
                    break;
                }
                int code2 = readCode(zArr, i, 5);
                i += 5;
                if (code2 == 0) {
                    if (length - i < 11) {
                        break;
                    }
                    code2 = readCode(zArr, i, 11) + 31;
                    i += 11;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= code2) {
                        break;
                    }
                    if (length - i < 8) {
                        i = length;
                        break;
                    }
                    sb.append((char) readCode(zArr, i, 8));
                    i += 8;
                    i3++;
                }
                table = table2;
            }
        }
        return sb.toString();
    }

    public static Table getTable(char c) {
        return c != 'B' ? c != 'D' ? c != 'P' ? c != 'L' ? c != 'M' ? Table.UPPER : Table.MIXED : Table.LOWER : Table.PUNCT : Table.DIGIT : Table.BINARY;
    }

    public static String highLevelDecode(boolean[] zArr) {
        return getEncodedData(zArr);
    }

    public static byte readByte(boolean[] zArr, int i) {
        int length = zArr.length - i;
        return (byte) (length >= 8 ? readCode(zArr, i, 8) : readCode(zArr, i, length) << (8 - length));
    }

    public static int readCode(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    public static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) throws FormatException {
        this.ddata = aztecDetectorResult;
        boolean[] zArrCorrectBits = correctBits(extractBits(aztecDetectorResult.getBits()));
        DecoderResult decoderResult = new DecoderResult(convertBoolArrayToByteArray(zArrCorrectBits), getEncodedData(zArrCorrectBits), null, null);
        decoderResult.setNumBits(zArrCorrectBits.length);
        return decoderResult;
    }
}
