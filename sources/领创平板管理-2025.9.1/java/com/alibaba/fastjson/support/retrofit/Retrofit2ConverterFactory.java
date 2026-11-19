package com.alibaba.fastjson.support.retrofit;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.huawei.hem.AbstractC1063jk;
import com.huawei.hem.AbstractC1139mk;
import com.huawei.hem.C0858bk;
import com.huawei.hem.C0948f6;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* loaded from: classes.dex */
public class Retrofit2ConverterFactory extends Converter.Factory {
    public FastJsonConfig fastJsonConfig;

    @Deprecated
    public int featureValues;

    @Deprecated
    public Feature[] features;

    @Deprecated
    public ParserConfig parserConfig;

    @Deprecated
    public SerializeConfig serializeConfig;

    @Deprecated
    public SerializerFeature[] serializerFeatures;
    public static final C0858bk MEDIA_TYPE = C0858bk.m1422b("application/json; charset=UTF-8");

    @Deprecated
    public static final Feature[] EMPTY_SERIALIZER_FEATURES = new Feature[0];

    public final class RequestBodyConverter<T> implements Converter<T, AbstractC1063jk> {
        public RequestBodyConverter() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: convert, reason: collision with other method in class */
        public /* bridge */ /* synthetic */ Object m5886convert(Object obj) {
            return convert((RequestBodyConverter<T>) obj);
        }

        public AbstractC1063jk convert(T t) throws IOException {
            try {
                return AbstractC1063jk.m2135d(Retrofit2ConverterFactory.MEDIA_TYPE, JSON.toJSONBytesWithFastJsonConfig(Retrofit2ConverterFactory.this.fastJsonConfig.getCharset(), t, Retrofit2ConverterFactory.this.fastJsonConfig.getSerializeConfig(), Retrofit2ConverterFactory.this.fastJsonConfig.getSerializeFilters(), Retrofit2ConverterFactory.this.fastJsonConfig.getDateFormat(), JSON.DEFAULT_GENERATE_FEATURE, Retrofit2ConverterFactory.this.fastJsonConfig.getSerializerFeatures()));
            } catch (Exception e) {
                StringBuilder sbM1765j = C0948f6.m1765j("Could not write JSON: ");
                sbM1765j.append(e.getMessage());
                throw new IOException(sbM1765j.toString(), e);
            }
        }
    }

    public final class ResponseBodyConverter<T> implements Converter<AbstractC1139mk, T> {
        public Type type;

        public ResponseBodyConverter(Type type) {
            this.type = type;
        }

        public T convert(AbstractC1139mk abstractC1139mk) throws IOException {
            try {
                try {
                    return (T) JSON.parseObject(abstractC1139mk.m2394c(), Retrofit2ConverterFactory.this.fastJsonConfig.getCharset(), this.type, Retrofit2ConverterFactory.this.fastJsonConfig.getParserConfig(), Retrofit2ConverterFactory.this.fastJsonConfig.getParseProcess(), JSON.DEFAULT_PARSER_FEATURE, Retrofit2ConverterFactory.this.fastJsonConfig.getFeatures());
                } catch (Exception e) {
                    throw new IOException("JSON parse error: " + e.getMessage(), e);
                }
            } finally {
                abstractC1139mk.close();
            }
        }
    }

    public Retrofit2ConverterFactory() {
        this.parserConfig = ParserConfig.getGlobalInstance();
        this.featureValues = JSON.DEFAULT_PARSER_FEATURE;
        this.fastJsonConfig = new FastJsonConfig();
    }

    public static Retrofit2ConverterFactory create() {
        return create(new FastJsonConfig());
    }

    public FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    @Deprecated
    public ParserConfig getParserConfig() {
        return this.fastJsonConfig.getParserConfig();
    }

    @Deprecated
    public int getParserFeatureValues() {
        return JSON.DEFAULT_PARSER_FEATURE;
    }

    @Deprecated
    public Feature[] getParserFeatures() {
        return this.fastJsonConfig.getFeatures();
    }

    @Deprecated
    public SerializeConfig getSerializeConfig() {
        return this.fastJsonConfig.getSerializeConfig();
    }

    @Deprecated
    public SerializerFeature[] getSerializerFeatures() {
        return this.fastJsonConfig.getSerializerFeatures();
    }

    public Converter<Object, AbstractC1063jk> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new RequestBodyConverter();
    }

    public Converter<AbstractC1139mk, Object> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new ResponseBodyConverter(type);
    }

    public Retrofit2ConverterFactory setFastJsonConfig(FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
        return this;
    }

    @Deprecated
    public Retrofit2ConverterFactory setParserConfig(ParserConfig parserConfig) {
        this.fastJsonConfig.setParserConfig(parserConfig);
        return this;
    }

    @Deprecated
    public Retrofit2ConverterFactory setParserFeatureValues(int i) {
        return this;
    }

    @Deprecated
    public Retrofit2ConverterFactory setParserFeatures(Feature[] featureArr) {
        this.fastJsonConfig.setFeatures(featureArr);
        return this;
    }

    @Deprecated
    public Retrofit2ConverterFactory setSerializeConfig(SerializeConfig serializeConfig) {
        this.fastJsonConfig.setSerializeConfig(serializeConfig);
        return this;
    }

    @Deprecated
    public Retrofit2ConverterFactory setSerializerFeatures(SerializerFeature[] serializerFeatureArr) {
        this.fastJsonConfig.setSerializerFeatures(serializerFeatureArr);
        return this;
    }

    public static Retrofit2ConverterFactory create(FastJsonConfig fastJsonConfig) {
        if (fastJsonConfig != null) {
            return new Retrofit2ConverterFactory(fastJsonConfig);
        }
        throw new NullPointerException("fastJsonConfig == null");
    }

    public Retrofit2ConverterFactory(FastJsonConfig fastJsonConfig) {
        this.parserConfig = ParserConfig.getGlobalInstance();
        this.featureValues = JSON.DEFAULT_PARSER_FEATURE;
        this.fastJsonConfig = fastJsonConfig;
    }
}
