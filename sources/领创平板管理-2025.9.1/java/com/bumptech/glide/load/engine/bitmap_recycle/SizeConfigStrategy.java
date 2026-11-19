package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.bumptech.glide.util.Util;
import com.huawei.hem.CompilerOutline;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

@TargetApi(19)
/* loaded from: classes.dex */
public class SizeConfigStrategy implements LruPoolStrategy {
    public static final int MAX_SIZE_MULTIPLE = 8;
    public static final Bitmap.Config[] ARGB_8888_IN_CONFIGS = {Bitmap.Config.ARGB_8888, null};
    public static final Bitmap.Config[] RGB_565_IN_CONFIGS = {Bitmap.Config.RGB_565};
    public static final Bitmap.Config[] ARGB_4444_IN_CONFIGS = {Bitmap.Config.ARGB_4444};
    public static final Bitmap.Config[] ALPHA_8_IN_CONFIGS = {Bitmap.Config.ALPHA_8};
    public final KeyPool keyPool = new KeyPool();
    public final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap<>();
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> sortedSizes = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$1 */
    public static /* synthetic */ class C07561 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class KeyPool extends BaseKeyPool<Key> {
        public Key get(int i, Bitmap.Config config) {
            Key key = get();
            key.init(i, config);
            return key;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        public Key create() {
            return new Key(this);
        }
    }

    private void decrementBitmapOfSize(Integer num, Bitmap.Config config) {
        NavigableMap<Integer, Integer> sizesForConfig = getSizesForConfig(config);
        Integer num2 = (Integer) sizesForConfig.get(num);
        if (num2.intValue() == 1) {
            sizesForConfig.remove(num);
        } else {
            sizesForConfig.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    private Key findBestKey(Key key, int i, Bitmap.Config config) {
        for (Bitmap.Config config2 : getInConfigs(config)) {
            Integer numCeilingKey = getSizesForConfig(config2).ceilingKey(Integer.valueOf(i));
            if (numCeilingKey != null && numCeilingKey.intValue() <= i * 8) {
                if (numCeilingKey.intValue() == i) {
                    if (config2 == null) {
                        if (config == null) {
                            return key;
                        }
                    } else if (config2.equals(config)) {
                        return key;
                    }
                }
                this.keyPool.offer(key);
                return this.keyPool.get(numCeilingKey.intValue(), config2);
            }
        }
        return key;
    }

    public static String getBitmapString(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    public static Bitmap.Config[] getInConfigs(Bitmap.Config config) {
        int i = C07561.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new Bitmap.Config[]{config} : ALPHA_8_IN_CONFIGS : ARGB_4444_IN_CONFIGS : RGB_565_IN_CONFIGS : ARGB_8888_IN_CONFIGS;
    }

    private NavigableMap<Integer, Integer> getSizesForConfig(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.sortedSizes.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.sortedSizes.put(config, treeMap);
        return treeMap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        int bitmapByteSize = Util.getBitmapByteSize(i, i2, config);
        Bitmap bitmap = this.groupedMap.get(findBestKey(this.keyPool.get(bitmapByteSize, config), bitmapByteSize, config));
        if (bitmap != null) {
            decrementBitmapOfSize(Integer.valueOf(Util.getBitmapByteSize(bitmap)), bitmap.getConfig());
            bitmap.reconfigure(i, i2, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return bitmap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(Bitmap bitmap) {
        return getBitmapString(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public void put(Bitmap bitmap) {
        Key key = this.keyPool.get(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
        this.groupedMap.put(key, bitmap);
        NavigableMap<Integer, Integer> sizesForConfig = getSizesForConfig(bitmap.getConfig());
        Integer num = (Integer) sizesForConfig.get(Integer.valueOf(key.size));
        sizesForConfig.put(Integer.valueOf(key.size), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public Bitmap removeLast() {
        Bitmap bitmapRemoveLast = this.groupedMap.removeLast();
        if (bitmapRemoveLast != null) {
            decrementBitmapOfSize(Integer.valueOf(Util.getBitmapByteSize(bitmapRemoveLast)), bitmapRemoveLast.getConfig());
        }
        return bitmapRemoveLast;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("SizeConfigStrategy{groupedMap=");
        sbM1765j.append(this.groupedMap);
        sbM1765j.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.sortedSizes.entrySet()) {
            sbM1765j.append(entry.getKey());
            sbM1765j.append('[');
            sbM1765j.append(entry.getValue());
            sbM1765j.append("], ");
        }
        if (!this.sortedSizes.isEmpty()) {
            sbM1765j.replace(sbM1765j.length() - 2, sbM1765j.length(), "");
        }
        sbM1765j.append(")}");
        return sbM1765j.toString();
    }

    public static final class Key implements Poolable {
        public Bitmap.Config config;
        public final KeyPool pool;
        public int size;

        public Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            if (this.size != key.size) {
                return false;
            }
            Bitmap.Config config = this.config;
            Bitmap.Config config2 = key.config;
            if (config == null) {
                if (config2 != null) {
                    return false;
                }
            } else if (!config.equals(config2)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int i = this.size * 31;
            Bitmap.Config config = this.config;
            return i + (config != null ? config.hashCode() : 0);
        }

        public void init(int i, Bitmap.Config config) {
            this.size = i;
            this.config = config;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void offer() {
            this.pool.offer(this);
        }

        public String toString() {
            return SizeConfigStrategy.getBitmapString(this.size, this.config);
        }

        public Key(KeyPool keyPool, int i, Bitmap.Config config) {
            this(keyPool);
            init(i, config);
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(int i, int i2, Bitmap.Config config) {
        return getBitmapString(Util.getBitmapByteSize(i, i2, config), config);
    }
}
