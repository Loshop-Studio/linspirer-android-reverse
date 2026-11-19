package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.IOUtils;
import com.huawei.hem.CompilerOutline;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.SerializationException;

/* loaded from: classes.dex */
public class GenericFastJsonRedisSerializer implements RedisSerializer<Object> {
    public static final ParserConfig defaultRedisConfig;

    static {
        ParserConfig parserConfig = new ParserConfig();
        defaultRedisConfig = parserConfig;
        parserConfig.setAutoTypeSupport(true);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public Object deserialize(byte[] bArr) throws SerializationException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            return JSON.parseObject(new String(bArr, IOUtils.UTF8), Object.class, defaultRedisConfig, new Feature[0]);
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Could not deserialize: ");
            sbM1765j.append(e.getMessage());
            throw new SerializationException(sbM1765j.toString(), e);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public byte[] serialize(Object obj) throws SerializationException {
        if (obj == null) {
            return new byte[0];
        }
        try {
            return JSON.toJSONBytes(obj, SerializerFeature.WriteClassName);
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Could not serialize: ");
            sbM1765j.append(e.getMessage());
            throw new SerializationException(sbM1765j.toString(), e);
        }
    }
}
