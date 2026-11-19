package com.journeyapps.barcodescanner;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DefaultDecoderFactory implements DecoderFactory {
    public String characterSet;
    public Collection<BarcodeFormat> decodeFormats;
    public Map<DecodeHintType, ?> hints;
    public boolean inverted;

    public DefaultDecoderFactory() {
    }

    @Override // com.journeyapps.barcodescanner.DecoderFactory
    public Decoder createDecoder(Map<DecodeHintType, ?> map) {
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        enumMap.putAll(map);
        Map<DecodeHintType, ?> map2 = this.hints;
        if (map2 != null) {
            enumMap.putAll(map2);
        }
        Collection<BarcodeFormat> collection = this.decodeFormats;
        if (collection != null) {
            enumMap.put((EnumMap) DecodeHintType.POSSIBLE_FORMATS, (DecodeHintType) collection);
        }
        String str = this.characterSet;
        if (str != null) {
            enumMap.put((EnumMap) DecodeHintType.CHARACTER_SET, (DecodeHintType) str);
        }
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        multiFormatReader.setHints(enumMap);
        return this.inverted ? new InvertedDecoder(multiFormatReader) : new Decoder(multiFormatReader);
    }

    public DefaultDecoderFactory(Collection<BarcodeFormat> collection, Map<DecodeHintType, ?> map, String str, boolean z) {
        this.decodeFormats = collection;
        this.hints = map;
        this.characterSet = str;
        this.inverted = z;
    }
}
