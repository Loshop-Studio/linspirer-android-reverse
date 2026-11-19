package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONPObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.huawei.hem.CompilerOutline;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public class JSONPDeserializer implements ObjectDeserializer {
    public static final JSONPDeserializer instance = new JSONPDeserializer();

    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.alibaba.fastjson.JSONPObject] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        int i;
        JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.getLexer();
        String strScanSymbolUnQuoted = jSONLexerBase.scanSymbolUnQuoted(defaultJSONParser.getSymbolTable());
        jSONLexerBase.nextToken();
        int i2 = jSONLexerBase.token();
        if (i2 == 25) {
            String strScanSymbolUnQuoted2 = jSONLexerBase.scanSymbolUnQuoted(defaultJSONParser.getSymbolTable());
            strScanSymbolUnQuoted = CompilerOutline.m1760e(strScanSymbolUnQuoted, ".") + strScanSymbolUnQuoted2;
            jSONLexerBase.nextToken();
            i2 = jSONLexerBase.token();
        }
        ?? r1 = (T) new JSONPObject(strScanSymbolUnQuoted);
        if (i2 != 10) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("illegal jsonp : ");
            sbM1765j.append(jSONLexerBase.info());
            throw new JSONException(sbM1765j.toString());
        }
        jSONLexerBase.nextToken();
        while (true) {
            r1.addParameter(defaultJSONParser.parse());
            i = jSONLexerBase.token();
            if (i != 16) {
                break;
            }
            jSONLexerBase.nextToken();
        }
        if (i != 11) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("illegal jsonp : ");
            sbM1765j2.append(jSONLexerBase.info());
            throw new JSONException(sbM1765j2.toString());
        }
        jSONLexerBase.nextToken();
        if (jSONLexerBase.token() == 24) {
            jSONLexerBase.nextToken();
        }
        return r1;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 0;
    }
}
