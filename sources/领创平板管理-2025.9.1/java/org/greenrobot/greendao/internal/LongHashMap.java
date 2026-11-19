package org.greenrobot.greendao.internal;

import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.C0948f6;
import java.util.Arrays;
import org.greenrobot.greendao.DaoLog;

/* loaded from: classes.dex */
public final class LongHashMap<T> {
    public int capacity;
    public int size;
    public Entry<T>[] table;
    public int threshold;

    public static final class Entry<T> {
        public final long key;
        public Entry<T> next;
        public T value;

        public Entry(long j, T t, Entry<T> entry) {
            this.key = j;
            this.value = t;
            this.next = entry;
        }
    }

    public LongHashMap() {
        this(16);
    }

    public void clear() {
        this.size = 0;
        Arrays.fill(this.table, (Object) null);
    }

    public boolean containsKey(long j) {
        for (Entry<T> entry = this.table[((((int) (j >>> 32)) ^ ((int) j)) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % this.capacity]; entry != null; entry = entry.next) {
            if (entry.key == j) {
                return true;
            }
        }
        return false;
    }

    public T get(long j) {
        for (Entry<T> entry = this.table[((((int) (j >>> 32)) ^ ((int) j)) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % this.capacity]; entry != null; entry = entry.next) {
            if (entry.key == j) {
                return entry.value;
            }
        }
        return null;
    }

    public void logStats() {
        int i = 0;
        for (Entry<T> entry : this.table) {
            while (entry != null) {
                entry = entry.next;
                if (entry != null) {
                    i++;
                }
            }
        }
        StringBuilder sbM1765j = C0948f6.m1765j("load: ");
        sbM1765j.append(this.size / this.capacity);
        sbM1765j.append(", size: ");
        sbM1765j.append(this.size);
        sbM1765j.append(", capa: ");
        sbM1765j.append(this.capacity);
        sbM1765j.append(", collisions: ");
        sbM1765j.append(i);
        sbM1765j.append(", collision ratio: ");
        sbM1765j.append(i / this.size);
        DaoLog.m5859d(sbM1765j.toString());
    }

    public T put(long j, T t) {
        int i = ((((int) (j >>> 32)) ^ ((int) j)) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % this.capacity;
        Entry<T> entry = this.table[i];
        for (Entry<T> entry2 = entry; entry2 != null; entry2 = entry2.next) {
            if (entry2.key == j) {
                T t2 = entry2.value;
                entry2.value = t;
                return t2;
            }
        }
        this.table[i] = new Entry<>(j, t, entry);
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 <= this.threshold) {
            return null;
        }
        setCapacity(this.capacity * 2);
        return null;
    }

    public T remove(long j) {
        int i = ((((int) (j >>> 32)) ^ ((int) j)) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % this.capacity;
        Entry<T> entry = this.table[i];
        Entry<T> entry2 = null;
        while (entry != null) {
            Entry<T> entry3 = entry.next;
            if (entry.key == j) {
                if (entry2 == null) {
                    this.table[i] = entry3;
                } else {
                    entry2.next = entry3;
                }
                this.size--;
                return entry.value;
            }
            entry2 = entry;
            entry = entry3;
        }
        return null;
    }

    public void reserveRoom(int i) {
        setCapacity((i * 5) / 3);
    }

    public void setCapacity(int i) {
        Entry<T>[] entryArr = new Entry[i];
        int length = this.table.length;
        for (int i2 = 0; i2 < length; i2++) {
            Entry<T> entry = this.table[i2];
            while (entry != null) {
                long j = entry.key;
                int i3 = ((((int) j) ^ ((int) (j >>> 32))) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % i;
                Entry<T> entry2 = entry.next;
                entry.next = entryArr[i3];
                entryArr[i3] = entry;
                entry = entry2;
            }
        }
        this.table = entryArr;
        this.capacity = i;
        this.threshold = (i * 4) / 3;
    }

    public int size() {
        return this.size;
    }

    public LongHashMap(int i) {
        this.capacity = i;
        this.threshold = (i * 4) / 3;
        this.table = new Entry[i];
    }
}
