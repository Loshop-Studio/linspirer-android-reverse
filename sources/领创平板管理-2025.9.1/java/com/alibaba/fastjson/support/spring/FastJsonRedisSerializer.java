package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.huawei.hem.C0948f6;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.SerializationException;

/* loaded from: classes.dex */
public class FastJsonRedisSerializer<T> implements RedisSerializer<T> {
    public FastJsonConfig fastJsonConfig = new FastJsonConfig();
    public Class<T> type;

    public FastJsonRedisSerializer(Class<T> cls) {
        this.type = cls;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public T deserialize(byte[] bArr) throws SerializationException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            return (T) JSON.parseObject(bArr, this.fastJsonConfig.getCharset(), this.type, this.fastJsonConfig.getParserConfig(), this.fastJsonConfig.getParseProcess(), JSON.DEFAULT_PARSER_FEATURE, this.fastJsonConfig.getFeatures());
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("Could not deserialize: ");
            sbM1765j.append(e.getMessage());
            throw new SerializationException(sbM1765j.toString(), e);
        }
    }

    public FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public byte[] serialize(T t) throws SerializationException {
        if (t == null) {
            return new byte[0];
        }
        try {
            return JSON.toJSONBytesWithFastJsonConfig(this.fastJsonConfig.getCharset(), t, this.fastJsonConfig.getSerializeConfig(), this.fastJsonConfig.getSerializeFilters(), this.fastJsonConfig.getDateFormat(), JSON.DEFAULT_GENERATE_FEATURE, this.fastJsonConfig.getSerializerFeatures());
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("Could not serialize: ");
            sbM1765j.append(e.getMessage());
            throw new SerializationException(sbM1765j.toString(), e);
        }
    }

    public void setFastJsonConfig(FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
    }
}
