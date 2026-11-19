.class public Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
.super Ljava/lang/Object;
.source "ASMDeserializerFactory.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    }
.end annotation


# static fields
.field public static final DefaultJSONParser:Ljava/lang/String;

.field public static final JSONLexerBase:Ljava/lang/String;


# instance fields
.field public final classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

.field public final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    .line 2
    const-class v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    instance-of v0, p1, Lcom/alibaba/fastjson/util/ASMClassLoader;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alibaba/fastjson/util/ASMClassLoader;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    return-void
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V

    return-void
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    if-eqz p3, :cond_0

    .line 4
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    aget-object v3, v3, v1

    .line 6
    invoke-direct {p0, p1, p2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    if-eqz p3, :cond_1

    .line 7
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private _createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 8

    .line 14
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 15
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v3, 0x1

    const-string v1, "(L"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-static {v1, v2, v4}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "createInstance"

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p1, 0xbb

    .line 17
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 p1, 0x59

    .line 18
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 p1, 0xb7

    .line 19
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb0

    .line 20
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/4 p1, 0x3

    .line 21
    invoke-virtual {v0, p1, p1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMaxs(II)V

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitEnd()V

    return-void
.end method

.method private _createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 6

    .line 1
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 3
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    const/16 v3, 0xb7

    if-eqz v2, :cond_0

    const/16 v0, 0xbb

    .line 4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 5
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p2, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 7
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v4, 0x1

    .line 8
    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb4

    .line 10
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "clazz"

    const-string v5, "Ljava/lang/Class;"

    invoke-interface {p2, v1, v2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(L"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-static {v1, v2, v4}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createInstance"

    invoke-interface {p2, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :goto_0
    const/16 v0, 0x3a

    const-string v1, "instance"

    .line 13
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private _deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct/range {p0 .. p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 2
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 3
    iget v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v7, v7, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v6, v7

    const-string v7, "(L"

    const-string v8, "deserialze"

    const-string v9, "(I)Ljava/lang/reflect/Type;"

    const-string v10, "getFieldType"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0xc0

    const/16 v14, 0x19

    if-eqz v6, :cond_1

    const/16 v6, 0x59

    .line 4
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v6, 0xc1

    .line 5
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v6, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v6, 0x99

    .line 6
    invoke-interface {v1, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 7
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v13, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 8
    invoke-interface {v1, v14, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9
    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 10
    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v1, v14, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 12
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 13
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0xb6

    invoke-interface {v1, v11, v6, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_0
    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 15
    iget v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 16
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v15, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v12, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-static {v11, v15, v12}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xb6

    invoke-interface {v1, v12, v6, v8, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v13, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 18
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v6

    const/16 v11, 0x3a

    invoke-interface {v1, v11, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xa7

    .line 19
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 20
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v12

    .line 21
    :goto_1
    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 22
    iget-object v4, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 23
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 24
    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 25
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 26
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb6

    invoke-interface {v1, v4, v3, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_2
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v3, 0xb9

    .line 28
    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v9, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v6, v7, v9}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v4, v8, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v13, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 30
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 31
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 4

    const-string v0, "matchedCount"

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x15

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0x9e

    .line 2
    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "lexer"

    .line 3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 4
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb6

    const-string v2, "token"

    const-string v3, "()I"

    invoke-interface {p2, v1, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 6
    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    return-void
.end method

.method private _deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 3
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 4
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 5
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    return-void

    .line 6
    :cond_1
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    .line 8
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v2

    .line 9
    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    .line 11
    iget-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$202(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 12
    new-instance v7, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v12, 0x1

    const-string v17, "(L"

    invoke-static/range {v17 .. v17}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-static {v1, v2, v3}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v13, "deserialze"

    move-object v10, v7

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 14
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 15
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 16
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 17
    invoke-direct {v8, v9, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 18
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v14, "lexer"

    .line 19
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 20
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v4, 0xb6

    const-string v5, "token"

    const-string v6, "()I"

    invoke-virtual {v7, v4, v2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 22
    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 23
    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v2

    const/16 v2, 0x15

    const/4 v5, 0x4

    if-nez v0, :cond_5

    .line 24
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 25
    invoke-virtual {v7, v2, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 26
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "isEnabled"

    const-string v5, "(II)Z"

    invoke-virtual {v7, v4, v0, v2, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 28
    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    :cond_5
    const/4 v0, 0x0

    .line 29
    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v2, 0x2

    .line 31
    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v2, 0x3

    .line 32
    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 33
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v0, 0xb7

    .line 34
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v15, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v5, v6, v15}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deserialzeArrayMapping"

    .line 35
    invoke-virtual {v7, v0, v2, v6, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    .line 36
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 37
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 38
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 39
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "isEnabled"

    const-string v2, "(I)Z"

    invoke-virtual {v7, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0x9a

    .line 42
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xc8

    .line 43
    invoke-virtual {v7, v1, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 44
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 45
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 46
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanType"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-virtual {v7, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0xa0

    .line 50
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xc8

    .line 51
    invoke-virtual {v7, v1, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 52
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 54
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "()"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getContext"

    invoke-virtual {v7, v4, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mark_context"

    .line 55
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 56
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const-string v0, "matchedCount"

    .line 57
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x36

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 58
    invoke-direct {v8, v9, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 60
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, "()"

    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getContext"

    invoke-virtual {v7, v4, v0, v6, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "context"

    .line 61
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v0, "context"

    .line 63
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v0, "instance"

    .line 64
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 65
    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 66
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, "("

    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    .line 67
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    .line 68
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setContext"

    .line 69
    invoke-virtual {v7, v4, v0, v6, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "childContext"

    .line 70
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 71
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 72
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb4

    const-string v15, "matchStat"

    const-string v6, "I"

    invoke-virtual {v7, v1, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 74
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0xa0

    .line 75
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xc8

    .line 76
    invoke-virtual {v7, v1, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 77
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x3

    .line 78
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 79
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    .line 80
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    array-length v5, v1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_6

    .line 81
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_asm_flag_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v1, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    add-int/lit8 v1, v1, 0x20

    const/4 v0, 0x3

    goto :goto_2

    .line 83
    :cond_6
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "isEnabled"

    const-string v2, "(I)Z"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initStringFieldAsEmpty"

    .line 86
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_d

    .line 87
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    aget-object v1, v1, v0

    .line 88
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 89
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_c

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_c

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_c

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_7

    goto/16 :goto_6

    .line 90
    :cond_7
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_8

    const/16 v2, 0x9

    .line 91
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v2, 0x37

    const/4 v3, 0x2

    .line 92
    invoke-virtual {v9, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_4

    .line 93
    :cond_8
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_9

    const/16 v2, 0xb

    .line 94
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v2, 0x38

    .line 95
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_4

    .line 96
    :cond_9
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_a

    const/16 v2, 0xe

    .line 97
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v2, 0x39

    const/4 v3, 0x2

    .line 98
    invoke-virtual {v9, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_4
    move-object/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    goto/16 :goto_7

    .line 99
    :cond_a
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_b

    .line 100
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 101
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move-object/from16 p1, v11

    const-string v11, "initStringFieldAsEmpty"

    .line 102
    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v16, v12

    const/16 v12, 0x15

    invoke-virtual {v7, v12, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v11, 0x99

    .line 103
    invoke-virtual {v7, v11, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 104
    invoke-direct {v8, v7, v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 105
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x19

    invoke-virtual {v7, v12, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 106
    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v12, "stringDefaultValue"

    move-object/from16 v18, v13

    const-string v13, "()Ljava/lang/String;"

    move-object/from16 v19, v10

    const/16 v10, 0xb6

    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xa7

    .line 107
    invoke-virtual {v7, v10, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 108
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v4, 0x1

    .line 109
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 110
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_5

    :cond_b
    move-object/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    const/4 v3, 0x1

    .line 111
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    :goto_5
    const/16 v3, 0xc0

    .line 112
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    .line 113
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    const/4 v2, 0x3

    .line 114
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 115
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x36

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, p1

    move-object/from16 v12, v16

    move-object/from16 v13, v18

    move-object/from16 v10, v19

    goto/16 :goto_3

    :cond_d
    move-object/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    const/4 v0, 0x0

    move v10, v0

    :goto_8
    if-ge v10, v5, :cond_28

    .line 116
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    aget-object v4, v0, v10

    .line 117
    iget-object v11, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 118
    iget-object v0, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 119
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 120
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "[C"

    if-ne v11, v2, :cond_e

    .line 121
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 122
    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 123
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldBoolean"

    const-string v3, "([C)Z"

    const/16 v11, 0xb6

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v2, 0x36

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_9

    .line 126
    :cond_e
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v12, "([C)I"

    const-string v13, "scanFieldInt"

    if-ne v11, v2, :cond_f

    .line 127
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 128
    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 129
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb6

    invoke-virtual {v7, v2, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v2, 0x36

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_9
    move-object/from16 v22, v1

    move/from16 v21, v5

    goto/16 :goto_a

    .line 132
    :cond_f
    const-class v2, Ljava/lang/Byte;

    const/16 v20, 0x5

    move/from16 v21, v5

    const-string v5, "valueOf"

    move-object/from16 v22, v1

    const/16 v1, 0xb8

    if-ne v11, v2, :cond_10

    .line 133
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 134
    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 135
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb6

    invoke-virtual {v7, v2, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Byte"

    const-string v2, "(B)Ljava/lang/Byte;"

    .line 137
    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 139
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 140
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 141
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v1, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 143
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 145
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 146
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_a

    .line 147
    :cond_10
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_11

    .line 148
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 149
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 150
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb6

    invoke-virtual {v7, v1, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 153
    :cond_11
    const-class v2, Ljava/lang/Short;

    if-ne v11, v2, :cond_12

    .line 154
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 155
    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 156
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb6

    invoke-virtual {v7, v2, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Short"

    const-string v2, "(S)Ljava/lang/Short;"

    .line 158
    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 160
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 161
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 162
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v1, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 164
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 166
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 167
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_a

    .line 168
    :cond_12
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_13

    .line 169
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 170
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 171
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb6

    invoke-virtual {v7, v1, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 174
    :cond_13
    const-class v2, Ljava/lang/Integer;

    if-ne v11, v2, :cond_14

    .line 175
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 177
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb6

    invoke-virtual {v7, v2, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Integer"

    const-string v2, "(I)Ljava/lang/Integer;"

    .line 179
    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 181
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 182
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 183
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v1, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 185
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 187
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 188
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_a

    .line 189
    :cond_14
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_15

    .line 190
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 191
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 192
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldLong"

    const-string v2, "([C)J"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x37

    const/4 v1, 0x2

    .line 194
    invoke-virtual {v9, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 195
    :cond_15
    const-class v2, Ljava/lang/Long;

    if-ne v11, v2, :cond_16

    .line 196
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 197
    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 198
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldLong"

    const-string v3, "([C)J"

    const/16 v11, 0xb6

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Long"

    const-string v2, "(J)Ljava/lang/Long;"

    .line 200
    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 202
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 203
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 204
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v1, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 206
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 208
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 209
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_a

    .line 210
    :cond_16
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_17

    .line 211
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 212
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 213
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldFloat"

    const-string v2, "([C)F"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 215
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 216
    :cond_17
    const-class v2, Ljava/lang/Float;

    if-ne v11, v2, :cond_18

    .line 217
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 218
    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 219
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldFloat"

    const-string v3, "([C)F"

    const/16 v11, 0xb6

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Float"

    const-string v2, "(F)Ljava/lang/Float;"

    .line 221
    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 223
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 224
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 225
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v1, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 227
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 229
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 230
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_a

    .line 231
    :cond_18
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_19

    .line 232
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 233
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 234
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldDouble"

    const-string v2, "([C)D"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x39

    const/4 v1, 0x2

    .line 236
    invoke-virtual {v9, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 237
    :cond_19
    const-class v2, Ljava/lang/Double;

    if-ne v11, v2, :cond_1a

    .line 238
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 239
    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 240
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldDouble"

    const-string v3, "([C)D"

    const/16 v11, 0xb6

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Double"

    const-string v2, "(D)Ljava/lang/Double;"

    .line 242
    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 244
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 245
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 246
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v1, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 248
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 249
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 250
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 251
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_a

    .line 252
    :cond_1a
    const-class v1, Ljava/lang/String;

    if-ne v11, v1, :cond_1b

    .line 253
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 254
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 255
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldString"

    const-string v2, "([C)Ljava/lang/String;"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 258
    :cond_1b
    const-class v1, Ljava/util/Date;

    if-ne v11, v1, :cond_1c

    .line 259
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 260
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 261
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldDate"

    const-string v2, "([C)Ljava/util/Date;"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 264
    :cond_1c
    const-class v1, Ljava/util/UUID;

    if-ne v11, v1, :cond_1d

    .line 265
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 266
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 267
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldUUID"

    const-string v2, "([C)Ljava/util/UUID;"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 270
    :cond_1d
    const-class v1, Ljava/math/BigDecimal;

    if-ne v11, v1, :cond_1e

    .line 271
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 272
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 273
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldDecimal"

    const-string v2, "([C)Ljava/math/BigDecimal;"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 276
    :cond_1e
    const-class v1, Ljava/math/BigInteger;

    if-ne v11, v1, :cond_1f

    .line 277
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 278
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 279
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldBigInteger"

    const-string v2, "([C)Ljava/math/BigInteger;"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 282
    :cond_1f
    const-class v1, [I

    if-ne v11, v1, :cond_20

    .line 283
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 284
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 285
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldIntArray"

    const-string v2, "([C)[I"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 288
    :cond_20
    const-class v1, [F

    if-ne v11, v1, :cond_21

    .line 289
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 290
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 291
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldFloatArray"

    const-string v2, "([C)[F"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 294
    :cond_21
    const-class v1, [[F

    if-ne v11, v1, :cond_22

    .line 295
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 296
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 297
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldFloatArray2"

    const-string v2, "([C)[[F"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 300
    :cond_22
    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 301
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 302
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 303
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 304
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {v8, v9, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 306
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 307
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")Ljava/lang/Enum;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanEnum"

    const/16 v3, 0xb6

    .line 308
    invoke-virtual {v7, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    .line 309
    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    .line 310
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_a

    .line 311
    :cond_23
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 312
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x0

    .line 313
    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 314
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xb4

    invoke-virtual {v7, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v12

    .line 316
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_25

    .line 317
    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 318
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "([CLjava/lang/Class;)"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    .line 319
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanFieldStringArray"

    const/16 v3, 0xb6

    .line 320
    invoke-virtual {v7, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 322
    :goto_a
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 323
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v3, 0x9e

    .line 325
    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 326
    invoke-direct {v8, v7, v9, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 327
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 328
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 329
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-virtual {v7, v2, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x59

    .line 330
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 331
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, -0x1

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    move-object/from16 v13, v19

    .line 333
    invoke-virtual {v7, v0, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 334
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 335
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb4

    invoke-virtual {v7, v1, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9e

    move-object/from16 v1, v22

    .line 336
    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "matchedCount"

    .line 337
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x15

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x4

    .line 338
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v2, 0x60

    .line 339
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const-string v2, "matchedCount"

    .line 340
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x36

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 341
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 342
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-virtual {v7, v3, v2, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    move-object/from16 v5, v18

    .line 344
    invoke-virtual {v7, v0, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 345
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    add-int/lit8 v0, v21, -0x1

    if-ne v10, v0, :cond_24

    .line 346
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 347
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb4

    invoke-virtual {v7, v1, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 349
    invoke-virtual {v7, v0, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    :cond_24
    move-object/from16 v20, v6

    move-object v12, v7

    move-object/from16 v18, v14

    move/from16 v19, v21

    move-object v14, v5

    goto :goto_b

    :cond_25
    move-object/from16 v5, v18

    move-object/from16 v13, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v7

    move-object v3, v13

    move-object/from16 v18, v14

    move/from16 v19, v21

    move-object v14, v5

    move-object v5, v11

    move-object/from16 v20, v6

    move-object v6, v12

    move-object v12, v7

    move v7, v10

    .line 350
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V

    add-int/lit8 v5, v19, -0x1

    if-ne v10, v5, :cond_27

    .line 351
    invoke-direct {v8, v9, v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_b

    :cond_26
    move-object/from16 v20, v6

    move-object v12, v7

    move-object/from16 v13, v19

    move/from16 v19, v21

    move-object/from16 v23, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object v5, v11

    move v6, v10

    .line 352
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    add-int/lit8 v5, v19, -0x1

    if-ne v10, v5, :cond_27

    .line 353
    invoke-direct {v8, v9, v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V

    :cond_27
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object v7, v12

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v19, v13

    move-object/from16 v23, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v23

    goto/16 :goto_8

    :cond_28
    move-object v12, v7

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move/from16 v19, v5

    const/16 v0, 0x19

    .line 354
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 355
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 356
    invoke-direct {v8, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    :cond_29
    move-object/from16 v1, v16

    .line 357
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 358
    invoke-direct {v8, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const-string v1, "instance"

    .line 359
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 360
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2a

    .line 361
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "()"

    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 362
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb6

    .line 363
    invoke-virtual {v12, v4, v2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/16 v1, 0xb0

    .line 364
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 365
    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 366
    invoke-direct {v8, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const/4 v1, 0x0

    .line 367
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x1

    .line 368
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x2

    .line 369
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x3

    .line 370
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v1, "instance"

    .line 371
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x15

    const/4 v2, 0x4

    .line 372
    invoke-virtual {v12, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 373
    div-int/lit8 v5, v19, 0x20

    if-eqz v19, :cond_2b

    .line 374
    rem-int/lit8 v1, v19, 0x20

    if-eqz v1, :cond_2b

    add-int/lit8 v5, v5, 0x1

    :cond_2b
    const/4 v1, 0x1

    if-ne v5, v1, :cond_2c

    .line 375
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    goto :goto_c

    :cond_2c
    const/16 v1, 0x10

    .line 376
    invoke-virtual {v12, v1, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    :goto_c
    const/16 v1, 0xbc

    const/16 v3, 0xa

    .line 377
    invoke-virtual {v12, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v5, :cond_2f

    const/16 v3, 0x59

    .line 378
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    if-nez v1, :cond_2d

    const/4 v3, 0x3

    .line 379
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    goto :goto_e

    :cond_2d
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2e

    .line 380
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    goto :goto_e

    :cond_2e
    const/16 v3, 0x10

    .line 381
    invoke-virtual {v12, v3, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    .line 382
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_asm_flag_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x15

    invoke-virtual {v12, v4, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v3, 0x4f

    .line 383
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 384
    :cond_2f
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;"

    invoke-static {v3, v4, v5}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parseRest"

    const/16 v5, 0xb6

    invoke-virtual {v12, v5, v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc0

    .line 385
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb0

    .line 386
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    move-object/from16 v1, p1

    .line 387
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x0

    .line 388
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x1

    .line 389
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x2

    .line 390
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x3

    .line 391
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x15

    .line 392
    invoke-virtual {v12, v0, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0xb7

    .line 393
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-static {v2, v3, v4}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deserialze"

    invoke-virtual {v12, v0, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    .line 394
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v0, 0xa

    .line 395
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$100(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMaxs(II)V

    .line 396
    invoke-virtual {v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitEnd()V

    return-void
.end method

.method private _deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1
    const-class v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    new-instance v5, Lcom/alibaba/fastjson/asm/MethodWriter;

    const-string v0, "(L"

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v2, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x1

    const-string v12, "deserialzeArrayMapping"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v5

    move-object/from16 v10, p1

    move v11, v0

    invoke-direct/range {v9 .. v15}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-direct {v6, v7, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const-string v9, "lexer"

    .line 3
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 4
    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 5
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, "()"

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb6

    const-string v10, "getSymbolTable"

    invoke-virtual {v5, v4, v1, v10, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v3, "("

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v10, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")Ljava/lang/String;"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanTypeName"

    invoke-virtual {v5, v4, v1, v10, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "typeName"

    .line 7
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-virtual {v5, v3, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 8
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v10, "typeName"

    .line 9
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v2, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v10, 0xc6

    .line 10
    invoke-virtual {v5, v10, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 11
    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 12
    sget-object v10, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v11, "()"

    invoke-static {v11}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getConfig"

    invoke-virtual {v5, v4, v10, v12, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 13
    invoke-virtual {v5, v2, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 14
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xb4

    const-string v14, "beanInfo"

    invoke-virtual {v5, v13, v11, v14, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "typeName"

    .line 15
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v2, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 16
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "("

    invoke-static {v12}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-class v13, Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 17
    invoke-static {v13}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v13}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "Ljava/lang/String;)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xb8

    const-string v14, "getSeeAlso"

    .line 18
    invoke-virtual {v5, v13, v11, v14, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "userTypeDeser"

    .line 19
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v3, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v3, "userTypeDeser"

    .line 20
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 21
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0xc1

    invoke-virtual {v5, v11, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v3, 0x99

    .line 22
    invoke-virtual {v5, v3, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v3, "userTypeDeser"

    .line 23
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 24
    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x2

    .line 25
    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 26
    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x4

    .line 27
    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 28
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(L"

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v11, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v2, v3, v11}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deserialzeArrayMapping"

    .line 29
    invoke-virtual {v5, v4, v0, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    .line 30
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 31
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 32
    invoke-direct {v6, v7, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 33
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    iget-object v11, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 34
    array-length v12, v11

    :goto_0
    const-string v0, "ch"

    const-string v1, "(I)V"

    const-string v2, "()C"

    if-ge v10, v12, :cond_1c

    add-int/lit8 v3, v12, -0x1

    if-ne v10, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v13, v3

    if-eqz v13, :cond_1

    const/16 v3, 0x5d

    goto :goto_2

    :cond_1
    const/16 v3, 0x2c

    .line 35
    :goto_2
    aget-object v4, v11, v10

    .line 36
    iget-object v14, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 37
    iget-object v15, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 p1, v11

    .line 38
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v14, v11, :cond_1b

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v14, v11, :cond_1b

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_2

    goto/16 :goto_b

    .line 39
    :cond_2
    const-class v11, Ljava/lang/Byte;

    move/from16 v16, v12

    const-string v12, "I"

    move/from16 v17, v13

    const-string v13, "matchStat"

    move-object/from16 v18, v1

    const-string v1, "valueOf"

    if-ne v14, v11, :cond_3

    .line 40
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 41
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 42
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanInt"

    const-string v3, "(C)I"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Byte"

    const-string v2, "(B)Ljava/lang/Byte;"

    const/16 v3, 0xb8

    .line 43
    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 45
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 46
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 47
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 49
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 51
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 52
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .line 53
    :cond_3
    const-class v11, Ljava/lang/Short;

    if-ne v14, v11, :cond_4

    .line 54
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 55
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 56
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanInt"

    const-string v3, "(C)I"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Short"

    const-string v2, "(S)Ljava/lang/Short;"

    const/16 v3, 0xb8

    .line 57
    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 60
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 61
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 63
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 65
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 66
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .line 67
    :cond_4
    const-class v11, Ljava/lang/Integer;

    if-ne v14, v11, :cond_5

    .line 68
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 69
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 70
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanInt"

    const-string v3, "(C)I"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Integer"

    const-string v2, "(I)Ljava/lang/Integer;"

    const/16 v3, 0xb8

    .line 71
    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 73
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 74
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 75
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 77
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 79
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 80
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .line 81
    :cond_5
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_6

    .line 82
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 83
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanLong"

    const-string v2, "(C)J"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x37

    const/4 v1, 0x2

    .line 85
    invoke-virtual {v7, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 86
    :cond_6
    const-class v11, Ljava/lang/Long;

    if-ne v14, v11, :cond_7

    .line 87
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 88
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 89
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanLong"

    const-string v3, "(C)J"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Long"

    const-string v2, "(J)Ljava/lang/Long;"

    const/16 v3, 0xb8

    .line 90
    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 92
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 93
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 94
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 96
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 98
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 99
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .line 100
    :cond_7
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_8

    .line 101
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 102
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 103
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanBoolean"

    const-string v2, "(C)Z"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 105
    :cond_8
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_9

    .line 106
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 107
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 108
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFloat"

    const-string v2, "(C)F"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 109
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 110
    :cond_9
    const-class v11, Ljava/lang/Float;

    if-ne v14, v11, :cond_a

    .line 111
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 112
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 113
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFloat"

    const-string v3, "(C)F"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Float"

    const-string v2, "(F)Ljava/lang/Float;"

    const/16 v3, 0xb8

    .line 114
    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 116
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 117
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 118
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 120
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 122
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 123
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .line 124
    :cond_a
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_b

    .line 125
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 126
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 127
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDouble"

    const-string v2, "(C)D"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x39

    const/4 v1, 0x2

    .line 128
    invoke-virtual {v7, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_3

    .line 129
    :cond_b
    const-class v11, Ljava/lang/Double;

    if-ne v14, v11, :cond_c

    .line 130
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 131
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 132
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanDouble"

    const-string v3, "(C)D"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Double"

    const-string v2, "(D)Ljava/lang/Double;"

    const/16 v3, 0xb8

    .line 133
    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 135
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 136
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 137
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 139
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 141
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 142
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_3

    .line 143
    :cond_c
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_d

    .line 144
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 145
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 146
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanString"

    const-string v2, "(C)Ljava/lang/String;"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 147
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const-string v0, "java/lang/String"

    const-string v1, "charAt"

    const-string v2, "(I)C"

    .line 148
    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_3
    move-object/from16 v20, v8

    move/from16 v19, v10

    goto/16 :goto_5

    .line 150
    :cond_d
    const-class v11, Ljava/lang/String;

    if-ne v14, v11, :cond_e

    .line 151
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 152
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 153
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanString"

    const-string v2, "(C)Ljava/lang/String;"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_4

    .line 155
    :cond_e
    const-class v11, Ljava/math/BigDecimal;

    if-ne v14, v11, :cond_f

    .line 156
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 157
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 158
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDecimal"

    const-string v2, "(C)Ljava/math/BigDecimal;"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_4

    .line 160
    :cond_f
    const-class v11, Ljava/util/Date;

    if-ne v14, v11, :cond_10

    .line 161
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 162
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 163
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDate"

    const-string v2, "(C)Ljava/util/Date;"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_4

    .line 165
    :cond_10
    const-class v11, Ljava/util/UUID;

    if-ne v14, v11, :cond_11

    .line 166
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 167
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 168
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanUUID"

    const-string v2, "(C)Ljava/util/UUID;"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_4
    move-object v12, v5

    move-object/from16 v20, v8

    goto/16 :goto_c

    .line 170
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 171
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 172
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 173
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 174
    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move/from16 v19, v10

    .line 175
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v20, v8

    const/16 v8, 0x19

    invoke-virtual {v5, v8, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 176
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v10, "getCurrent"

    move-object/from16 v21, v1

    const/16 v1, 0xb6

    invoke-virtual {v5, v1, v8, v10, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 177
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 178
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x36

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x6e

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0x9f

    .line 180
    invoke-virtual {v5, v1, v15}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 181
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x22

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 183
    invoke-virtual {v5, v1, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 184
    invoke-virtual {v5, v15}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 185
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 186
    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 187
    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 188
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v2, "()"

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v8, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "getSymbolTable"

    const/16 v10, 0xb6

    invoke-virtual {v5, v10, v1, v8, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 189
    invoke-virtual {v5, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 190
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "(Ljava/lang/Class;"

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v8, Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 191
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "C)Ljava/lang/Enum;"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "scanEnum"

    .line 192
    invoke-virtual {v5, v10, v1, v8, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa7

    .line 193
    invoke-virtual {v5, v1, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 194
    invoke-virtual {v5, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 195
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x30

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa1

    .line 197
    invoke-virtual {v5, v1, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 198
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x39

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa3

    .line 200
    invoke-virtual {v5, v0, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 201
    invoke-direct {v6, v7, v5, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v0, 0xc0

    .line 202
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    .line 203
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 204
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 205
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanInt"

    const-string v2, "(C)I"

    const/16 v8, 0xb6

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(I)Ljava/lang/Enum;"

    move-object/from16 v2, v21

    invoke-virtual {v5, v8, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    .line 207
    invoke-virtual {v5, v0, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 208
    invoke-virtual {v5, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 209
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 210
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 211
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 212
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(L"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v3, ";C)Ljava/lang/Enum;"

    invoke-static {v1, v2, v3}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanEnum"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v5, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0xc0

    .line 214
    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    .line 215
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_5
    move/from16 v10, v19

    goto/16 :goto_9

    :cond_12
    move-object/from16 v20, v8

    move/from16 v19, v10

    .line 216
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 217
    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 218
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_15

    .line 219
    const-class v0, Ljava/util/List;

    if-eq v14, v0, :cond_14

    const-class v0, Ljava/util/Collections;

    if-eq v14, v0, :cond_14

    const-class v0, Ljava/util/ArrayList;

    if-ne v14, v0, :cond_13

    goto :goto_6

    .line 220
    :cond_13
    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 221
    const-class v0, Lcom/alibaba/fastjson/util/TypeUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createCollection"

    const-string v2, "(Ljava/lang/Class;)Ljava/util/Collection;"

    const/16 v8, 0xb8

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    :goto_6
    const/16 v0, 0xbb

    .line 222
    const-class v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 223
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v0, 0xb7

    .line 224
    const-class v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    const-string v8, "()V"

    invoke-virtual {v5, v0, v1, v2, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_7
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 226
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 227
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 228
    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 229
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanStringArray"

    const-string v3, "(Ljava/util/Collection;C)V"

    const/16 v8, 0xb6

    invoke-virtual {v5, v8, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 231
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 232
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 234
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 235
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 236
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 237
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_5

    .line 238
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 239
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x19

    invoke-virtual {v5, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 240
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v8, "token"

    const-string v10, "()I"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v3, v8, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "token"

    .line 241
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x36

    invoke-virtual {v5, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v3, "token"

    .line 242
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x15

    invoke-virtual {v5, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    if-nez v19, :cond_16

    const/16 v3, 0xe

    goto :goto_8

    :cond_16
    const/16 v3, 0x10

    .line 243
    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v8, 0x9f

    .line 244
    invoke-virtual {v5, v8, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v8, 0x1

    const/16 v10, 0x19

    .line 245
    invoke-virtual {v5, v10, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 247
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v8, "throwException"

    const/16 v10, 0xb6

    move-object/from16 v11, v18

    invoke-virtual {v5, v10, v3, v8, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 249
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 250
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v12, 0x19

    invoke-virtual {v5, v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 251
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "getCurrent"

    invoke-virtual {v5, v10, v8, v13, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x5b

    const/16 v13, 0x10

    .line 252
    invoke-virtual {v5, v13, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v8, 0xa0

    .line 253
    invoke-virtual {v5, v8, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 254
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 255
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "next"

    invoke-virtual {v5, v10, v8, v13, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x57

    .line 256
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 257
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v12, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v2, 0xe

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 259
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v8, "setToken"

    invoke-virtual {v5, v10, v2, v8, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa7

    .line 260
    invoke-virtual {v5, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 261
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 262
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0xe

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 264
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "nextToken"

    invoke-virtual {v5, v10, v1, v2, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x0

    move/from16 v10, v19

    .line 266
    invoke-direct {v6, v5, v14, v10, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    const/16 v1, 0x59

    .line 267
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 268
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 269
    invoke-direct {v6, v7, v5, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const/16 v2, 0x19

    .line 270
    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 271
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 272
    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 273
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(Ljava/util/Collection;"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 274
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V"

    invoke-static {v1, v2, v3}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseArray"

    const/16 v3, 0xb8

    .line 275
    invoke-virtual {v5, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    move-object v12, v5

    goto/16 :goto_c

    :cond_17
    move-object/from16 v11, v18

    move/from16 v10, v19

    .line 276
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 277
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0xe

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 279
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "nextToken"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v2, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 280
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 281
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 282
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 283
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFieldType"

    const-string v2, "(I)Ljava/lang/reflect/Type;"

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "parseObject"

    const-string v2, "(Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    .line 285
    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    .line 286
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_9

    .line 287
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 288
    new-instance v8, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 289
    const-class v1, Ljava/util/Date;

    if-ne v14, v1, :cond_19

    .line 290
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v11, 0x19

    invoke-virtual {v5, v11, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 291
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v11, "getCurrent"

    const/16 v12, 0xb6

    invoke-virtual {v5, v12, v1, v11, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x31

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 293
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xbb

    .line 294
    const-class v2, Ljava/util/Date;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0x59

    .line 295
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 296
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x10

    .line 297
    invoke-virtual {v5, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 298
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanLong"

    const-string v3, "(C)J"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb7

    .line 299
    const-class v2, Ljava/util/Date;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    const-string v11, "(J)V"

    invoke-virtual {v5, v1, v2, v3, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0xa7

    .line 301
    invoke-virtual {v5, v1, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 302
    :cond_19
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0xe

    .line 303
    invoke-direct {v6, v7, v5, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v4

    move-object v4, v14

    move-object v12, v5

    move v5, v10

    .line 304
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    .line 305
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 306
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "token"

    const-string v3, "()I"

    const/16 v4, 0xb6

    invoke-virtual {v12, v4, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    .line 308
    invoke-virtual {v12, v0, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x0

    .line 309
    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 310
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    if-nez v17, :cond_1a

    const/16 v0, 0x10

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    const/16 v0, 0xf

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    :goto_a
    const/16 v0, 0xb7

    .line 313
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "("

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 314
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "I)V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "check"

    .line 315
    invoke-virtual {v12, v0, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_c

    :cond_1b
    :goto_b
    move-object/from16 v20, v8

    move/from16 v16, v12

    move-object v12, v5

    .line 317
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 318
    invoke-virtual {v12, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 319
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanInt"

    const-string v2, "(C)I"

    const/16 v3, 0xb6

    invoke-virtual {v12, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, p1

    move-object v5, v12

    move/from16 v12, v16

    move-object/from16 v8, v20

    goto/16 :goto_0

    :cond_1c
    move-object v11, v1

    move-object v12, v5

    const/4 v1, 0x0

    .line 321
    invoke-direct {v6, v7, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V

    .line 322
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 323
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 324
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x19

    invoke-virtual {v12, v10, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 325
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "getCurrent"

    const/16 v14, 0xb6

    invoke-virtual {v12, v14, v8, v13, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x59

    .line 326
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 327
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v13, 0x36

    invoke-virtual {v12, v13, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v8, 0x2c

    const/16 v13, 0x10

    .line 328
    invoke-virtual {v12, v13, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v8, 0xa0

    .line 329
    invoke-virtual {v12, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 330
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v10, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 331
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v15, "next"

    invoke-virtual {v12, v14, v8, v15, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x57

    .line 332
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 333
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v10, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 334
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 335
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v10, "setToken"

    invoke-virtual {v12, v14, v8, v10, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xa7

    .line 336
    invoke-virtual {v12, v8, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 337
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 338
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x15

    invoke-virtual {v12, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v3, 0x5d

    .line 339
    invoke-virtual {v12, v13, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v3, 0xa0

    .line 340
    invoke-virtual {v12, v3, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 341
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x19

    invoke-virtual {v12, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 342
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v10, "next"

    const/16 v13, 0xb6

    invoke-virtual {v12, v13, v3, v10, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 343
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 344
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v3, 0xf

    .line 345
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 346
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v8, "setToken"

    invoke-virtual {v12, v13, v3, v8, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 347
    invoke-virtual {v12, v3, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 348
    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 349
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x15

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x1a

    const/16 v3, 0x10

    .line 350
    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0xa0

    .line 351
    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 352
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 353
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v4, "next"

    const/16 v8, 0xb6

    invoke-virtual {v12, v8, v0, v4, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x57

    .line 354
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 355
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x14

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 357
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "setToken"

    invoke-virtual {v12, v8, v0, v2, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    .line 358
    invoke-virtual {v12, v0, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 359
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 360
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 361
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "nextToken"

    invoke-virtual {v12, v8, v0, v1, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "instance"

    .line 364
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0xb0

    .line 365
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    .line 366
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$100(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMaxs(II)V

    .line 367
    invoke-virtual {v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitEnd()V

    return-void
.end method

.method private _deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/asm/Label;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 1
    const-class v8, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 2
    sget-object v10, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v11, 0xb6

    const-string v12, "matchField"

    const-string v13, "([C)Z"

    invoke-interface {v2, v11, v10, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x99

    .line 3
    invoke-interface {v2, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 4
    invoke-direct {v0, v2, v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 5
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v12, "lexer"

    .line 6
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x19

    invoke-interface {v2, v14, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7
    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v14, "token"

    const-string v15, "()I"

    invoke-interface {v2, v11, v13, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x8

    .line 8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v11, 0xa0

    .line 9
    invoke-interface {v2, v11, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 10
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    const/16 v13, 0x19

    invoke-interface {v2, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x10

    .line 11
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 12
    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "nextToken"

    move-object/from16 v16, v8

    const-string v8, "(I)V"

    const/16 v6, 0xb6

    invoke-interface {v2, v6, v11, v13, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xa7

    .line 13
    invoke-interface {v2, v6, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 14
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 15
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move-object/from16 v17, v9

    .line 16
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    const/16 v4, 0x19

    invoke-interface {v2, v4, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 17
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb6

    invoke-interface {v2, v9, v4, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    .line 19
    invoke-interface {v2, v4, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 20
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v9, 0x19

    invoke-interface {v2, v9, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xe

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 22
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb6

    invoke-interface {v2, v9, v4, v13, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 23
    invoke-direct {v0, v2, v5, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    const/16 v4, 0xa7

    .line 24
    invoke-interface {v2, v4, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 25
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 26
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v10, 0x19

    invoke-interface {v2, v10, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 27
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v9, v4, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0x9f

    .line 29
    invoke-interface {v2, v4, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 30
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v10, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 31
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v9, v4, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v9, 0xa0

    .line 33
    invoke-interface {v2, v9, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v9, 0x0

    .line 34
    invoke-direct {v0, v2, v5, v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    move-object/from16 v9, p4

    .line 35
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v10

    const/16 v3, 0x3a

    invoke-interface {v2, v3, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    move-object/from16 v3, p6

    .line 36
    invoke-direct {v0, v1, v2, v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/4 v10, 0x1

    move-object/from16 v18, v14

    const/16 v14, 0x19

    .line 37
    invoke-interface {v2, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 38
    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v10, 0x3

    .line 39
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v10, 0xb8

    const-string v14, "java/lang/Integer"

    move-object/from16 v19, v4

    const-string v4, "valueOf"

    move-object/from16 v20, v8

    const-string v8, "(I)Ljava/lang/Integer;"

    .line 40
    invoke-interface {v2, v10, v14, v4, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "(L"

    invoke-static {v8}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v14, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v8, v10, v14}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xb9

    const-string v14, "deserialze"

    invoke-interface {v2, v10, v4, v14, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "list_item_value"

    .line 42
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x3a

    invoke-interface {v2, v10, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 43
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v8

    const/16 v10, 0x19

    invoke-interface {v2, v10, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 44
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v10, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 45
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    const-string v10, "(Ljava/lang/Object;)Z"

    const-string v14, "add"

    if-eqz v8, :cond_0

    .line 46
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v21, v4

    const/16 v4, 0xb9

    invoke-interface {v2, v4, v8, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v21, v4

    .line 47
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0xb6

    invoke-interface {v2, v8, v4, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v4, 0x57

    .line 48
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0xa7

    move-object/from16 v8, v17

    .line 49
    invoke-interface {v2, v4, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 50
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v4, 0x0

    .line 51
    invoke-direct {v0, v2, v5, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    .line 52
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 53
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v4

    const/16 v6, 0x3a

    invoke-interface {v2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 54
    iget-object v4, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v4

    .line 55
    invoke-direct {v0, v1, v2, v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const-string v6, "fastMatchToken"

    if-eqz v4, :cond_1

    .line 56
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "getFastMatchToken"

    const/16 v3, 0xb9

    invoke-interface {v2, v3, v7, v11, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x36

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 58
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x19

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 59
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x15

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 60
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v7, 0xb6

    move-object/from16 v11, v20

    invoke-interface {v2, v7, v3, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v11, v20

    const/16 v3, 0x57

    .line 61
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    move-object/from16 v3, v19

    .line 62
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x36

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc

    .line 64
    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    :goto_1
    const/4 v3, 0x1

    const/16 v7, 0x19

    .line 65
    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 66
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v7, "()"

    invoke-static {v7}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v17, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getContext"

    move-object/from16 v17, v8

    const/16 v8, 0xb6

    invoke-interface {v2, v8, v3, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "listContext"

    .line 67
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v3, 0x1

    const/16 v5, 0x19

    .line 68
    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 69
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v3

    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 70
    iget-object v3, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 71
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, "(Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Lcom/alibaba/fastjson/parser/ParseContext;

    .line 72
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "setContext"

    .line 73
    invoke-interface {v2, v8, v3, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 74
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 75
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 76
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/4 v7, 0x3

    .line 77
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v7, "i"

    .line 78
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x36

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 79
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 80
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x19

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 81
    sget-object v7, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v8, 0xb6

    move-object/from16 v0, v18

    invoke-interface {v2, v8, v7, v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xf

    .line 82
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v7, 0x9f

    .line 83
    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v7, 0x0

    const/16 v8, 0x19

    .line 84
    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p7, v5

    iget-object v5, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v11

    const-string v11, "_asm_list_item_deser__"

    invoke-static {v8, v5, v11}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0xb4

    .line 87
    invoke-interface {v2, v11, v7, v5, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/16 v7, 0x19

    .line 88
    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 89
    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-string v5, "i"

    .line 90
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x15

    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb8

    const-string v7, "java/lang/Integer"

    const-string v8, "valueOf"

    const-string v11, "(I)Ljava/lang/Integer;"

    .line 91
    invoke-interface {v2, v5, v7, v8, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "(L"

    invoke-static {v7}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v11, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v7, v8, v11}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "deserialze"

    const/16 v11, 0xb9

    invoke-interface {v2, v11, v5, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v21

    .line 93
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x3a

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v7, "i"

    .line 94
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    invoke-interface {v2, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    .line 95
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v7

    const/16 v8, 0x19

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 96
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 97
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb9

    invoke-interface {v2, v7, v5, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x57

    const/16 v7, 0xb6

    goto :goto_2

    .line 99
    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb6

    invoke-interface {v2, v7, v5, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x57

    .line 100
    :goto_2
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x1

    .line 101
    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 102
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v5

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 103
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v9, "checkListResolve"

    const-string v10, "(Ljava/util/Collection;)V"

    invoke-interface {v2, v7, v5, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 105
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v7, v5, v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xa0

    .line 107
    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    if-eqz v4, :cond_3

    .line 108
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v8, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 109
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x15

    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 110
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    move-object/from16 v5, v20

    invoke-interface {v2, v7, v4, v13, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa7

    move-object v5, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_3
    const/16 v4, 0xc

    move-object v5, v0

    move-object/from16 v0, p0

    .line 111
    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    const/16 v4, 0xa7

    .line 112
    :goto_3
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    move-object/from16 v3, p7

    .line 113
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v3, 0x1

    .line 114
    invoke-interface {v2, v8, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v3, "listContext"

    .line 115
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v8, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 116
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, "("

    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")V"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "setContext"

    const/16 v7, 0xb6

    invoke-interface {v2, v7, v3, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 118
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v7, v3, v5, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v3, 0xa0

    move-object/from16 v4, p3

    .line 120
    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 121
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    move-object/from16 v1, v17

    .line 122
    invoke-interface {v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/asm/Label;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    .line 1
    const-class v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const-class v10, Lcom/alibaba/fastjson/parser/ParseContext;

    const-class v11, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 2
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v1, "lexer"

    .line 3
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v13, 0x19

    invoke-interface {v7, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x0

    .line 4
    invoke-interface {v7, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb4

    const-string v4, "[C"

    invoke-interface {v7, v3, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v14, 0xb6

    const-string v2, "matchField"

    const-string v3, "([C)Z"

    invoke-interface {v7, v14, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9a

    .line 7
    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v15, 0x1

    .line 8
    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 9
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xa7

    .line 10
    invoke-interface {v7, v1, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 11
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    move-object/from16 v5, p0

    move/from16 v4, p6

    .line 12
    invoke-direct {v5, v7, v6, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    const-string v0, "matchedCount"

    .line 13
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x4

    .line 14
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x60

    .line 15
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 16
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    .line 18
    invoke-interface {v7, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 19
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "getResolveStatus"

    const-string v2, "()I"

    invoke-interface {v7, v14, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 21
    invoke-interface {v7, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 22
    invoke-interface {v7, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 23
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "()"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLastResolveTask"

    invoke-interface {v7, v14, v0, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resolveTask"

    .line 24
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 25
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v13, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 26
    invoke-interface {v7, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 27
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getContext"

    invoke-interface {v7, v14, v2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb5

    const-string v4, "ownerContext"

    invoke-interface {v7, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 30
    invoke-interface {v7, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 31
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 32
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(Ljava/lang/String;)"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFieldDeserializer"

    .line 34
    invoke-interface {v7, v14, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fieldDeserializer"

    invoke-interface {v7, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {v7, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "setResolveStatus"

    const-string v2, "(I)V"

    invoke-interface {v7, v14, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-interface {v7, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v3, 0x19

    const/4 v4, 0x0

    .line 2
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    const-string v8, "_asm_list_item_deser__"

    invoke-static {v6, v7, v8}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xb4

    .line 5
    invoke-interface {p2, v9, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc7

    .line 6
    invoke-interface {p2, v5, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 7
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v5, 0x1

    .line 8
    invoke-interface {p2, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v6, "()"

    invoke-static {v6}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb6

    const-string v10, "getConfig"

    invoke-interface {p2, v7, v5, v10, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object p4

    invoke-interface {p2, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "(Ljava/lang/reflect/Type;)"

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "getDeserializer"

    .line 13
    invoke-interface {p2, v7, p4, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v0, v5, v8}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb5

    .line 16
    invoke-interface {p2, v6, p4, v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 18
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 19
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {p4, p3, v8}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 20
    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    .line 21
    invoke-interface {p2, v9, p1, p3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 10

    .line 1
    const-class v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v3, 0x19

    const/4 v4, 0x0

    .line 2
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldDeserName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb4

    invoke-interface {p2, v8, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc7

    .line 4
    invoke-interface {p2, v5, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 5
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v5, 0x1

    .line 6
    invoke-interface {p2, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 7
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v6, "()"

    invoke-static {v6}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb6

    const-string v9, "getConfig"

    invoke-interface {p2, v7, v5, v9, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v5, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 9
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "(Ljava/lang/reflect/Type;)"

    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 10
    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getDeserializer"

    .line 11
    invoke-interface {p2, v7, v0, v6, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldDeserName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb5

    invoke-interface {p2, v7, v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 14
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldDeserName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v8, v0, p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    .line 1
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    const-class v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const-class v9, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v2

    array-length v2, v2

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    const-string v11, "[C"

    const/4 v12, 0x1

    if-ge v3, v2, :cond_0

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v4

    aget-object v4, v4, v3

    .line 3
    new-instance v5, Lcom/alibaba/fastjson/asm/FieldWriter;

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v1, v12, v4, v11}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v2

    array-length v2, v2

    move v3, v10

    :goto_1
    if-ge v3, v2, :cond_3

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v4

    aget-object v4, v4, v3

    .line 7
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 8
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    new-instance v5, Lcom/alibaba/fastjson/asm/FieldWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    const-string v13, "_asm_list_item_deser__"

    invoke-static {v6, v4, v13}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v12, v4, v6}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    goto :goto_2

    .line 13
    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/asm/FieldWriter;

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldDeserName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v12, v4, v6}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_3
    new-instance v13, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v2, 0x1

    const-string v14, "("

    invoke-static {v14}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")V"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "<init>"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0x19

    .line 18
    invoke-virtual {v13, v0, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 19
    invoke-virtual {v13, v0, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x2

    .line 20
    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0xb7

    .line 21
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 22
    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<init>"

    .line 23
    invoke-virtual {v13, v1, v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    array-length v1, v1

    move v2, v10

    :goto_3
    if-ge v2, v1, :cond_4

    .line 25
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    aget-object v3, v3, v2

    .line 26
    invoke-virtual {v13, v0, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    const-string v5, "java/lang/String"

    const-string v6, "toCharArray"

    const-string v8, "()[C"

    .line 28
    invoke-virtual {v13, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb5

    .line 29
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v4, v5, v3, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/16 v0, 0xb1

    .line 30
    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/4 v0, 0x4

    .line 31
    invoke-virtual {v13, v0, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMaxs(II)V

    .line 32
    invoke-virtual {v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitEnd()V

    return-void
.end method

.method private _isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V
    .locals 2

    const-string v0, "_asm_flag_"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p3, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x15

    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p2, 0x7e

    .line 3
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 p2, 0x99

    .line 4
    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 2
    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v4, 0x15

    const-string v5, "instance"

    const/16 v6, 0x19

    if-ne v1, v3, :cond_0

    .line 4
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 5
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_a

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_a

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_a

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    goto/16 :goto_1

    .line 8
    :cond_1
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    if-ne v1, v3, :cond_3

    .line 9
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x16

    .line 10
    invoke-virtual {p1, p3, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 11
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/16 v0, 0xb6

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 13
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-interface {p2, v0, p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const/16 p1, 0x57

    .line 16
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_2

    :cond_2
    const/16 p1, 0xb5

    .line 17
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 18
    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    .line 19
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 20
    :cond_3
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_4

    .line 21
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x17

    .line 22
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_2

    .line 24
    :cond_4
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_5

    .line 25
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x18

    .line 26
    invoke-virtual {p1, p3, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_2

    :cond_5
    if-ne v1, v0, :cond_6

    .line 28
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 29
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 32
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 33
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_2

    .line 35
    :cond_7
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 36
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 37
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v0, :cond_8

    .line 38
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xc0

    .line 39
    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_8
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 41
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_2

    .line 42
    :cond_9
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 43
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_2

    .line 45
    :cond_a
    :goto_1
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 46
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private _newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Ljava/lang/Class<",
            "*>;IZ)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "()V"

    const-string v2, "<init>"

    const/16 v3, 0xb7

    const/16 v4, 0x59

    const/16 v5, 0xbb

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    const-string p3, "java/util/ArrayList"

    .line 2
    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 3
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 4
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 6
    const-class p3, Ljava/util/LinkedList;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 7
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 8
    const-class p3, Ljava/util/LinkedList;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_1
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 11
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 12
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    const-class p3, Ljava/util/TreeSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 15
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 16
    const-class p3, Ljava/util/TreeSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_3
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    const-class p3, Ljava/util/LinkedHashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 19
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 20
    const-class p3, Ljava/util/LinkedHashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 21
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 22
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 23
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 p4, 0x19

    const/4 v0, 0x0

    .line 24
    invoke-interface {p1, p4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p3, 0xb6

    .line 26
    const-class p4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "getFieldType"

    const-string v1, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {p1, p3, p4, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0xb8

    .line 27
    const-class p4, Lcom/alibaba/fastjson/util/TypeUtils;

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "createCollection"

    const-string v1, "(Ljava/lang/reflect/Type;)Ljava/util/Collection;"

    invoke-interface {p1, p3, p4, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 p3, 0xc0

    .line 28
    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method private _quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V
    .locals 8

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v2, "lexer"

    .line 2
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 3
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v5, 0xb6

    const-string v6, "getCurrent"

    const-string v7, "()C"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x10

    const/16 v6, 0xc

    if-ne p3, v6, :cond_0

    const/16 v6, 0x7b

    .line 4
    invoke-interface {p2, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_0

    :cond_0
    const/16 v6, 0xe

    if-ne p3, v6, :cond_1

    const/16 v6, 0x5b

    .line 5
    invoke-interface {p2, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_0
    const/16 v3, 0xa0

    .line 6
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 7
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v6, "next"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 9
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 10
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 12
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v6, "setToken"

    const-string v7, "(I)V"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 13
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 14
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 15
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v4, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 17
    sget-object p1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string p3, "nextToken"

    invoke-interface {p2, v5, p1, p3, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private _quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v7, "lexer"

    .line 2
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x19

    invoke-interface {v1, v9, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 3
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v10, 0xb6

    const-string v11, "getCurrent"

    const-string v12, "()C"

    invoke-interface {v1, v10, v8, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x59

    .line 4
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v8, "ch"

    .line 5
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    const/16 v13, 0x36

    invoke-interface {v1, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x10

    const/16 v13, 0x2c

    .line 6
    invoke-interface {v1, v11, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xa0

    .line 7
    invoke-interface {v1, v13, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 8
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v9, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9
    sget-object v14, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v15, "next"

    invoke-interface {v1, v10, v14, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x57

    .line 10
    invoke-interface {v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 11
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v9, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 12
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 13
    sget-object v14, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v9, "setToken"

    const-string v13, "(I)V"

    invoke-interface {v1, v10, v14, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0xa7

    .line 14
    invoke-interface {v1, v14, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 15
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 16
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v14, 0x15

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x7d

    .line 17
    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    .line 18
    invoke-interface {v1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 19
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v11, 0x19

    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 20
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 21
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 22
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xd

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 24
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 25
    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 26
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 27
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x5d

    const/16 v4, 0x10

    .line 28
    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    .line 29
    invoke-interface {v1, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 30
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 31
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 32
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 33
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xf

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 35
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 36
    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 37
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 38
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x1a

    const/16 v4, 0x10

    .line 39
    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    .line 40
    invoke-interface {v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 41
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x14

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 43
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 44
    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 45
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 46
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 47
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "nextToken"

    const-string v3, "()V"

    invoke-interface {v1, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 3

    .line 1
    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb9

    goto :goto_0

    :cond_0
    const/16 v0, 0xb6

    :goto_0
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x57

    .line 5
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_1
    const/16 p1, 0xb5

    .line 6
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 7
    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private _setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 6

    .line 1
    const-class v0, Lcom/alibaba/fastjson/parser/ParseContext;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "context"

    .line 2
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 3
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, "("

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb6

    const-string v5, "setContext"

    invoke-interface {p2, v4, v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v3, "childContext"

    .line 5
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xc6

    .line 6
    invoke-interface {p2, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 7
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v3, "instance"

    .line 8
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v1, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb5

    const-string v1, "object"

    const-string v3, "Ljava/lang/Object;"

    invoke-interface {p2, v0, p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
    .locals 3

    const-string v0, "_asm_flag_"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p3, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    shl-int p3, v1, p3

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p3, 0x80

    .line 4
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x36

    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 4

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 1
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-class v1, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    const-string v3, "lexer"

    invoke-interface {p2, v2, v0, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xc0

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 4
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3a

    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method


# virtual methods
.method public createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 9

    .line 1
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FastjsonASMDeserializer_"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 7
    invoke-static {v1, v3, v0}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 8
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    const/16 v4, 0x31

    const/16 v5, 0x21

    .line 9
    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x3

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 11
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 12
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x5

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 13
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x4

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 14
    invoke-virtual {v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v4, v3}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 16
    const-class v3, Lcom/alibaba/fastjson/parser/ParserConfig;

    aput-object v3, v2, v4

    const-class v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not support type :"

    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
