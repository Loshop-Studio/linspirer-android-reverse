package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.asm.ClassWriter;
import com.alibaba.fastjson.asm.FieldWriter;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.fastjson.asm.MethodVisitor;
import com.alibaba.fastjson.asm.MethodWriter;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.asm.Type;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.SymbolTable;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class ASMDeserializerFactory implements Opcodes {
    public static final String DefaultJSONParser = ASMUtils.type(DefaultJSONParser.class);
    public static final String JSONLexerBase = ASMUtils.type(JSONLexerBase.class);
    public final ASMClassLoader classLoader;
    public final AtomicLong seed = new AtomicLong();

    public static class Context {
        public static final int fieldName = 3;
        public static final int parser = 1;
        public static final int type = 2;
        public final JavaBeanInfo beanInfo;
        public final String className;
        public final Class<?> clazz;
        public FieldInfo[] fieldInfoList;
        public int variantIndex;
        public final Map<String, Integer> variants = new HashMap();

        public Context(String str, ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, int i) {
            this.variantIndex = -1;
            this.className = str;
            this.clazz = javaBeanInfo.clazz;
            this.variantIndex = i;
            this.beanInfo = javaBeanInfo;
            this.fieldInfoList = javaBeanInfo.fields;
        }

        public String fieldDeserName(FieldInfo fieldInfo) {
            if (validIdent(fieldInfo.name)) {
                return C0948f6.m1762g(new StringBuilder(), fieldInfo.name, "_asm_deser__");
            }
            StringBuilder sbM1765j = C0948f6.m1765j("_asm_deser__");
            sbM1765j.append(TypeUtils.fnv1a_64_extract(fieldInfo.name));
            return sbM1765j.toString();
        }

        public String fieldName(FieldInfo fieldInfo) {
            if (validIdent(fieldInfo.name)) {
                return C0948f6.m1762g(new StringBuilder(), fieldInfo.name, "_asm_prefix__");
            }
            StringBuilder sbM1765j = C0948f6.m1765j("asm_field_");
            sbM1765j.append(TypeUtils.fnv1a_64_extract(fieldInfo.name));
            return sbM1765j.toString();
        }

        public Class<?> getInstClass() {
            Class<?> cls = this.beanInfo.builderClass;
            return cls == null ? this.clazz : cls;
        }

        public boolean validIdent(String str) {
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == 0) {
                    if (!IOUtils.firstIdentifier(cCharAt)) {
                        return false;
                    }
                } else if (!IOUtils.isIdent(cCharAt)) {
                    return false;
                }
            }
            return true;
        }

        public int var(String str, int i) {
            if (this.variants.get(str) == null) {
                this.variants.put(str, Integer.valueOf(this.variantIndex));
                this.variantIndex += i;
            }
            return this.variants.get(str).intValue();
        }

        public int var_asm(FieldInfo fieldInfo) {
            return var(fieldInfo.name + "_asm");
        }

        public int var_asm(FieldInfo fieldInfo, int i) {
            return var(fieldInfo.name + "_asm", i);
        }

        public int var(String str) {
            if (this.variants.get(str) == null) {
                Map<String, Integer> map = this.variants;
                int i = this.variantIndex;
                this.variantIndex = i + 1;
                map.put(str, Integer.valueOf(i));
            }
            return this.variants.get(str).intValue();
        }
    }

    public ASMDeserializerFactory(ClassLoader classLoader) {
        this.classLoader = classLoader instanceof ASMClassLoader ? (ASMClassLoader) classLoader : new ASMClassLoader(classLoader);
    }

    private void _batchSet(Context context, MethodVisitor methodVisitor) {
        _batchSet(context, methodVisitor, true);
    }

    private void _createInstance(Context context, MethodVisitor methodVisitor) {
        Constructor<?> constructor = context.beanInfo.defaultConstructor;
        if (Modifier.isPublic(constructor.getModifiers())) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(context.getInstClass()));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(constructor.getDeclaringClass()), "<init>", "()V");
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitFieldInsn(180, ASMUtils.type(JavaBeanDeserializer.class), "clazz", "Ljava/lang/Class;");
            methodVisitor.visitMethodInsn(183, ASMUtils.type(JavaBeanDeserializer.class), "createInstance", C0948f6.m1762g(C0948f6.m1765j("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"));
            methodVisitor.visitTypeInsn(192, ASMUtils.type(context.getInstClass()));
        }
        methodVisitor.visitVarInsn(58, context.var("instance"));
    }

    private void _deserObject(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo, Class<?> cls, int i) {
        int i2;
        _getFieldDeser(context, methodVisitor, fieldInfo);
        Label label = new Label();
        Label label2 = new Label();
        if ((fieldInfo.parserFeatures & Feature.SupportArrayToBean.mask) != 0) {
            methodVisitor.visitInsn(89);
            methodVisitor.visitTypeInsn(193, ASMUtils.type(JavaBeanDeserializer.class));
            methodVisitor.visitJumpInsn(153, label);
            methodVisitor.visitTypeInsn(192, ASMUtils.type(JavaBeanDeserializer.class));
            methodVisitor.visitVarInsn(25, 1);
            if (fieldInfo.fieldType instanceof Class) {
                methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
            } else {
                methodVisitor.visitVarInsn(25, 0);
                methodVisitor.visitLdcInsn(Integer.valueOf(i));
                methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            }
            methodVisitor.visitLdcInsn(fieldInfo.name);
            methodVisitor.visitLdcInsn(Integer.valueOf(fieldInfo.parserFeatures));
            methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "deserialze", C0948f6.m1762g(C0948f6.m1765j("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"));
            methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
            methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
            methodVisitor.visitJumpInsn(167, label2);
            methodVisitor.visitLabel(label);
            i2 = 1;
        } else {
            i2 = 1;
        }
        methodVisitor.visitVarInsn(25, i2);
        if (fieldInfo.fieldType instanceof Class) {
            methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitLdcInsn(Integer.valueOf(i));
            methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
        }
        methodVisitor.visitLdcInsn(fieldInfo.name);
        methodVisitor.visitMethodInsn(185, ASMUtils.type(ObjectDeserializer.class), "deserialze", C0948f6.m1762g(C0948f6.m1765j("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"));
        methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        methodVisitor.visitLabel(label2);
    }

    private void _deserialize_endCheck(Context context, MethodVisitor methodVisitor, Label label) {
        methodVisitor.visitIntInsn(21, context.var("matchedCount"));
        methodVisitor.visitJumpInsn(158, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(13);
        methodVisitor.visitJumpInsn(160, label);
        _quickNextTokenComma(context, methodVisitor);
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0a9a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _deserialze(com.alibaba.fastjson.asm.ClassWriter r25, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context r26) {
        /*
            Method dump skipped, instructions count: 3178
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory._deserialze(com.alibaba.fastjson.asm.ClassWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory$Context):void");
    }

    private void _deserialzeArrayMapping(ClassWriter classWriter, Context context) {
        Class<JavaBeanDeserializer> cls;
        int i;
        MethodWriter methodWriter;
        int i2;
        Class<JavaBeanDeserializer> cls2 = JavaBeanDeserializer.class;
        MethodWriter methodWriter2 = new MethodWriter(classWriter, 1, "deserialzeArrayMapping", C0948f6.m1762g(C0948f6.m1765j("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"), null, null);
        defineVarLexer(context, methodWriter2);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitVarInsn(25, 1);
        String str = DefaultJSONParser;
        StringBuilder sbM1765j = C0948f6.m1765j("()");
        sbM1765j.append(ASMUtils.desc((Class<?>) SymbolTable.class));
        methodWriter2.visitMethodInsn(182, str, "getSymbolTable", sbM1765j.toString());
        String str2 = JSONLexerBase;
        StringBuilder sbM1765j2 = C0948f6.m1765j("(");
        sbM1765j2.append(ASMUtils.desc((Class<?>) SymbolTable.class));
        sbM1765j2.append(")Ljava/lang/String;");
        methodWriter2.visitMethodInsn(182, str2, "scanTypeName", sbM1765j2.toString());
        methodWriter2.visitVarInsn(58, context.var("typeName"));
        Label label = new Label();
        methodWriter2.visitVarInsn(25, context.var("typeName"));
        methodWriter2.visitJumpInsn(198, label);
        methodWriter2.visitVarInsn(25, 1);
        String str3 = DefaultJSONParser;
        StringBuilder sbM1765j3 = C0948f6.m1765j("()");
        sbM1765j3.append(ASMUtils.desc((Class<?>) ParserConfig.class));
        methodWriter2.visitMethodInsn(182, str3, "getConfig", sbM1765j3.toString());
        int i3 = 0;
        methodWriter2.visitVarInsn(25, 0);
        methodWriter2.visitFieldInsn(180, ASMUtils.type(cls2), "beanInfo", ASMUtils.desc((Class<?>) JavaBeanInfo.class));
        methodWriter2.visitVarInsn(25, context.var("typeName"));
        String strType = ASMUtils.type(cls2);
        StringBuilder sbM1765j4 = C0948f6.m1765j("(");
        sbM1765j4.append(ASMUtils.desc((Class<?>) ParserConfig.class));
        sbM1765j4.append(ASMUtils.desc((Class<?>) JavaBeanInfo.class));
        sbM1765j4.append("Ljava/lang/String;)");
        sbM1765j4.append(ASMUtils.desc(cls2));
        methodWriter2.visitMethodInsn(184, strType, "getSeeAlso", sbM1765j4.toString());
        methodWriter2.visitVarInsn(58, context.var("userTypeDeser"));
        methodWriter2.visitVarInsn(25, context.var("userTypeDeser"));
        methodWriter2.visitTypeInsn(193, ASMUtils.type(cls2));
        methodWriter2.visitJumpInsn(153, label);
        methodWriter2.visitVarInsn(25, context.var("userTypeDeser"));
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitVarInsn(25, 2);
        methodWriter2.visitVarInsn(25, 3);
        methodWriter2.visitVarInsn(25, 4);
        methodWriter2.visitMethodInsn(182, ASMUtils.type(cls2), "deserialzeArrayMapping", C0948f6.m1762g(C0948f6.m1765j("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"));
        methodWriter2.visitInsn(176);
        methodWriter2.visitLabel(label);
        _createInstance(context, methodWriter2);
        FieldInfo[] fieldInfoArr = context.beanInfo.sortedFields;
        int length = fieldInfoArr.length;
        while (i3 < length) {
            boolean z = i3 == length + (-1);
            int i4 = z ? 93 : 44;
            FieldInfo fieldInfo = fieldInfoArr[i3];
            Class<?> cls3 = fieldInfo.fieldClass;
            java.lang.reflect.Type type = fieldInfo.fieldType;
            FieldInfo[] fieldInfoArr2 = fieldInfoArr;
            if (cls3 == Byte.TYPE || cls3 == Short.TYPE || cls3 == Integer.TYPE) {
                cls = cls2;
                i = length;
                methodWriter = methodWriter2;
                methodWriter.visitVarInsn(25, context.var("lexer"));
                methodWriter.visitVarInsn(16, i4);
                methodWriter.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                methodWriter.visitVarInsn(54, context.var_asm(fieldInfo));
            } else {
                i = length;
                if (cls3 == Byte.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                    methodWriter2.visitMethodInsn(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    Label label2 = new Label();
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                    methodWriter2.visitLdcInsn(5);
                    methodWriter2.visitJumpInsn(160, label2);
                    methodWriter2.visitInsn(1);
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter2.visitLabel(label2);
                } else if (cls3 == Short.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                    methodWriter2.visitMethodInsn(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    Label label3 = new Label();
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                    methodWriter2.visitLdcInsn(5);
                    methodWriter2.visitJumpInsn(160, label3);
                    methodWriter2.visitInsn(1);
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter2.visitLabel(label3);
                } else if (cls3 == Integer.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                    methodWriter2.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    Label label4 = new Label();
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                    methodWriter2.visitLdcInsn(5);
                    methodWriter2.visitJumpInsn(160, label4);
                    methodWriter2.visitInsn(1);
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter2.visitLabel(label4);
                } else if (cls3 == Long.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                    methodWriter2.visitVarInsn(55, context.var_asm(fieldInfo, 2));
                } else if (cls3 == Long.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                    methodWriter2.visitMethodInsn(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    Label label5 = new Label();
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                    methodWriter2.visitLdcInsn(5);
                    methodWriter2.visitJumpInsn(160, label5);
                    methodWriter2.visitInsn(1);
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter2.visitLabel(label5);
                } else if (cls3 == Boolean.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanBoolean", "(C)Z");
                    methodWriter2.visitVarInsn(54, context.var_asm(fieldInfo));
                } else if (cls3 == Float.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFloat", "(C)F");
                    methodWriter2.visitVarInsn(56, context.var_asm(fieldInfo));
                } else if (cls3 == Float.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFloat", "(C)F");
                    methodWriter2.visitMethodInsn(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    Label label6 = new Label();
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                    methodWriter2.visitLdcInsn(5);
                    methodWriter2.visitJumpInsn(160, label6);
                    methodWriter2.visitInsn(1);
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter2.visitLabel(label6);
                } else if (cls3 == Double.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanDouble", "(C)D");
                    methodWriter2.visitVarInsn(57, context.var_asm(fieldInfo, 2));
                } else if (cls3 == Double.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanDouble", "(C)D");
                    methodWriter2.visitMethodInsn(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    Label label7 = new Label();
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                    methodWriter2.visitLdcInsn(5);
                    methodWriter2.visitJumpInsn(160, label7);
                    methodWriter2.visitInsn(1);
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    methodWriter2.visitLabel(label7);
                } else if (cls3 == Character.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i4);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                    methodWriter2.visitInsn(3);
                    methodWriter2.visitMethodInsn(182, "java/lang/String", "charAt", "(I)C");
                    methodWriter2.visitVarInsn(54, context.var_asm(fieldInfo));
                } else {
                    if (cls3 == String.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(16, i4);
                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    } else if (cls3 == BigDecimal.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(16, i4);
                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanDecimal", "(C)Ljava/math/BigDecimal;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    } else if (cls3 == Date.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(16, i4);
                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanDate", "(C)Ljava/util/Date;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    } else if (cls3 == UUID.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(16, i4);
                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanUUID", "(C)Ljava/util/UUID;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    } else {
                        if (cls3.isEnum()) {
                            Label label8 = new Label();
                            Label label9 = new Label();
                            Label label10 = new Label();
                            Label label11 = new Label();
                            i2 = i3;
                            cls = cls2;
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
                            methodWriter2.visitInsn(89);
                            methodWriter2.visitVarInsn(54, context.var("ch"));
                            methodWriter2.visitLdcInsn(110);
                            methodWriter2.visitJumpInsn(159, label11);
                            methodWriter2.visitVarInsn(21, context.var("ch"));
                            methodWriter2.visitLdcInsn(34);
                            methodWriter2.visitJumpInsn(160, label8);
                            methodWriter2.visitLabel(label11);
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitLdcInsn(Type.getType(ASMUtils.desc(cls3)));
                            methodWriter2.visitVarInsn(25, 1);
                            String str4 = DefaultJSONParser;
                            StringBuilder sbM1765j5 = C0948f6.m1765j("()");
                            sbM1765j5.append(ASMUtils.desc((Class<?>) SymbolTable.class));
                            methodWriter2.visitMethodInsn(182, str4, "getSymbolTable", sbM1765j5.toString());
                            methodWriter2.visitVarInsn(16, i4);
                            String str5 = JSONLexerBase;
                            StringBuilder sbM1765j6 = C0948f6.m1765j("(Ljava/lang/Class;");
                            sbM1765j6.append(ASMUtils.desc((Class<?>) SymbolTable.class));
                            sbM1765j6.append("C)Ljava/lang/Enum;");
                            methodWriter2.visitMethodInsn(182, str5, "scanEnum", sbM1765j6.toString());
                            methodWriter2.visitJumpInsn(167, label10);
                            methodWriter2.visitLabel(label8);
                            methodWriter2.visitVarInsn(21, context.var("ch"));
                            methodWriter2.visitLdcInsn(48);
                            methodWriter2.visitJumpInsn(161, label9);
                            methodWriter2.visitVarInsn(21, context.var("ch"));
                            methodWriter2.visitLdcInsn(57);
                            methodWriter2.visitJumpInsn(163, label9);
                            _getFieldDeser(context, methodWriter2, fieldInfo);
                            methodWriter2.visitTypeInsn(192, ASMUtils.type(EnumDeserializer.class));
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(16, i4);
                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                            methodWriter2.visitMethodInsn(182, ASMUtils.type(EnumDeserializer.class), "valueOf", "(I)Ljava/lang/Enum;");
                            methodWriter2.visitJumpInsn(167, label10);
                            methodWriter2.visitLabel(label9);
                            methodWriter2.visitVarInsn(25, 0);
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(16, i4);
                            methodWriter2.visitMethodInsn(182, ASMUtils.type(cls), "scanEnum", C0948f6.m1762g(C0948f6.m1765j("(L"), JSONLexerBase, ";C)Ljava/lang/Enum;"));
                            methodWriter2.visitLabel(label10);
                            methodWriter2.visitTypeInsn(192, ASMUtils.type(cls3));
                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                        } else {
                            cls = cls2;
                            i2 = i3;
                            if (Collection.class.isAssignableFrom(cls3)) {
                                Class<?> collectionItemClass = TypeUtils.getCollectionItemClass(type);
                                if (collectionItemClass == String.class) {
                                    if (cls3 == List.class || cls3 == Collections.class || cls3 == ArrayList.class) {
                                        methodWriter2.visitTypeInsn(187, ASMUtils.type(ArrayList.class));
                                        methodWriter2.visitInsn(89);
                                        methodWriter2.visitMethodInsn(183, ASMUtils.type(ArrayList.class), "<init>", "()V");
                                    } else {
                                        methodWriter2.visitLdcInsn(Type.getType(ASMUtils.desc(cls3)));
                                        methodWriter2.visitMethodInsn(184, ASMUtils.type(TypeUtils.class), "createCollection", "(Ljava/lang/Class;)Ljava/util/Collection;");
                                    }
                                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitVarInsn(25, context.var_asm(fieldInfo));
                                    methodWriter2.visitVarInsn(16, i4);
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanStringArray", "(Ljava/util/Collection;C)V");
                                    Label label12 = new Label();
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                                    methodWriter2.visitLdcInsn(5);
                                    methodWriter2.visitJumpInsn(160, label12);
                                    methodWriter2.visitInsn(1);
                                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                    methodWriter2.visitLabel(label12);
                                } else {
                                    Label label13 = new Label();
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "token", "()I");
                                    methodWriter2.visitVarInsn(54, context.var("token"));
                                    methodWriter2.visitVarInsn(21, context.var("token"));
                                    int i5 = i2 == 0 ? 14 : 16;
                                    methodWriter2.visitLdcInsn(Integer.valueOf(i5));
                                    methodWriter2.visitJumpInsn(159, label13);
                                    methodWriter2.visitVarInsn(25, 1);
                                    methodWriter2.visitLdcInsn(Integer.valueOf(i5));
                                    methodWriter2.visitMethodInsn(182, DefaultJSONParser, "throwException", "(I)V");
                                    methodWriter2.visitLabel(label13);
                                    Label label14 = new Label();
                                    Label label15 = new Label();
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
                                    methodWriter2.visitVarInsn(16, 91);
                                    methodWriter2.visitJumpInsn(160, label14);
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "next", "()C");
                                    methodWriter2.visitInsn(87);
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitLdcInsn(14);
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
                                    methodWriter2.visitJumpInsn(167, label15);
                                    methodWriter2.visitLabel(label14);
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitLdcInsn(14);
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
                                    methodWriter2.visitLabel(label15);
                                    i3 = i2;
                                    _newCollection(methodWriter2, cls3, i3, false);
                                    methodWriter2.visitInsn(89);
                                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                    _getCollectionFieldItemDeser(context, methodWriter2, fieldInfo, collectionItemClass);
                                    methodWriter2.visitVarInsn(25, 1);
                                    methodWriter2.visitLdcInsn(Type.getType(ASMUtils.desc(collectionItemClass)));
                                    methodWriter2.visitVarInsn(25, 3);
                                    String strType2 = ASMUtils.type(cls);
                                    StringBuilder sbM1765j7 = C0948f6.m1765j("(Ljava/util/Collection;");
                                    sbM1765j7.append(ASMUtils.desc((Class<?>) ObjectDeserializer.class));
                                    sbM1765j7.append("L");
                                    methodWriter2.visitMethodInsn(184, strType2, "parseArray", C0948f6.m1762g(sbM1765j7, DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V"));
                                }
                            } else {
                                i3 = i2;
                                if (cls3.isArray()) {
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitLdcInsn(14);
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
                                    methodWriter2.visitVarInsn(25, 1);
                                    methodWriter2.visitVarInsn(25, 0);
                                    methodWriter2.visitLdcInsn(Integer.valueOf(i3));
                                    methodWriter2.visitMethodInsn(182, ASMUtils.type(cls), "getFieldType", "(I)Ljava/lang/reflect/Type;");
                                    methodWriter2.visitMethodInsn(182, DefaultJSONParser, "parseObject", "(Ljava/lang/reflect/Type;)Ljava/lang/Object;");
                                    methodWriter2.visitTypeInsn(192, ASMUtils.type(cls3));
                                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                } else {
                                    Label label16 = new Label();
                                    Label label17 = new Label();
                                    if (cls3 == Date.class) {
                                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
                                        methodWriter2.visitLdcInsn(49);
                                        methodWriter2.visitJumpInsn(160, label16);
                                        methodWriter2.visitTypeInsn(187, ASMUtils.type(Date.class));
                                        methodWriter2.visitInsn(89);
                                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                                        methodWriter2.visitVarInsn(16, i4);
                                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                                        methodWriter2.visitMethodInsn(183, ASMUtils.type(Date.class), "<init>", "(J)V");
                                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                        methodWriter2.visitJumpInsn(167, label17);
                                    }
                                    methodWriter2.visitLabel(label16);
                                    _quickNextToken(context, methodWriter2, 14);
                                    methodWriter = methodWriter2;
                                    _deserObject(context, methodWriter2, fieldInfo, cls3, i3);
                                    methodWriter.visitVarInsn(25, context.var("lexer"));
                                    methodWriter.visitMethodInsn(182, JSONLexerBase, "token", "()I");
                                    methodWriter.visitLdcInsn(15);
                                    methodWriter.visitJumpInsn(159, label17);
                                    methodWriter.visitVarInsn(25, 0);
                                    methodWriter.visitVarInsn(25, context.var("lexer"));
                                    if (z) {
                                        methodWriter.visitLdcInsn(15);
                                    } else {
                                        methodWriter.visitLdcInsn(16);
                                    }
                                    String strType3 = ASMUtils.type(cls);
                                    StringBuilder sbM1765j8 = C0948f6.m1765j("(");
                                    sbM1765j8.append(ASMUtils.desc((Class<?>) JSONLexer.class));
                                    sbM1765j8.append("I)V");
                                    methodWriter.visitMethodInsn(183, strType3, "check", sbM1765j8.toString());
                                    methodWriter.visitLabel(label17);
                                }
                            }
                            methodWriter = methodWriter2;
                        }
                        i3 = i2;
                        methodWriter = methodWriter2;
                    }
                    methodWriter = methodWriter2;
                    cls = cls2;
                }
                cls = cls2;
                i2 = i3;
                i3 = i2;
                methodWriter = methodWriter2;
            }
            i3++;
            fieldInfoArr = fieldInfoArr2;
            methodWriter2 = methodWriter;
            length = i;
            cls2 = cls;
        }
        MethodWriter methodWriter3 = methodWriter2;
        _batchSet(context, methodWriter3, false);
        Label label18 = new Label();
        Label label19 = new Label();
        Label label20 = new Label();
        Label label21 = new Label();
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
        methodWriter3.visitInsn(89);
        methodWriter3.visitVarInsn(54, context.var("ch"));
        methodWriter3.visitVarInsn(16, 44);
        methodWriter3.visitJumpInsn(160, label19);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(16);
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label21);
        methodWriter3.visitLabel(label19);
        methodWriter3.visitVarInsn(21, context.var("ch"));
        methodWriter3.visitVarInsn(16, 93);
        methodWriter3.visitJumpInsn(160, label20);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(15);
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label21);
        methodWriter3.visitLabel(label20);
        methodWriter3.visitVarInsn(21, context.var("ch"));
        methodWriter3.visitVarInsn(16, 26);
        methodWriter3.visitJumpInsn(160, label18);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(20);
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label21);
        methodWriter3.visitLabel(label18);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(16);
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
        methodWriter3.visitLabel(label21);
        methodWriter3.visitVarInsn(25, context.var("instance"));
        methodWriter3.visitInsn(176);
        methodWriter3.visitMaxs(5, context.variantIndex);
        methodWriter3.visitEnd();
    }

    private void _deserialze_list_obj(Context context, MethodVisitor methodVisitor, Label label, FieldInfo fieldInfo, Class<?> cls, Class<?> cls2, int i) {
        String str;
        String str2;
        int i2;
        int i3;
        String str3;
        int i4;
        Label label2 = new Label();
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "matchField", "([C)Z");
        methodVisitor.visitJumpInsn(153, label2);
        _setFlag(methodVisitor, context, i);
        Label label3 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(8);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label3);
        Label label4 = new Label();
        Label label5 = new Label();
        Label label6 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(21);
        methodVisitor.visitJumpInsn(160, label5);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(14);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
        _newCollection(methodVisitor, cls, i, true);
        methodVisitor.visitJumpInsn(167, label4);
        methodVisitor.visitLabel(label5);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(14);
        methodVisitor.visitJumpInsn(159, label6);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(12);
        methodVisitor.visitJumpInsn(160, label);
        _newCollection(methodVisitor, cls, i, false);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        _getCollectionFieldItemDeser(context, methodVisitor, fieldInfo, cls2);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(cls2)));
        methodVisitor.visitInsn(3);
        methodVisitor.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        methodVisitor.visitMethodInsn(185, ASMUtils.type(ObjectDeserializer.class), "deserialze", C0948f6.m1762g(C0948f6.m1765j("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"));
        methodVisitor.visitVarInsn(58, context.var("list_item_value"));
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitVarInsn(25, context.var("list_item_value"));
        if (cls.isInterface()) {
            str = "list_item_value";
            methodVisitor.visitMethodInsn(185, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            str = "list_item_value";
            methodVisitor.visitMethodInsn(182, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        }
        methodVisitor.visitInsn(87);
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label6);
        _newCollection(methodVisitor, cls, i, false);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        boolean zIsPrimitive2 = ParserConfig.isPrimitive2(fieldInfo.fieldClass);
        _getCollectionFieldItemDeser(context, methodVisitor, fieldInfo, cls2);
        if (zIsPrimitive2) {
            methodVisitor.visitMethodInsn(185, ASMUtils.type(ObjectDeserializer.class), "getFastMatchToken", "()I");
            methodVisitor.visitVarInsn(54, context.var("fastMatchToken"));
            methodVisitor.visitVarInsn(25, context.var("lexer"));
            methodVisitor.visitVarInsn(21, context.var("fastMatchToken"));
            str2 = "(I)V";
            methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", str2);
        } else {
            str2 = "(I)V";
            methodVisitor.visitInsn(87);
            methodVisitor.visitLdcInsn(12);
            methodVisitor.visitVarInsn(54, context.var("fastMatchToken"));
            _quickNextToken(context, methodVisitor, 12);
        }
        methodVisitor.visitVarInsn(25, 1);
        String str4 = DefaultJSONParser;
        StringBuilder sbM1765j = C0948f6.m1765j("()");
        sbM1765j.append(ASMUtils.desc((Class<?>) ParseContext.class));
        methodVisitor.visitMethodInsn(182, str4, "getContext", sbM1765j.toString());
        methodVisitor.visitVarInsn(58, context.var("listContext"));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitLdcInsn(fieldInfo.name);
        String str5 = DefaultJSONParser;
        StringBuilder sbM1765j2 = C0948f6.m1765j("(Ljava/lang/Object;Ljava/lang/Object;)");
        sbM1765j2.append(ASMUtils.desc((Class<?>) ParseContext.class));
        methodVisitor.visitMethodInsn(182, str5, "setContext", sbM1765j2.toString());
        methodVisitor.visitInsn(87);
        Label label7 = new Label();
        Label label8 = new Label();
        methodVisitor.visitInsn(3);
        methodVisitor.visitVarInsn(54, context.var("i"));
        methodVisitor.visitLabel(label7);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitJumpInsn(159, label8);
        methodVisitor.visitVarInsn(25, 0);
        String str6 = str2;
        methodVisitor.visitFieldInsn(180, context.className, C0948f6.m1762g(new StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(cls2)));
        methodVisitor.visitVarInsn(21, context.var("i"));
        methodVisitor.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        methodVisitor.visitMethodInsn(185, ASMUtils.type(ObjectDeserializer.class), "deserialze", C0948f6.m1762g(C0948f6.m1765j("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"));
        String str7 = str;
        methodVisitor.visitVarInsn(58, context.var(str7));
        methodVisitor.visitIincInsn(context.var("i"), 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitVarInsn(25, context.var(str7));
        if (cls.isInterface()) {
            methodVisitor.visitMethodInsn(185, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
            i3 = 87;
            i2 = 182;
        } else {
            i2 = 182;
            methodVisitor.visitMethodInsn(182, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
            i3 = 87;
        }
        methodVisitor.visitInsn(i3);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitMethodInsn(i2, DefaultJSONParser, "checkListResolve", "(Ljava/util/Collection;)V");
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(i2, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitJumpInsn(160, label7);
        if (zIsPrimitive2) {
            methodVisitor.visitVarInsn(25, context.var("lexer"));
            methodVisitor.visitVarInsn(21, context.var("fastMatchToken"));
            methodVisitor.visitMethodInsn(i2, JSONLexerBase, "nextToken", str6);
            i4 = 167;
            str3 = "token";
        } else {
            str3 = "token";
            _quickNextToken(context, methodVisitor, 12);
            i4 = 167;
        }
        methodVisitor.visitJumpInsn(i4, label7);
        methodVisitor.visitLabel(label8);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var("listContext"));
        String str8 = DefaultJSONParser;
        StringBuilder sbM1765j3 = C0948f6.m1765j("(");
        sbM1765j3.append(ASMUtils.desc((Class<?>) ParseContext.class));
        sbM1765j3.append(")V");
        methodVisitor.visitMethodInsn(182, str8, "setContext", sbM1765j3.toString());
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, str3, "()I");
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitJumpInsn(160, label);
        _quickNextTokenComma(context, methodVisitor);
        methodVisitor.visitLabel(label2);
    }

    private void _deserialze_obj(Context context, MethodVisitor methodVisitor, Label label, FieldInfo fieldInfo, Class<?> cls, int i) {
        Label label2 = new Label();
        Label label3 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, context.fieldName(fieldInfo), "[C");
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "matchField", "([C)Z");
        methodVisitor.visitJumpInsn(154, label2);
        methodVisitor.visitInsn(1);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        methodVisitor.visitJumpInsn(167, label3);
        methodVisitor.visitLabel(label2);
        _setFlag(methodVisitor, context, i);
        methodVisitor.visitVarInsn(21, context.var("matchedCount"));
        methodVisitor.visitInsn(4);
        methodVisitor.visitInsn(96);
        methodVisitor.visitVarInsn(54, context.var("matchedCount"));
        _deserObject(context, methodVisitor, fieldInfo, cls, i);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(182, DefaultJSONParser, "getResolveStatus", "()I");
        methodVisitor.visitLdcInsn(1);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, 1);
        String str = DefaultJSONParser;
        StringBuilder sbM1765j = C0948f6.m1765j("()");
        sbM1765j.append(ASMUtils.desc((Class<?>) DefaultJSONParser.ResolveTask.class));
        methodVisitor.visitMethodInsn(182, str, "getLastResolveTask", sbM1765j.toString());
        methodVisitor.visitVarInsn(58, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, 1);
        String str2 = DefaultJSONParser;
        StringBuilder sbM1765j2 = C0948f6.m1765j("()");
        sbM1765j2.append(ASMUtils.desc((Class<?>) ParseContext.class));
        methodVisitor.visitMethodInsn(182, str2, "getContext", sbM1765j2.toString());
        methodVisitor.visitFieldInsn(181, ASMUtils.type(DefaultJSONParser.ResolveTask.class), "ownerContext", ASMUtils.desc((Class<?>) ParseContext.class));
        methodVisitor.visitVarInsn(25, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitLdcInsn(fieldInfo.name);
        String strType = ASMUtils.type(JavaBeanDeserializer.class);
        StringBuilder sbM1765j3 = C0948f6.m1765j("(Ljava/lang/String;)");
        sbM1765j3.append(ASMUtils.desc((Class<?>) FieldDeserializer.class));
        methodVisitor.visitMethodInsn(182, strType, "getFieldDeserializer", sbM1765j3.toString());
        methodVisitor.visitFieldInsn(181, ASMUtils.type(DefaultJSONParser.ResolveTask.class), "fieldDeserializer", ASMUtils.desc((Class<?>) FieldDeserializer.class));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(0);
        methodVisitor.visitMethodInsn(182, DefaultJSONParser, "setResolveStatus", "(I)V");
        methodVisitor.visitLabel(label3);
    }

    private void _getCollectionFieldItemDeser(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo, Class<?> cls) {
        Label label = new Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, C0948f6.m1762g(new StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(199, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        String str = DefaultJSONParser;
        StringBuilder sbM1765j = C0948f6.m1765j("()");
        sbM1765j.append(ASMUtils.desc((Class<?>) ParserConfig.class));
        methodVisitor.visitMethodInsn(182, str, "getConfig", sbM1765j.toString());
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(cls)));
        String strType = ASMUtils.type(ParserConfig.class);
        StringBuilder sbM1765j2 = C0948f6.m1765j("(Ljava/lang/reflect/Type;)");
        sbM1765j2.append(ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitMethodInsn(182, strType, "getDeserializer", sbM1765j2.toString());
        methodVisitor.visitFieldInsn(181, context.className, C0948f6.m1762g(new StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, C0948f6.m1762g(new StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), ASMUtils.desc((Class<?>) ObjectDeserializer.class));
    }

    private void _getFieldDeser(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Label label = new Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, context.fieldDeserName(fieldInfo), ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(199, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        String str = DefaultJSONParser;
        StringBuilder sbM1765j = C0948f6.m1765j("()");
        sbM1765j.append(ASMUtils.desc((Class<?>) ParserConfig.class));
        methodVisitor.visitMethodInsn(182, str, "getConfig", sbM1765j.toString());
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        String strType = ASMUtils.type(ParserConfig.class);
        StringBuilder sbM1765j2 = C0948f6.m1765j("(Ljava/lang/reflect/Type;)");
        sbM1765j2.append(ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitMethodInsn(182, strType, "getDeserializer", sbM1765j2.toString());
        methodVisitor.visitFieldInsn(181, context.className, context.fieldDeserName(fieldInfo), ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, context.fieldDeserName(fieldInfo), ASMUtils.desc((Class<?>) ObjectDeserializer.class));
    }

    private void _init(ClassWriter classWriter, Context context) {
        int length = context.fieldInfoList.length;
        for (int i = 0; i < length; i++) {
            new FieldWriter(classWriter, 1, context.fieldName(context.fieldInfoList[i]), "[C").visitEnd();
        }
        int length2 = context.fieldInfoList.length;
        for (int i2 = 0; i2 < length2; i2++) {
            FieldInfo fieldInfo = context.fieldInfoList[i2];
            Class<?> cls = fieldInfo.fieldClass;
            if (!cls.isPrimitive()) {
                if (Collection.class.isAssignableFrom(cls)) {
                    new FieldWriter(classWriter, 1, C0948f6.m1762g(new StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), ASMUtils.desc((Class<?>) ObjectDeserializer.class)).visitEnd();
                } else {
                    new FieldWriter(classWriter, 1, context.fieldDeserName(fieldInfo), ASMUtils.desc((Class<?>) ObjectDeserializer.class)).visitEnd();
                }
            }
        }
        StringBuilder sbM1765j = C0948f6.m1765j("(");
        sbM1765j.append(ASMUtils.desc((Class<?>) ParserConfig.class));
        sbM1765j.append(ASMUtils.desc((Class<?>) JavaBeanInfo.class));
        sbM1765j.append(")V");
        MethodWriter methodWriter = new MethodWriter(classWriter, 1, "<init>", sbM1765j.toString(), null, null);
        methodWriter.visitVarInsn(25, 0);
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitVarInsn(25, 2);
        String strType = ASMUtils.type(JavaBeanDeserializer.class);
        StringBuilder sbM1765j2 = C0948f6.m1765j("(");
        sbM1765j2.append(ASMUtils.desc((Class<?>) ParserConfig.class));
        sbM1765j2.append(ASMUtils.desc((Class<?>) JavaBeanInfo.class));
        sbM1765j2.append(")V");
        methodWriter.visitMethodInsn(183, strType, "<init>", sbM1765j2.toString());
        int length3 = context.fieldInfoList.length;
        for (int i3 = 0; i3 < length3; i3++) {
            FieldInfo fieldInfo2 = context.fieldInfoList[i3];
            methodWriter.visitVarInsn(25, 0);
            methodWriter.visitLdcInsn("\"" + fieldInfo2.name + "\":");
            methodWriter.visitMethodInsn(182, "java/lang/String", "toCharArray", "()[C");
            methodWriter.visitFieldInsn(181, context.className, context.fieldName(fieldInfo2), "[C");
        }
        methodWriter.visitInsn(177);
        methodWriter.visitMaxs(4, 4);
        methodWriter.visitEnd();
    }

    private void _isFlag(MethodVisitor methodVisitor, Context context, int i, Label label) {
        StringBuilder sbM1765j = C0948f6.m1765j("_asm_flag_");
        sbM1765j.append(i / 32);
        methodVisitor.visitVarInsn(21, context.var(sbM1765j.toString()));
        methodVisitor.visitLdcInsn(Integer.valueOf(1 << i));
        methodVisitor.visitInsn(126);
        methodVisitor.visitJumpInsn(153, label);
    }

    private void _loadAndSet(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Class<?> cls = fieldInfo.fieldClass;
        java.lang.reflect.Type type = fieldInfo.fieldType;
        if (cls == Boolean.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(21, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == Byte.TYPE || cls == Short.TYPE || cls == Integer.TYPE || cls == Character.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(21, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == Long.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(22, context.var_asm(fieldInfo, 2));
            if (fieldInfo.method == null) {
                methodVisitor.visitFieldInsn(181, ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), ASMUtils.desc(fieldInfo.fieldClass));
                return;
            }
            methodVisitor.visitMethodInsn(182, ASMUtils.type(context.getInstClass()), fieldInfo.method.getName(), ASMUtils.desc(fieldInfo.method));
            if (fieldInfo.method.getReturnType().equals(Void.TYPE)) {
                return;
            }
            methodVisitor.visitInsn(87);
            return;
        }
        if (cls == Float.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(23, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == Double.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(24, context.var_asm(fieldInfo, 2));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == String.class) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
        } else if (!Collection.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            _set(context, methodVisitor, fieldInfo);
        } else {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            if (TypeUtils.getCollectionItemClass(type) == String.class) {
                methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
                methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
            } else {
                methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            }
            _set(context, methodVisitor, fieldInfo);
        }
    }

    private void _newCollection(MethodVisitor methodVisitor, Class<?> cls, int i, boolean z) {
        if (cls.isAssignableFrom(ArrayList.class) && !z) {
            methodVisitor.visitTypeInsn(187, "java/util/ArrayList");
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, "java/util/ArrayList", "<init>", "()V");
        } else if (cls.isAssignableFrom(LinkedList.class) && !z) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(LinkedList.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(LinkedList.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(HashSet.class)) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(HashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(HashSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(TreeSet.class)) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(TreeSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(TreeSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(LinkedHashSet.class)) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(LinkedHashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(LinkedHashSet.class), "<init>", "()V");
        } else if (z) {
            methodVisitor.visitTypeInsn(187, ASMUtils.type(HashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, ASMUtils.type(HashSet.class), "<init>", "()V");
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitLdcInsn(Integer.valueOf(i));
            methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            methodVisitor.visitMethodInsn(184, ASMUtils.type(TypeUtils.class), "createCollection", "(Ljava/lang/reflect/Type;)Ljava/util/Collection;");
        }
        methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
    }

    private void _quickNextToken(Context context, MethodVisitor methodVisitor, int i) {
        Label label = new Label();
        Label label2 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
        if (i == 12) {
            methodVisitor.visitVarInsn(16, 123);
        } else {
            if (i != 14) {
                throw new IllegalStateException();
            }
            methodVisitor.visitVarInsn(16, 91);
        }
        methodVisitor.visitJumpInsn(160, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(Integer.valueOf(i));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(Integer.valueOf(i));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
        methodVisitor.visitLabel(label2);
    }

    private void _quickNextTokenComma(Context context, MethodVisitor methodVisitor) {
        Label label = new Label();
        Label label2 = new Label();
        Label label3 = new Label();
        Label label4 = new Label();
        Label label5 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
        methodVisitor.visitInsn(89);
        methodVisitor.visitVarInsn(54, context.var("ch"));
        methodVisitor.visitVarInsn(16, 44);
        methodVisitor.visitJumpInsn(160, label2);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label2);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 125);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(13);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 93);
        methodVisitor.visitJumpInsn(160, label4);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 26);
        methodVisitor.visitJumpInsn(160, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(20);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", "()V");
        methodVisitor.visitLabel(label5);
    }

    private void _set(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Method method = fieldInfo.method;
        if (method == null) {
            methodVisitor.visitFieldInsn(181, ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), ASMUtils.desc(fieldInfo.fieldClass));
            return;
        }
        methodVisitor.visitMethodInsn(method.getDeclaringClass().isInterface() ? 185 : 182, ASMUtils.type(fieldInfo.declaringClass), method.getName(), ASMUtils.desc(method));
        if (fieldInfo.method.getReturnType().equals(Void.TYPE)) {
            return;
        }
        methodVisitor.visitInsn(87);
    }

    private void _setContext(Context context, MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var("context"));
        String str = DefaultJSONParser;
        StringBuilder sbM1765j = C0948f6.m1765j("(");
        sbM1765j.append(ASMUtils.desc((Class<?>) ParseContext.class));
        sbM1765j.append(")V");
        methodVisitor.visitMethodInsn(182, str, "setContext", sbM1765j.toString());
        Label label = new Label();
        methodVisitor.visitVarInsn(25, context.var("childContext"));
        methodVisitor.visitJumpInsn(198, label);
        methodVisitor.visitVarInsn(25, context.var("childContext"));
        methodVisitor.visitVarInsn(25, context.var("instance"));
        methodVisitor.visitFieldInsn(181, ASMUtils.type(ParseContext.class), "object", "Ljava/lang/Object;");
        methodVisitor.visitLabel(label);
    }

    private void _setFlag(MethodVisitor methodVisitor, Context context, int i) {
        StringBuilder sbM1765j = C0948f6.m1765j("_asm_flag_");
        sbM1765j.append(i / 32);
        String string = sbM1765j.toString();
        methodVisitor.visitVarInsn(21, context.var(string));
        methodVisitor.visitLdcInsn(Integer.valueOf(1 << i));
        methodVisitor.visitInsn(128);
        methodVisitor.visitVarInsn(54, context.var(string));
    }

    private void defineVarLexer(Context context, MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitFieldInsn(180, DefaultJSONParser, "lexer", ASMUtils.desc((Class<?>) JSONLexer.class));
        methodVisitor.visitTypeInsn(192, JSONLexerBase);
        methodVisitor.visitVarInsn(58, context.var("lexer"));
    }

    public ObjectDeserializer createJavaBeanDeserializer(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo) {
        String strM1761f;
        Class<?> cls = javaBeanInfo.clazz;
        if (cls.isPrimitive()) {
            StringBuilder sbM1765j = C0948f6.m1765j("not support type :");
            sbM1765j.append(cls.getName());
            throw new IllegalArgumentException(sbM1765j.toString());
        }
        StringBuilder sbM1765j2 = C0948f6.m1765j("FastjsonASMDeserializer_");
        sbM1765j2.append(this.seed.incrementAndGet());
        sbM1765j2.append("_");
        sbM1765j2.append(cls.getSimpleName());
        String string = sbM1765j2.toString();
        Package r1 = ASMDeserializerFactory.class.getPackage();
        if (r1 != null) {
            String name = r1.getName();
            String str = name.replace('.', '/') + GrsManager.SEPARATOR + string;
            strM1761f = C0948f6.m1761f(name, ".", string);
            string = str;
        } else {
            strM1761f = string;
        }
        ClassWriter classWriter = new ClassWriter();
        classWriter.visit(49, 33, string, ASMUtils.type(JavaBeanDeserializer.class), null);
        _init(classWriter, new Context(string, parserConfig, javaBeanInfo, 3));
        _createInstance(classWriter, new Context(string, parserConfig, javaBeanInfo, 3));
        _deserialze(classWriter, new Context(string, parserConfig, javaBeanInfo, 5));
        _deserialzeArrayMapping(classWriter, new Context(string, parserConfig, javaBeanInfo, 4));
        byte[] byteArray = classWriter.toByteArray();
        return (ObjectDeserializer) this.classLoader.defineClassPublic(strM1761f, byteArray, 0, byteArray.length).getConstructor(ParserConfig.class, JavaBeanInfo.class).newInstance(parserConfig, javaBeanInfo);
    }

    private void _batchSet(Context context, MethodVisitor methodVisitor, boolean z) {
        int length = context.fieldInfoList.length;
        for (int i = 0; i < length; i++) {
            Label label = new Label();
            if (z) {
                _isFlag(methodVisitor, context, i, label);
            }
            _loadAndSet(context, methodVisitor, context.fieldInfoList[i]);
            if (z) {
                methodVisitor.visitLabel(label);
            }
        }
    }

    private void _createInstance(ClassWriter classWriter, Context context) {
        if (Modifier.isPublic(context.beanInfo.defaultConstructor.getModifiers())) {
            MethodWriter methodWriter = new MethodWriter(classWriter, 1, "createInstance", C0948f6.m1762g(C0948f6.m1765j("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"), null, null);
            methodWriter.visitTypeInsn(187, ASMUtils.type(context.getInstClass()));
            methodWriter.visitInsn(89);
            methodWriter.visitMethodInsn(183, ASMUtils.type(context.getInstClass()), "<init>", "()V");
            methodWriter.visitInsn(176);
            methodWriter.visitMaxs(3, 3);
            methodWriter.visitEnd();
        }
    }
}
