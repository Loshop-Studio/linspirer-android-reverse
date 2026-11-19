package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.huawei.hem.C0948f6;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    public static final Set<Class<?>> primitiveClasses = new HashSet();
    public String[] autoTypeAccept;
    public boolean autoTypeEnable;
    public ParserConfig config;
    public ParseContext context;
    public ParseContext[] contextArray;
    public int contextArrayIndex;
    public DateFormat dateFormat;
    public String dateFormatPattern;
    public List<ExtraProcessor> extraProcessors;
    public List<ExtraTypeProvider> extraTypeProviders;
    public FieldTypeResolver fieldTypeResolver;
    public final Object input;
    public transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    public int objectKeyLevel;
    public int resolveStatus;
    public List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    static {
        primitiveClasses.addAll(Arrays.asList(Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class));
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    private void addContext(ParseContext parseContext) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[(parseContextArr.length * 3) / 2];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i] = parseContext;
    }

    public final void accept(int i) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken();
            return;
        }
        StringBuilder sbM1765j = C0948f6.m1765j("syntax error, expect ");
        sbM1765j.append(JSONToken.name(i));
        sbM1765j.append(", actual ");
        sbM1765j.append(JSONToken.name(jSONLexer.token()));
        throw new JSONException(sbM1765j.toString());
    }

    public void acceptType(String str) {
        JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        if (jSONLexer.token() != 4) {
            throw new JSONException("type not match error");
        }
        if (!str.equals(jSONLexer.stringVal())) {
            throw new JSONException("type not match error");
        }
        jSONLexer.nextToken();
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken();
        }
    }

    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public void checkListResolve(Collection collection) {
        if (this.resolveStatus == 1) {
            if (!(collection instanceof List)) {
                ResolveTask lastResolveTask = getLastResolveTask();
                lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(collection);
                lastResolveTask.ownerContext = this.context;
                setResolveStatus(0);
                return;
            }
            int size = collection.size() - 1;
            ResolveTask lastResolveTask2 = getLastResolveTask();
            lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(this, (List) collection, size);
            lastResolveTask2.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public void checkMapResolve(Map map, Object obj) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(Feature.AutoCloseSource) && jSONLexer.token() != 20) {
                throw new JSONException("not close json text, token : " + JSONToken.name(jSONLexer.token()));
            }
        } finally {
            jSONLexer.close();
        }
    }

    public void config(Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public ParseContext getContext() {
        return this.context;
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public String getInput() {
        Object obj = this.input;
        return obj instanceof char[] ? new String((char[]) this.input) : obj.toString();
    }

    public ResolveTask getLastResolveTask() {
        return this.resolveTaskList.get(r0.size() - 1);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public Object getObject(String str) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (str.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public ParseContext getOwnerContext() {
        return this.context.parent;
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public void handleResovleTask(Object obj) {
        Object objEval;
        ParseContext parseContext;
        FieldInfo fieldInfo;
        List<ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ResolveTask resolveTask = this.resolveTaskList.get(i);
            String str = resolveTask.referenceValue;
            ParseContext parseContext2 = resolveTask.ownerContext;
            Object obj2 = parseContext2 != null ? parseContext2.object : null;
            if (str.startsWith("$")) {
                objEval = getObject(str);
                if (objEval == null) {
                    try {
                        JSONPath jSONPath = new JSONPath(str, SerializeConfig.getGlobalInstance(), this.config, true);
                        if (jSONPath.isRef()) {
                            objEval = jSONPath.eval(obj);
                        }
                    } catch (JSONPathException unused) {
                    }
                }
            } else {
                objEval = resolveTask.context.object;
            }
            FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                if (objEval != null && objEval.getClass() == JSONObject.class && (fieldInfo = fieldDeserializer.fieldInfo) != null && !Map.class.isAssignableFrom(fieldInfo.fieldClass)) {
                    Object obj3 = this.contextArray[0].object;
                    JSONPath jSONPathCompile = JSONPath.compile(str);
                    if (jSONPathCompile.isRef()) {
                        objEval = jSONPathCompile.eval(obj3);
                    }
                }
                if (fieldDeserializer.getOwnerClass() != null && !fieldDeserializer.getOwnerClass().isInstance(obj2) && (parseContext = resolveTask.ownerContext.parent) != null) {
                    while (true) {
                        if (parseContext == null) {
                            break;
                        }
                        if (fieldDeserializer.getOwnerClass().isInstance(parseContext.object)) {
                            obj2 = parseContext.object;
                            break;
                        }
                        parseContext = parseContext.parent;
                    }
                }
                fieldDeserializer.setValue(obj2, objEval);
            }
        }
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public Object parse() {
        return parse(null);
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray((Class<?>) cls, (Collection) arrayList);
        return arrayList;
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new JSONException("not support type " + type);
        }
        Type type2 = actualTypeArguments[0];
        if (type2 instanceof Class) {
            ArrayList arrayList = new ArrayList();
            parseArray((Class<?>) type2, (Collection) arrayList);
            return arrayList;
        }
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type2;
            Type type3 = wildcardType.getUpperBounds()[0];
            if (!Object.class.equals(type3)) {
                ArrayList arrayList2 = new ArrayList();
                parseArray((Class<?>) type3, (Collection) arrayList2);
                return arrayList2;
            }
            if (wildcardType.getLowerBounds().length == 0) {
                return parse();
            }
            throw new JSONException("not support type : " + type);
        }
        if (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length != 1) {
                throw new JSONException("not support : " + typeVariable);
            }
            Type type4 = bounds[0];
            if (type4 instanceof Class) {
                ArrayList arrayList3 = new ArrayList();
                parseArray((Class<?>) type4, (Collection) arrayList3);
                return arrayList3;
            }
        }
        if (type2 instanceof ParameterizedType) {
            ArrayList arrayList4 = new ArrayList();
            parseArray((ParameterizedType) type2, arrayList4);
            return arrayList4;
        }
        throw new JSONException("TODO : " + type);
    }

    public void parseExtra(Object obj, String str) {
        this.lexer.nextTokenWithColon();
        List<ExtraTypeProvider> list = this.extraTypeProviders;
        Type extraType = null;
        if (list != null) {
            Iterator<ExtraTypeProvider> it = list.iterator();
            while (it.hasNext()) {
                extraType = it.next().getExtraType(obj, str);
            }
        }
        Object object = extraType == null ? parse() : parseObject(extraType);
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, object);
            return;
        }
        List<ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            Iterator<ExtraProcessor> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().processExtra(obj, str, object);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    public Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        String strStringVal = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return strStringVal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x0291, code lost:
    
        r1.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x029c, code lost:
    
        if (r1.token() != 13) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x029e, code lost:
    
        r1.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02a9, code lost:
    
        if ((r13.config.getDeserializer(r7) instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02ab, code lost:
    
        r8 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r14, (java.lang.Class<java.lang.Object>) r7, r13.config);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02b1, code lost:
    
        if (r8 != null) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02b5, code lost:
    
        if (r7 != java.lang.Cloneable.class) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02b7, code lost:
    
        r8 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02c3, code lost:
    
        if ("java.util.Collections$EmptyMap".equals(r6) == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02c5, code lost:
    
        r8 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02d0, code lost:
    
        if ("java.util.Collections$UnmodifiableMap".equals(r6) == false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02d2, code lost:
    
        r8 = java.util.Collections.unmodifiableMap(new java.util.HashMap());
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02dc, code lost:
    
        r8 = r7.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02e3, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02e4, code lost:
    
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02ec, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02ed, code lost:
    
        setResolveStatus(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02f3, code lost:
    
        if (r13.context == null) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02f5, code lost:
    
        if (r15 == null) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02f9, code lost:
    
        if ((r15 instanceof java.lang.Integer) != false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0301, code lost:
    
        if ((r13.context.fieldName instanceof java.lang.Integer) != false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0303, code lost:
    
        popContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x030a, code lost:
    
        if (r14.size() <= 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x030c, code lost:
    
        r14 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r14, (java.lang.Class<java.lang.Object>) r7, r13.config);
        setResolveStatus(0);
        parseObject(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x031c, code lost:
    
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x031d, code lost:
    
        r14 = r13.config.getDeserializer(r7);
        r0 = r14.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x032d, code lost:
    
        if (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class.isAssignableFrom(r0) == false) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0331, code lost:
    
        if (r0 == com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0335, code lost:
    
        if (r0 == com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.class) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0337, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x033e, code lost:
    
        if ((r14 instanceof com.alibaba.fastjson.parser.deserializer.MapDeserializer) == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0340, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x034b, code lost:
    
        return r14.deserialze(r13, r7, r15);
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0208 A[Catch: all -> 0x0688, TryCatch #1 {all -> 0x0688, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0344, B:188:0x033c, B:190:0x0340, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0354, B:200:0x035a, B:202:0x0362, B:204:0x036c, B:206:0x037d, B:207:0x0382, B:209:0x038a, B:211:0x038e, B:213:0x0396, B:216:0x039c, B:218:0x03a0, B:240:0x0403, B:242:0x040b, B:245:0x0414, B:246:0x042e, B:219:0x03a5, B:221:0x03ad, B:223:0x03b1, B:224:0x03b4, B:225:0x03c0, B:228:0x03c9, B:230:0x03cd, B:231:0x03d0, B:233:0x03d4, B:234:0x03d7, B:235:0x03e3, B:237:0x03ed, B:239:0x03fa, B:247:0x042f, B:248:0x044d, B:250:0x0450, B:252:0x0454, B:254:0x045a, B:256:0x0460, B:257:0x0463, B:261:0x046b, B:267:0x047b, B:269:0x048a, B:271:0x0495, B:272:0x049d, B:273:0x04a0, B:285:0x04cc, B:287:0x04d7, B:290:0x04e0, B:293:0x04f0, B:294:0x0510, B:280:0x04b0, B:282:0x04ba, B:284:0x04c9, B:283:0x04bf, B:297:0x0515, B:299:0x051f, B:301:0x0524, B:302:0x0527, B:304:0x0532, B:305:0x0536, B:307:0x0541, B:310:0x0548, B:313:0x0552, B:314:0x0557, B:317:0x055c, B:319:0x0561, B:323:0x056c, B:325:0x0574, B:327:0x0589, B:331:0x05a8, B:333:0x05b0, B:336:0x05b6, B:338:0x05bc, B:340:0x05c4, B:343:0x05d4, B:346:0x05dc, B:348:0x05e0, B:349:0x05e7, B:351:0x05ec, B:352:0x05ef, B:354:0x05f7, B:357:0x0601, B:360:0x060b, B:361:0x0610, B:362:0x0615, B:363:0x062f, B:328:0x0594, B:329:0x059b, B:364:0x0630, B:366:0x0642, B:369:0x0649, B:372:0x0653, B:373:0x0673, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:374:0x0674, B:375:0x067b, B:376:0x067c, B:377:0x0681, B:378:0x0682, B:379:0x0687), top: B:385:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x028a A[Catch: all -> 0x0688, TryCatch #1 {all -> 0x0688, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0344, B:188:0x033c, B:190:0x0340, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0354, B:200:0x035a, B:202:0x0362, B:204:0x036c, B:206:0x037d, B:207:0x0382, B:209:0x038a, B:211:0x038e, B:213:0x0396, B:216:0x039c, B:218:0x03a0, B:240:0x0403, B:242:0x040b, B:245:0x0414, B:246:0x042e, B:219:0x03a5, B:221:0x03ad, B:223:0x03b1, B:224:0x03b4, B:225:0x03c0, B:228:0x03c9, B:230:0x03cd, B:231:0x03d0, B:233:0x03d4, B:234:0x03d7, B:235:0x03e3, B:237:0x03ed, B:239:0x03fa, B:247:0x042f, B:248:0x044d, B:250:0x0450, B:252:0x0454, B:254:0x045a, B:256:0x0460, B:257:0x0463, B:261:0x046b, B:267:0x047b, B:269:0x048a, B:271:0x0495, B:272:0x049d, B:273:0x04a0, B:285:0x04cc, B:287:0x04d7, B:290:0x04e0, B:293:0x04f0, B:294:0x0510, B:280:0x04b0, B:282:0x04ba, B:284:0x04c9, B:283:0x04bf, B:297:0x0515, B:299:0x051f, B:301:0x0524, B:302:0x0527, B:304:0x0532, B:305:0x0536, B:307:0x0541, B:310:0x0548, B:313:0x0552, B:314:0x0557, B:317:0x055c, B:319:0x0561, B:323:0x056c, B:325:0x0574, B:327:0x0589, B:331:0x05a8, B:333:0x05b0, B:336:0x05b6, B:338:0x05bc, B:340:0x05c4, B:343:0x05d4, B:346:0x05dc, B:348:0x05e0, B:349:0x05e7, B:351:0x05ec, B:352:0x05ef, B:354:0x05f7, B:357:0x0601, B:360:0x060b, B:361:0x0610, B:362:0x0615, B:363:0x062f, B:328:0x0594, B:329:0x059b, B:364:0x0630, B:366:0x0642, B:369:0x0649, B:372:0x0653, B:373:0x0673, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:374:0x0674, B:375:0x067b, B:376:0x067c, B:377:0x0681, B:378:0x0682, B:379:0x0687), top: B:385:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0450 A[Catch: all -> 0x0688, TryCatch #1 {all -> 0x0688, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0344, B:188:0x033c, B:190:0x0340, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0354, B:200:0x035a, B:202:0x0362, B:204:0x036c, B:206:0x037d, B:207:0x0382, B:209:0x038a, B:211:0x038e, B:213:0x0396, B:216:0x039c, B:218:0x03a0, B:240:0x0403, B:242:0x040b, B:245:0x0414, B:246:0x042e, B:219:0x03a5, B:221:0x03ad, B:223:0x03b1, B:224:0x03b4, B:225:0x03c0, B:228:0x03c9, B:230:0x03cd, B:231:0x03d0, B:233:0x03d4, B:234:0x03d7, B:235:0x03e3, B:237:0x03ed, B:239:0x03fa, B:247:0x042f, B:248:0x044d, B:250:0x0450, B:252:0x0454, B:254:0x045a, B:256:0x0460, B:257:0x0463, B:261:0x046b, B:267:0x047b, B:269:0x048a, B:271:0x0495, B:272:0x049d, B:273:0x04a0, B:285:0x04cc, B:287:0x04d7, B:290:0x04e0, B:293:0x04f0, B:294:0x0510, B:280:0x04b0, B:282:0x04ba, B:284:0x04c9, B:283:0x04bf, B:297:0x0515, B:299:0x051f, B:301:0x0524, B:302:0x0527, B:304:0x0532, B:305:0x0536, B:307:0x0541, B:310:0x0548, B:313:0x0552, B:314:0x0557, B:317:0x055c, B:319:0x0561, B:323:0x056c, B:325:0x0574, B:327:0x0589, B:331:0x05a8, B:333:0x05b0, B:336:0x05b6, B:338:0x05bc, B:340:0x05c4, B:343:0x05d4, B:346:0x05dc, B:348:0x05e0, B:349:0x05e7, B:351:0x05ec, B:352:0x05ef, B:354:0x05f7, B:357:0x0601, B:360:0x060b, B:361:0x0610, B:362:0x0615, B:363:0x062f, B:328:0x0594, B:329:0x059b, B:364:0x0630, B:366:0x0642, B:369:0x0649, B:372:0x0653, B:373:0x0673, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:374:0x0674, B:375:0x067b, B:376:0x067c, B:377:0x0681, B:378:0x0682, B:379:0x0687), top: B:385:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04d7 A[Catch: all -> 0x0688, TryCatch #1 {all -> 0x0688, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0344, B:188:0x033c, B:190:0x0340, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0354, B:200:0x035a, B:202:0x0362, B:204:0x036c, B:206:0x037d, B:207:0x0382, B:209:0x038a, B:211:0x038e, B:213:0x0396, B:216:0x039c, B:218:0x03a0, B:240:0x0403, B:242:0x040b, B:245:0x0414, B:246:0x042e, B:219:0x03a5, B:221:0x03ad, B:223:0x03b1, B:224:0x03b4, B:225:0x03c0, B:228:0x03c9, B:230:0x03cd, B:231:0x03d0, B:233:0x03d4, B:234:0x03d7, B:235:0x03e3, B:237:0x03ed, B:239:0x03fa, B:247:0x042f, B:248:0x044d, B:250:0x0450, B:252:0x0454, B:254:0x045a, B:256:0x0460, B:257:0x0463, B:261:0x046b, B:267:0x047b, B:269:0x048a, B:271:0x0495, B:272:0x049d, B:273:0x04a0, B:285:0x04cc, B:287:0x04d7, B:290:0x04e0, B:293:0x04f0, B:294:0x0510, B:280:0x04b0, B:282:0x04ba, B:284:0x04c9, B:283:0x04bf, B:297:0x0515, B:299:0x051f, B:301:0x0524, B:302:0x0527, B:304:0x0532, B:305:0x0536, B:307:0x0541, B:310:0x0548, B:313:0x0552, B:314:0x0557, B:317:0x055c, B:319:0x0561, B:323:0x056c, B:325:0x0574, B:327:0x0589, B:331:0x05a8, B:333:0x05b0, B:336:0x05b6, B:338:0x05bc, B:340:0x05c4, B:343:0x05d4, B:346:0x05dc, B:348:0x05e0, B:349:0x05e7, B:351:0x05ec, B:352:0x05ef, B:354:0x05f7, B:357:0x0601, B:360:0x060b, B:361:0x0610, B:362:0x0615, B:363:0x062f, B:328:0x0594, B:329:0x059b, B:364:0x0630, B:366:0x0642, B:369:0x0649, B:372:0x0653, B:373:0x0673, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:374:0x0674, B:375:0x067b, B:376:0x067c, B:377:0x0681, B:378:0x0682, B:379:0x0687), top: B:385:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x05d0  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x05d4 A[Catch: all -> 0x0688, TryCatch #1 {all -> 0x0688, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0344, B:188:0x033c, B:190:0x0340, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0354, B:200:0x035a, B:202:0x0362, B:204:0x036c, B:206:0x037d, B:207:0x0382, B:209:0x038a, B:211:0x038e, B:213:0x0396, B:216:0x039c, B:218:0x03a0, B:240:0x0403, B:242:0x040b, B:245:0x0414, B:246:0x042e, B:219:0x03a5, B:221:0x03ad, B:223:0x03b1, B:224:0x03b4, B:225:0x03c0, B:228:0x03c9, B:230:0x03cd, B:231:0x03d0, B:233:0x03d4, B:234:0x03d7, B:235:0x03e3, B:237:0x03ed, B:239:0x03fa, B:247:0x042f, B:248:0x044d, B:250:0x0450, B:252:0x0454, B:254:0x045a, B:256:0x0460, B:257:0x0463, B:261:0x046b, B:267:0x047b, B:269:0x048a, B:271:0x0495, B:272:0x049d, B:273:0x04a0, B:285:0x04cc, B:287:0x04d7, B:290:0x04e0, B:293:0x04f0, B:294:0x0510, B:280:0x04b0, B:282:0x04ba, B:284:0x04c9, B:283:0x04bf, B:297:0x0515, B:299:0x051f, B:301:0x0524, B:302:0x0527, B:304:0x0532, B:305:0x0536, B:307:0x0541, B:310:0x0548, B:313:0x0552, B:314:0x0557, B:317:0x055c, B:319:0x0561, B:323:0x056c, B:325:0x0574, B:327:0x0589, B:331:0x05a8, B:333:0x05b0, B:336:0x05b6, B:338:0x05bc, B:340:0x05c4, B:343:0x05d4, B:346:0x05dc, B:348:0x05e0, B:349:0x05e7, B:351:0x05ec, B:352:0x05ef, B:354:0x05f7, B:357:0x0601, B:360:0x060b, B:361:0x0610, B:362:0x0615, B:363:0x062f, B:328:0x0594, B:329:0x059b, B:364:0x0630, B:366:0x0642, B:369:0x0649, B:372:0x0653, B:373:0x0673, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:374:0x0674, B:375:0x067b, B:376:0x067c, B:377:0x0681, B:378:0x0682, B:379:0x0687), top: B:385:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x05e0 A[Catch: all -> 0x0688, TryCatch #1 {all -> 0x0688, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0344, B:188:0x033c, B:190:0x0340, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0354, B:200:0x035a, B:202:0x0362, B:204:0x036c, B:206:0x037d, B:207:0x0382, B:209:0x038a, B:211:0x038e, B:213:0x0396, B:216:0x039c, B:218:0x03a0, B:240:0x0403, B:242:0x040b, B:245:0x0414, B:246:0x042e, B:219:0x03a5, B:221:0x03ad, B:223:0x03b1, B:224:0x03b4, B:225:0x03c0, B:228:0x03c9, B:230:0x03cd, B:231:0x03d0, B:233:0x03d4, B:234:0x03d7, B:235:0x03e3, B:237:0x03ed, B:239:0x03fa, B:247:0x042f, B:248:0x044d, B:250:0x0450, B:252:0x0454, B:254:0x045a, B:256:0x0460, B:257:0x0463, B:261:0x046b, B:267:0x047b, B:269:0x048a, B:271:0x0495, B:272:0x049d, B:273:0x04a0, B:285:0x04cc, B:287:0x04d7, B:290:0x04e0, B:293:0x04f0, B:294:0x0510, B:280:0x04b0, B:282:0x04ba, B:284:0x04c9, B:283:0x04bf, B:297:0x0515, B:299:0x051f, B:301:0x0524, B:302:0x0527, B:304:0x0532, B:305:0x0536, B:307:0x0541, B:310:0x0548, B:313:0x0552, B:314:0x0557, B:317:0x055c, B:319:0x0561, B:323:0x056c, B:325:0x0574, B:327:0x0589, B:331:0x05a8, B:333:0x05b0, B:336:0x05b6, B:338:0x05bc, B:340:0x05c4, B:343:0x05d4, B:346:0x05dc, B:348:0x05e0, B:349:0x05e7, B:351:0x05ec, B:352:0x05ef, B:354:0x05f7, B:357:0x0601, B:360:0x060b, B:361:0x0610, B:362:0x0615, B:363:0x062f, B:328:0x0594, B:329:0x059b, B:364:0x0630, B:366:0x0642, B:369:0x0649, B:372:0x0653, B:373:0x0673, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:374:0x0674, B:375:0x067b, B:376:0x067c, B:377:0x0681, B:378:0x0682, B:379:0x0687), top: B:385:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x05ec A[Catch: all -> 0x0688, TryCatch #1 {all -> 0x0688, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0344, B:188:0x033c, B:190:0x0340, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0354, B:200:0x035a, B:202:0x0362, B:204:0x036c, B:206:0x037d, B:207:0x0382, B:209:0x038a, B:211:0x038e, B:213:0x0396, B:216:0x039c, B:218:0x03a0, B:240:0x0403, B:242:0x040b, B:245:0x0414, B:246:0x042e, B:219:0x03a5, B:221:0x03ad, B:223:0x03b1, B:224:0x03b4, B:225:0x03c0, B:228:0x03c9, B:230:0x03cd, B:231:0x03d0, B:233:0x03d4, B:234:0x03d7, B:235:0x03e3, B:237:0x03ed, B:239:0x03fa, B:247:0x042f, B:248:0x044d, B:250:0x0450, B:252:0x0454, B:254:0x045a, B:256:0x0460, B:257:0x0463, B:261:0x046b, B:267:0x047b, B:269:0x048a, B:271:0x0495, B:272:0x049d, B:273:0x04a0, B:285:0x04cc, B:287:0x04d7, B:290:0x04e0, B:293:0x04f0, B:294:0x0510, B:280:0x04b0, B:282:0x04ba, B:284:0x04c9, B:283:0x04bf, B:297:0x0515, B:299:0x051f, B:301:0x0524, B:302:0x0527, B:304:0x0532, B:305:0x0536, B:307:0x0541, B:310:0x0548, B:313:0x0552, B:314:0x0557, B:317:0x055c, B:319:0x0561, B:323:0x056c, B:325:0x0574, B:327:0x0589, B:331:0x05a8, B:333:0x05b0, B:336:0x05b6, B:338:0x05bc, B:340:0x05c4, B:343:0x05d4, B:346:0x05dc, B:348:0x05e0, B:349:0x05e7, B:351:0x05ec, B:352:0x05ef, B:354:0x05f7, B:357:0x0601, B:360:0x060b, B:361:0x0610, B:362:0x0615, B:363:0x062f, B:328:0x0594, B:329:0x059b, B:364:0x0630, B:366:0x0642, B:369:0x0649, B:372:0x0653, B:373:0x0673, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:374:0x0674, B:375:0x067b, B:376:0x067c, B:377:0x0681, B:378:0x0682, B:379:0x0687), top: B:385:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0601 A[Catch: all -> 0x0688, TRY_ENTER, TryCatch #1 {all -> 0x0688, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0344, B:188:0x033c, B:190:0x0340, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0354, B:200:0x035a, B:202:0x0362, B:204:0x036c, B:206:0x037d, B:207:0x0382, B:209:0x038a, B:211:0x038e, B:213:0x0396, B:216:0x039c, B:218:0x03a0, B:240:0x0403, B:242:0x040b, B:245:0x0414, B:246:0x042e, B:219:0x03a5, B:221:0x03ad, B:223:0x03b1, B:224:0x03b4, B:225:0x03c0, B:228:0x03c9, B:230:0x03cd, B:231:0x03d0, B:233:0x03d4, B:234:0x03d7, B:235:0x03e3, B:237:0x03ed, B:239:0x03fa, B:247:0x042f, B:248:0x044d, B:250:0x0450, B:252:0x0454, B:254:0x045a, B:256:0x0460, B:257:0x0463, B:261:0x046b, B:267:0x047b, B:269:0x048a, B:271:0x0495, B:272:0x049d, B:273:0x04a0, B:285:0x04cc, B:287:0x04d7, B:290:0x04e0, B:293:0x04f0, B:294:0x0510, B:280:0x04b0, B:282:0x04ba, B:284:0x04c9, B:283:0x04bf, B:297:0x0515, B:299:0x051f, B:301:0x0524, B:302:0x0527, B:304:0x0532, B:305:0x0536, B:307:0x0541, B:310:0x0548, B:313:0x0552, B:314:0x0557, B:317:0x055c, B:319:0x0561, B:323:0x056c, B:325:0x0574, B:327:0x0589, B:331:0x05a8, B:333:0x05b0, B:336:0x05b6, B:338:0x05bc, B:340:0x05c4, B:343:0x05d4, B:346:0x05dc, B:348:0x05e0, B:349:0x05e7, B:351:0x05ec, B:352:0x05ef, B:354:0x05f7, B:357:0x0601, B:360:0x060b, B:361:0x0610, B:362:0x0615, B:363:0x062f, B:328:0x0594, B:329:0x059b, B:364:0x0630, B:366:0x0642, B:369:0x0649, B:372:0x0653, B:373:0x0673, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:374:0x0674, B:375:0x067b, B:376:0x067c, B:377:0x0681, B:378:0x0682, B:379:0x0687), top: B:385:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0291 A[EDGE_INSN: B:400:0x0291->B:146:0x0291 BREAK  A[LOOP:0: B:29:0x0076->B:427:0x0076], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:410:0x04dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x047b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:420:0x05f7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object parseObject(java.util.Map r14, java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 1677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseObject(java.util.Map, java.lang.Object):java.lang.Object");
    }

    public void popContext() {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = this.context.parent;
        int i = this.contextArrayIndex;
        if (i <= 0) {
            return;
        }
        int i2 = i - 1;
        this.contextArrayIndex = i2;
        this.contextArray[i2] = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object resolveReference(java.lang.String r5) {
        /*
            r4 = this;
            com.alibaba.fastjson.parser.ParseContext[] r0 = r4.contextArray
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r0 = 0
        L7:
            com.alibaba.fastjson.parser.ParseContext[] r2 = r4.contextArray
            int r3 = r2.length
            if (r0 >= r3) goto L22
            int r3 = r4.contextArrayIndex
            if (r0 >= r3) goto L22
            r2 = r2[r0]
            java.lang.String r3 = r2.toString()
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L1f
            java.lang.Object r5 = r2.object
            return r5
        L1f:
            int r0 = r0 + 1
            goto L7
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.resolveReference(java.lang.String):java.lang.Object");
    }

    public void setConfig(ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public void setContext(ParseContext parseContext) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = parseContext;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        setDateFormat(dateFormat);
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setResolveStatus(int i) {
        this.resolveStatus = i;
    }

    public void throwException(int i) {
        StringBuilder sbM1765j = C0948f6.m1765j("syntax error, expect ");
        sbM1765j.append(JSONToken.name(i));
        sbM1765j.append(", actual ");
        sbM1765j.append(JSONToken.name(this.lexer.token()));
        throw new JSONException(sbM1765j.toString());
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this(str, new JSONScanner(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public Object parse(Object obj) {
        JSONLexer jSONLexer = this.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            Number numberIntegerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return numberIntegerValue;
        }
        if (i == 3) {
            Number numberDecimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return numberDecimalValue;
        }
        if (i == 4) {
            String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                JSONScanner jSONScanner = new JSONScanner(strStringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                } finally {
                    jSONScanner.close();
                }
            }
            return strStringVal;
        }
        if (i == 12) {
            return parseObject(isEnabled(Feature.UseNativeJavaObject) ? jSONLexer.isEnabled(Feature.OrderedField) ? new HashMap() : new LinkedHashMap() : new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), obj);
        }
        if (i == 14) {
            Collection arrayList = isEnabled(Feature.UseNativeJavaObject) ? new ArrayList() : new JSONArray();
            parseArray(arrayList, obj);
            return jSONLexer.isEnabled(Feature.UseObjectArray) ? arrayList.toArray() : arrayList;
        }
        if (i == 18) {
            if ("NaN".equals(jSONLexer.stringVal())) {
                jSONLexer.nextToken();
                return null;
            }
            StringBuilder sbM1765j = C0948f6.m1765j("syntax error, ");
            sbM1765j.append(jSONLexer.info());
            throw new JSONException(sbM1765j.toString());
        }
        if (i == 26) {
            byte[] bArrBytesValue = jSONLexer.bytesValue();
            jSONLexer.nextToken();
            return bArrBytesValue;
        }
        switch (i) {
            case 6:
                jSONLexer.nextToken();
                return Boolean.TRUE;
            case 7:
                jSONLexer.nextToken();
                return Boolean.FALSE;
            case 8:
                jSONLexer.nextToken();
                return null;
            case 9:
                jSONLexer.nextToken(18);
                if (jSONLexer.token() != 18) {
                    throw new JSONException("syntax error");
                }
                jSONLexer.nextToken(10);
                accept(10);
                long jLongValue = jSONLexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new Date(jLongValue);
            default:
                switch (i) {
                    case 20:
                        if (jSONLexer.isBlankInput()) {
                            return null;
                        }
                        StringBuilder sbM1765j2 = C0948f6.m1765j("unterminated json string, ");
                        sbM1765j2.append(jSONLexer.info());
                        throw new JSONException(sbM1765j2.toString());
                    case 21:
                        jSONLexer.nextToken();
                        HashSet hashSet = new HashSet();
                        parseArray(hashSet, obj);
                        return hashSet;
                    case 22:
                        jSONLexer.nextToken();
                        TreeSet treeSet = new TreeSet();
                        parseArray(treeSet, obj);
                        return treeSet;
                    case 23:
                        jSONLexer.nextToken();
                        return null;
                    default:
                        StringBuilder sbM1765j3 = C0948f6.m1765j("syntax error, ");
                        sbM1765j3.append(jSONLexer.info());
                        throw new JSONException(sbM1765j3.toString());
                }
        }
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i) {
        this(str, new JSONScanner(str, i), parserConfig);
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public ParseContext setContext(Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public DefaultJSONParser(char[] cArr, int i, ParserConfig parserConfig, int i2) {
        this(cArr, new JSONScanner(cArr, i, i2), parserConfig);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.getGlobalInstance());
    }

    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer deserializer;
        int i = this.lexer.token();
        if (i == 21 || i == 22) {
            this.lexer.nextToken();
            i = this.lexer.token();
        }
        if (i == 14) {
            if (Integer.TYPE != type) {
                if (String.class == type) {
                    deserializer = StringCodec.instance;
                    this.lexer.nextToken(4);
                } else {
                    deserializer = this.config.getDeserializer(type);
                    this.lexer.nextToken(deserializer.getFastMatchToken());
                }
            } else {
                deserializer = IntegerCodec.instance;
                this.lexer.nextToken(2);
            }
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i2 = 0;
            while (true) {
                try {
                    if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (this.lexer.token() == 16) {
                            this.lexer.nextToken();
                        }
                    }
                    if (this.lexer.token() == 15) {
                        setContext(parseContext);
                        this.lexer.nextToken(16);
                        return;
                    }
                    Object objDeserialze = null;
                    if (Integer.TYPE != type) {
                        if (String.class == type) {
                            if (this.lexer.token() == 4) {
                                objDeserialze = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                Object obj2 = parse();
                                if (obj2 != null) {
                                    objDeserialze = obj2.toString();
                                }
                            }
                            collection.add(objDeserialze);
                        } else {
                            if (this.lexer.token() == 8) {
                                this.lexer.nextToken();
                            } else {
                                objDeserialze = deserializer.deserialze(this, type, Integer.valueOf(i2));
                            }
                            collection.add(objDeserialze);
                            checkListResolve(collection);
                        }
                    } else {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    }
                    if (this.lexer.token() == 16) {
                        this.lexer.nextToken(deserializer.getFastMatchToken());
                    }
                    i2++;
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("field " + obj + " expect '[', but " + JSONToken.name(i) + ", " + this.lexer.info());
        }
    }

    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        ParseContext parseContext2 = new ParseContext(parseContext, obj, obj2);
        this.context = parseContext2;
        addContext(parseContext2);
        return this.context;
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this((Object) null, jSONLexer, parserConfig);
    }

    public final void accept(int i, int i2) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken(i2);
        } else {
            throwException(i);
        }
    }

    public DefaultJSONParser(Object obj, JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.objectKeyLevel = 0;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 12;
        } else if (current == '[') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 14;
        } else {
            jSONLexer.nextToken();
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object objCast;
        Class<?> componentType;
        boolean zIsArray;
        Class cls;
        int i = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i2 = 14;
        if (this.lexer.token() == 14) {
            Object[] objArr = new Object[typeArr.length];
            if (typeArr.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token() == 15) {
                    this.lexer.nextToken(16);
                    return new Object[0];
                }
                throw new JSONException("syntax error");
            }
            this.lexer.nextToken(2);
            int i3 = 0;
            while (i3 < typeArr.length) {
                if (this.lexer.token() == i) {
                    this.lexer.nextToken(16);
                    objCast = null;
                } else {
                    Type type = typeArr[i3];
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type == String.class) {
                            if (this.lexer.token() == 4) {
                                objCast = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                objCast = TypeUtils.cast(parse(), type, this.config);
                            }
                        } else {
                            if (i3 == typeArr.length - 1 && (type instanceof Class) && (((cls = (Class) type) != byte[].class && cls != char[].class) || this.lexer.token() != 4)) {
                                zIsArray = cls.isArray();
                                componentType = cls.getComponentType();
                            } else {
                                componentType = null;
                                zIsArray = false;
                            }
                            if (zIsArray && this.lexer.token() != i2) {
                                ArrayList arrayList = new ArrayList();
                                ObjectDeserializer deserializer = this.config.getDeserializer(componentType);
                                int fastMatchToken = deserializer.getFastMatchToken();
                                if (this.lexer.token() != 15) {
                                    while (true) {
                                        arrayList.add(deserializer.deserialze(this, type, null));
                                        if (this.lexer.token() != 16) {
                                            break;
                                        }
                                        this.lexer.nextToken(fastMatchToken);
                                    }
                                    if (this.lexer.token() != 15) {
                                        StringBuilder sbM1765j = C0948f6.m1765j("syntax error :");
                                        sbM1765j.append(JSONToken.name(this.lexer.token()));
                                        throw new JSONException(sbM1765j.toString());
                                    }
                                }
                                objCast = TypeUtils.cast(arrayList, type, this.config);
                            } else {
                                objCast = this.config.getDeserializer(type).deserialze(this, type, Integer.valueOf(i3));
                            }
                        }
                    } else if (this.lexer.token() == 2) {
                        objCast = Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    } else {
                        objCast = TypeUtils.cast(parse(), type, this.config);
                    }
                }
                objArr[i3] = objCast;
                if (this.lexer.token() == 15) {
                    break;
                }
                if (this.lexer.token() == 16) {
                    if (i3 == typeArr.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                    i3++;
                    i = 8;
                    i2 = 14;
                } else {
                    StringBuilder sbM1765j2 = C0948f6.m1765j("syntax error :");
                    sbM1765j2.append(JSONToken.name(this.lexer.token()));
                    throw new JSONException(sbM1765j2.toString());
                }
            }
            if (this.lexer.token() == 15) {
                this.lexer.nextToken(16);
                return objArr;
            }
            throw new JSONException("syntax error");
        }
        StringBuilder sbM1765j3 = C0948f6.m1765j("syntax error : ");
        sbM1765j3.append(this.lexer.tokenName());
        throw new JSONException(sbM1765j3.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x020d, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable, java.lang.Object):java.lang.Object");
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    public final void parseArray(Collection collection, Object obj) {
        Number numberDecimalValue;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 21 || jSONLexer.token() == 22) {
            jSONLexer.nextToken();
        }
        if (jSONLexer.token() == 14) {
            jSONLexer.nextToken(4);
            ParseContext parseContext = this.context;
            if (parseContext != null && parseContext.level > 512) {
                throw new JSONException("array level > 512");
            }
            ParseContext parseContext2 = this.context;
            setContext(collection, obj);
            int i = 0;
            while (true) {
                try {
                    try {
                        if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                            while (jSONLexer.token() == 16) {
                                jSONLexer.nextToken();
                            }
                        }
                        int i2 = jSONLexer.token();
                        Object object = null;
                        object = null;
                        if (i2 == 2) {
                            Number numberIntegerValue = jSONLexer.integerValue();
                            jSONLexer.nextToken(16);
                            object = numberIntegerValue;
                        } else if (i2 == 3) {
                            if (jSONLexer.isEnabled(Feature.UseBigDecimal)) {
                                numberDecimalValue = jSONLexer.decimalValue(true);
                            } else {
                                numberDecimalValue = jSONLexer.decimalValue(false);
                            }
                            object = numberDecimalValue;
                            jSONLexer.nextToken(16);
                        } else if (i2 == 4) {
                            String strStringVal = jSONLexer.stringVal();
                            jSONLexer.nextToken(16);
                            object = strStringVal;
                            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                                JSONScanner jSONScanner = new JSONScanner(strStringVal);
                                Object time = strStringVal;
                                if (jSONScanner.scanISO8601DateIfMatch()) {
                                    time = jSONScanner.getCalendar().getTime();
                                }
                                jSONScanner.close();
                                object = time;
                            }
                        } else if (i2 == 6) {
                            Boolean bool = Boolean.TRUE;
                            jSONLexer.nextToken(16);
                            object = bool;
                        } else if (i2 == 7) {
                            Boolean bool2 = Boolean.FALSE;
                            jSONLexer.nextToken(16);
                            object = bool2;
                        } else if (i2 == 8) {
                            jSONLexer.nextToken(4);
                        } else if (i2 == 12) {
                            object = parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), Integer.valueOf(i));
                        } else {
                            if (i2 == 20) {
                                throw new JSONException("unclosed jsonArray");
                            }
                            if (i2 == 23) {
                                jSONLexer.nextToken(4);
                            } else if (i2 == 14) {
                                JSONArray jSONArray = new JSONArray();
                                parseArray(jSONArray, Integer.valueOf(i));
                                object = jSONArray;
                                if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                    object = jSONArray.toArray();
                                }
                            } else if (i2 != 15) {
                                object = parse();
                            } else {
                                jSONLexer.nextToken(16);
                                return;
                            }
                        }
                        collection.add(object);
                        checkListResolve(collection);
                        if (jSONLexer.token() == 16) {
                            jSONLexer.nextToken(4);
                        }
                        i++;
                    } catch (ClassCastException e) {
                        throw new JSONException("unkown error", e);
                    }
                } finally {
                    setContext(parseContext2);
                }
            }
        } else {
            StringBuilder sbM1765j = C0948f6.m1765j("syntax error, expect [, actual ");
            sbM1765j.append(JSONToken.name(jSONLexer.token()));
            sbM1765j.append(", pos ");
            sbM1765j.append(jSONLexer.pos());
            sbM1765j.append(", fieldName ");
            sbM1765j.append(obj);
            throw new JSONException(sbM1765j.toString());
        }
    }

    public <T> T parseObject(Class<T> cls) {
        return (T) parseObject(cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parseObject(Type type, Object obj) {
        int i = this.lexer.token();
        if (i == 8) {
            this.lexer.nextToken();
            return (T) TypeUtils.optionalEmpty(type);
        }
        if (i == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            }
            if (type == char[].class) {
                String strStringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) strStringVal.toCharArray();
            }
        }
        ObjectDeserializer deserializer = this.config.getDeserializer(type);
        try {
            if (deserializer.getClass() == JavaBeanDeserializer.class) {
                if (this.lexer.token() != 12 && this.lexer.token() != 14) {
                    throw new JSONException("syntax error,expect start with { or [,but actually start with " + this.lexer.tokenName());
                }
                return (T) ((JavaBeanDeserializer) deserializer).deserialze(this, type, obj, 0);
            }
            return (T) deserializer.deserialze(this, type, obj);
        } catch (JSONException e) {
            throw e;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }

    public void parseObject(Object obj) {
        Object objDeserialze;
        Class<?> cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() != 12 && this.lexer.token() != 16) {
            StringBuilder sbM1765j = C0948f6.m1765j("syntax error, expect {, actual ");
            sbM1765j.append(this.lexer.tokenName());
            throw new JSONException(sbM1765j.toString());
        }
        while (true) {
            String strScanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (strScanSymbol == null) {
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token() != 16 || !this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                }
            }
            FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(strScanSymbol) : null;
            if (fieldDeserializer == null) {
                if (this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    this.lexer.nextTokenWithColon();
                    parse();
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    StringBuilder sbM1765j2 = C0948f6.m1765j("setter not found, class ");
                    sbM1765j2.append(cls.getName());
                    sbM1765j2.append(", property ");
                    sbM1765j2.append(strScanSymbol);
                    throw new JSONException(sbM1765j2.toString());
                }
            } else {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                Class<?> cls2 = fieldInfo.fieldClass;
                Type type = fieldInfo.fieldType;
                if (cls2 == Integer.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == String.class) {
                    this.lexer.nextTokenWithColon(4);
                    objDeserialze = StringCodec.deserialze(this);
                } else if (cls2 == Long.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = LongCodec.instance.deserialze(this, type, null);
                } else {
                    ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                    objDeserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, objDeserialze);
                if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            }
        }
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        Object object = parseObject((Map) new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
        if (object instanceof JSONObject) {
            return (JSONObject) object;
        }
        if (object == null) {
            return null;
        }
        return new JSONObject((Map<String, Object>) object);
    }
}
