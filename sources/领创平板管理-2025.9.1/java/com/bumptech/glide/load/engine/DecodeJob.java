package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.util.LogTime;
import com.huawei.hem.C0948f6;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class DecodeJob<A, T, Z> {
    public static final FileOpener DEFAULT_FILE_OPENER = new FileOpener();
    public static final String TAG = "DecodeJob";
    public final DiskCacheProvider diskCacheProvider;
    public final DiskCacheStrategy diskCacheStrategy;
    public final DataFetcher<A> fetcher;
    public final FileOpener fileOpener;
    public final int height;
    public volatile boolean isCancelled;
    public final DataLoadProvider<A, T> loadProvider;
    public final Priority priority;
    public final EngineKey resultKey;
    public final ResourceTranscoder<T, Z> transcoder;
    public final Transformation<T> transformation;
    public final int width;

    public interface DiskCacheProvider {
        DiskCache getDiskCache();
    }

    public static class FileOpener {
        public OutputStream open(File file) {
            return new BufferedOutputStream(new FileOutputStream(file));
        }
    }

    public class SourceWriter<DataType> implements DiskCache.Writer {
        public final DataType data;
        public final Encoder<DataType> encoder;

        public SourceWriter(Encoder<DataType> encoder, DataType datatype) {
            this.encoder = encoder;
            this.data = datatype;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskCache.Writer
        public boolean write(File file) throws IOException {
            OutputStream outputStreamOpen = null;
            try {
                try {
                    outputStreamOpen = DecodeJob.this.fileOpener.open(file);
                    boolean zEncode = this.encoder.encode(this.data, outputStreamOpen);
                    if (outputStreamOpen == null) {
                        return zEncode;
                    }
                    try {
                        outputStreamOpen.close();
                        return zEncode;
                    } catch (IOException unused) {
                        return zEncode;
                    }
                } catch (FileNotFoundException e) {
                    if (Log.isLoggable(DecodeJob.TAG, 3)) {
                        Log.d(DecodeJob.TAG, "Failed to find file to write to disk cache", e);
                    }
                    if (outputStreamOpen != null) {
                        try {
                            outputStreamOpen.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return false;
                }
            } catch (Throwable th) {
                if (outputStreamOpen != null) {
                    try {
                        outputStreamOpen.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        }
    }

    public DecodeJob(EngineKey engineKey, int i, int i2, DataFetcher<A> dataFetcher, DataLoadProvider<A, T> dataLoadProvider, Transformation<T> transformation, ResourceTranscoder<T, Z> resourceTranscoder, DiskCacheProvider diskCacheProvider, DiskCacheStrategy diskCacheStrategy, Priority priority) {
        this(engineKey, i, i2, dataFetcher, dataLoadProvider, transformation, resourceTranscoder, diskCacheProvider, diskCacheStrategy, priority, DEFAULT_FILE_OPENER);
    }

    private Resource<T> cacheAndDecodeSourceData(A a) {
        long logTime = LogTime.getLogTime();
        this.diskCacheProvider.getDiskCache().put(this.resultKey.getOriginalKey(), new SourceWriter(this.loadProvider.getSourceEncoder(), a));
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Wrote source to cache", logTime);
        }
        long logTime2 = LogTime.getLogTime();
        Resource<T> resourceLoadFromCache = loadFromCache(this.resultKey.getOriginalKey());
        if (Log.isLoggable(TAG, 2) && resourceLoadFromCache != null) {
            logWithTimeAndKey("Decoded source from cache", logTime2);
        }
        return resourceLoadFromCache;
    }

    private Resource<T> decodeFromSourceData(A a) {
        if (this.diskCacheStrategy.cacheSource()) {
            return cacheAndDecodeSourceData(a);
        }
        long logTime = LogTime.getLogTime();
        Resource<T> resourceDecode = this.loadProvider.getSourceDecoder().decode(a, this.width, this.height);
        if (!Log.isLoggable(TAG, 2)) {
            return resourceDecode;
        }
        logWithTimeAndKey("Decoded from source", logTime);
        return resourceDecode;
    }

    private Resource<T> decodeSource() {
        try {
            long logTime = LogTime.getLogTime();
            A aLoadData = this.fetcher.loadData(this.priority);
            if (Log.isLoggable(TAG, 2)) {
                logWithTimeAndKey("Fetched data", logTime);
            }
            if (this.isCancelled) {
                return null;
            }
            return decodeFromSourceData(aLoadData);
        } finally {
            this.fetcher.cleanup();
        }
    }

    private Resource<T> loadFromCache(Key key) {
        File file = this.diskCacheProvider.getDiskCache().get(key);
        if (file == null) {
            return null;
        }
        try {
            Resource<T> resourceDecode = this.loadProvider.getCacheDecoder().decode(file, this.width, this.height);
            if (resourceDecode == null) {
            }
            return resourceDecode;
        } finally {
            this.diskCacheProvider.getDiskCache().delete(key);
        }
    }

    private void logWithTimeAndKey(String str, long j) {
        StringBuilder sbM1767l = C0948f6.m1767l(str, " in ");
        sbM1767l.append(LogTime.getElapsedMillis(j));
        sbM1767l.append(", key: ");
        sbM1767l.append(this.resultKey);
        Log.v(TAG, sbM1767l.toString());
    }

    private Resource<Z> transcode(Resource<T> resource) {
        if (resource == null) {
            return null;
        }
        return this.transcoder.transcode(resource);
    }

    private Resource<T> transform(Resource<T> resource) {
        if (resource == null) {
            return null;
        }
        Resource<T> resourceTransform = this.transformation.transform(resource, this.width, this.height);
        if (!resource.equals(resourceTransform)) {
            resource.recycle();
        }
        return resourceTransform;
    }

    private Resource<Z> transformEncodeAndTranscode(Resource<T> resource) {
        long logTime = LogTime.getLogTime();
        Resource<T> resourceTransform = transform(resource);
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Transformed resource from source", logTime);
        }
        writeTransformedToCache(resourceTransform);
        long logTime2 = LogTime.getLogTime();
        Resource<Z> resourceTranscode = transcode(resourceTransform);
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Transcoded transformed from source", logTime2);
        }
        return resourceTranscode;
    }

    private void writeTransformedToCache(Resource<T> resource) {
        if (resource == null || !this.diskCacheStrategy.cacheResult()) {
            return;
        }
        long logTime = LogTime.getLogTime();
        this.diskCacheProvider.getDiskCache().put(this.resultKey, new SourceWriter(this.loadProvider.getEncoder(), resource));
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Wrote transformed from source to cache", logTime);
        }
    }

    public void cancel() {
        this.isCancelled = true;
        this.fetcher.cancel();
    }

    public Resource<Z> decodeFromSource() {
        return transformEncodeAndTranscode(decodeSource());
    }

    public Resource<Z> decodeResultFromCache() {
        if (!this.diskCacheStrategy.cacheResult()) {
            return null;
        }
        long logTime = LogTime.getLogTime();
        Resource<T> resourceLoadFromCache = loadFromCache(this.resultKey);
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Decoded transformed from cache", logTime);
        }
        long logTime2 = LogTime.getLogTime();
        Resource<Z> resourceTranscode = transcode(resourceLoadFromCache);
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Transcoded transformed from cache", logTime2);
        }
        return resourceTranscode;
    }

    public Resource<Z> decodeSourceFromCache() {
        if (!this.diskCacheStrategy.cacheSource()) {
            return null;
        }
        long logTime = LogTime.getLogTime();
        Resource<T> resourceLoadFromCache = loadFromCache(this.resultKey.getOriginalKey());
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Decoded source from cache", logTime);
        }
        return transformEncodeAndTranscode(resourceLoadFromCache);
    }

    public DecodeJob(EngineKey engineKey, int i, int i2, DataFetcher<A> dataFetcher, DataLoadProvider<A, T> dataLoadProvider, Transformation<T> transformation, ResourceTranscoder<T, Z> resourceTranscoder, DiskCacheProvider diskCacheProvider, DiskCacheStrategy diskCacheStrategy, Priority priority, FileOpener fileOpener) {
        this.resultKey = engineKey;
        this.width = i;
        this.height = i2;
        this.fetcher = dataFetcher;
        this.loadProvider = dataLoadProvider;
        this.transformation = transformation;
        this.transcoder = resourceTranscoder;
        this.diskCacheProvider = diskCacheProvider;
        this.diskCacheStrategy = diskCacheStrategy;
        this.priority = priority;
        this.fileOpener = fileOpener;
    }
}
