package com.loc;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.bumptech.glide.disklrucache.DiskLruCache;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;

/* compiled from: DiskLruCache.java */
/* renamed from: com.loc.aj */
/* loaded from: classes.dex */
public final class C1720aj implements Closeable {

    /* renamed from: e */
    public final File f4891e;

    /* renamed from: f */
    public final File f4892f;

    /* renamed from: g */
    public final File f4893g;

    /* renamed from: h */
    public final File f4894h;

    /* renamed from: j */
    public long f4896j;

    /* renamed from: m */
    public Writer f4899m;

    /* renamed from: p */
    public int f4902p;

    /* renamed from: a */
    public static final Pattern f4885a = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: b */
    public static final Charset f4886b = Charset.forName(Base64.PREFERRED_ENCODING);

    /* renamed from: c */
    public static final Charset f4887c = Charset.forName("UTF-8");

    /* renamed from: r */
    public static final ThreadFactory f4889r = new ThreadFactory() { // from class: com.loc.aj.1

        /* renamed from: a */
        public final AtomicInteger f4905a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "disklrucache#" + this.f4905a.getAndIncrement());
        }
    };

    /* renamed from: d */
    public static ThreadPoolExecutor f4888d = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), f4889r);

    /* renamed from: t */
    public static final OutputStream f4890t = new OutputStream() { // from class: com.loc.aj.3
        @Override // java.io.OutputStream
        public final void write(int i) {
        }
    };

    /* renamed from: l */
    public long f4898l = 0;

    /* renamed from: n */
    public int f4900n = 1000;

    /* renamed from: o */
    public final LinkedHashMap<String, c> f4901o = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: q */
    public long f4903q = 0;

    /* renamed from: s */
    public final Callable<Void> f4904s = new Callable<Void>() { // from class: com.loc.aj.2
        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() {
            synchronized (C1720aj.this) {
                if (C1720aj.this.f4899m == null) {
                    return null;
                }
                C1720aj.this.m4023l();
                if (C1720aj.this.m4021j()) {
                    C1720aj.this.m4020i();
                    C1720aj.m4012e(C1720aj.this);
                }
                return null;
            }
        }
    };

    /* renamed from: i */
    public final int f4895i = 1;

    /* renamed from: k */
    public final int f4897k = 1;

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.loc.aj$a */
    public final class a {

        /* renamed from: b */
        public final c f4908b;

        /* renamed from: c */
        public final boolean[] f4909c;

        /* renamed from: d */
        public boolean f4910d;

        /* renamed from: e */
        public boolean f4911e;

        /* compiled from: DiskLruCache.java */
        /* renamed from: com.loc.aj$a$a, reason: collision with other inner class name */
        public class C2087a extends FilterOutputStream {
            public C2087a(OutputStream outputStream) {
                super(outputStream);
            }

            public /* synthetic */ C2087a(a aVar, OutputStream outputStream, byte b) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    a.m4034c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() throws IOException {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    a.m4034c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    a.m4034c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    a.m4034c(a.this);
                }
            }
        }

        public a(c cVar) {
            this.f4908b = cVar;
            this.f4909c = cVar.f4921d ? null : new boolean[C1720aj.this.f4897k];
        }

        public /* synthetic */ a(C1720aj c1720aj, c cVar, byte b) {
            this(cVar);
        }

        /* renamed from: c */
        public static /* synthetic */ boolean m4034c(a aVar) {
            aVar.f4910d = true;
            return true;
        }

        /* renamed from: a */
        public final OutputStream m4035a() {
            FileOutputStream fileOutputStream;
            C2087a c2087a;
            if (C1720aj.this.f4897k <= 0) {
                throw new IllegalArgumentException("Expected index 0 to be greater than 0 and less than the maximum value count of " + C1720aj.this.f4897k);
            }
            synchronized (C1720aj.this) {
                if (this.f4908b.f4922e != this) {
                    throw new IllegalStateException();
                }
                byte b = 0;
                if (!this.f4908b.f4921d) {
                    this.f4909c[0] = true;
                }
                File fileM4051b = this.f4908b.m4051b(0);
                try {
                    fileOutputStream = new FileOutputStream(fileM4051b);
                } catch (FileNotFoundException unused) {
                    C1720aj.this.f4891e.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(fileM4051b);
                    } catch (FileNotFoundException unused2) {
                        return C1720aj.f4890t;
                    }
                }
                c2087a = new C2087a(this, fileOutputStream, b);
            }
            return c2087a;
        }

        /* renamed from: b */
        public final void m4036b() {
            if (this.f4910d) {
                C1720aj.this.m4002a(this, false);
                C1720aj.this.m4029c(this.f4908b.f4919b);
            } else {
                C1720aj.this.m4002a(this, true);
            }
            this.f4911e = true;
        }

        /* renamed from: c */
        public final void m4037c() {
            C1720aj.this.m4002a(this, false);
        }
    }

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.loc.aj$b */
    public final class b implements Closeable {

        /* renamed from: b */
        public final String f4914b;

        /* renamed from: c */
        public final long f4915c;

        /* renamed from: d */
        public final InputStream[] f4916d;

        /* renamed from: e */
        public final long[] f4917e;

        public b(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f4914b = str;
            this.f4915c = j;
            this.f4916d = inputStreamArr;
            this.f4917e = jArr;
        }

        public /* synthetic */ b(C1720aj c1720aj, String str, long j, InputStream[] inputStreamArr, long[] jArr, byte b) {
            this(str, j, inputStreamArr, jArr);
        }

        /* renamed from: a */
        public final InputStream m4038a() {
            return this.f4916d[0];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            for (InputStream inputStream : this.f4916d) {
                C1720aj.m4004a(inputStream);
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.loc.aj$c */
    public final class c {

        /* renamed from: b */
        public final String f4919b;

        /* renamed from: c */
        public final long[] f4920c;

        /* renamed from: d */
        public boolean f4921d;

        /* renamed from: e */
        public a f4922e;

        /* renamed from: f */
        public long f4923f;

        public c(String str) {
            this.f4919b = str;
            this.f4920c = new long[C1720aj.this.f4897k];
        }

        public /* synthetic */ c(C1720aj c1720aj, String str, byte b) {
            this(str);
        }

        /* renamed from: a */
        public static IOException m4041a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public static /* synthetic */ void m4042a(c cVar, String[] strArr) throws IOException {
            if (strArr.length != C1720aj.this.f4897k) {
                throw m4041a(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    cVar.f4920c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m4041a(strArr);
                }
            }
        }

        /* renamed from: a */
        public static /* synthetic */ boolean m4043a(c cVar) {
            cVar.f4921d = true;
            return true;
        }

        /* renamed from: a */
        public final File m4049a(int i) {
            return new File(C1720aj.this.f4891e, this.f4919b + "." + i);
        }

        /* renamed from: a */
        public final String m4050a() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.f4920c) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: b */
        public final File m4051b(int i) {
            return new File(C1720aj.this.f4891e, this.f4919b + "." + i + ".tmp");
        }
    }

    public C1720aj(File file, long j) {
        this.f4891e = file;
        this.f4892f = new File(file, DiskLruCache.JOURNAL_FILE);
        this.f4893g = new File(file, DiskLruCache.JOURNAL_FILE_TEMP);
        this.f4894h = new File(file, DiskLruCache.JOURNAL_FILE_BACKUP);
        this.f4896j = j;
    }

    /* renamed from: a */
    public static C1720aj m3999a(File file, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, DiskLruCache.JOURNAL_FILE_BACKUP);
        if (file2.exists()) {
            File file3 = new File(file, DiskLruCache.JOURNAL_FILE);
            if (file3.exists()) {
                file2.delete();
            } else {
                m4006a(file2, file3, false);
            }
        }
        C1720aj c1720aj = new C1720aj(file, j);
        if (c1720aj.f4892f.exists()) {
            try {
                c1720aj.m4018g();
                c1720aj.m4019h();
                c1720aj.f4899m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c1720aj.f4892f, true), f4886b));
                return c1720aj;
            } catch (Throwable unused) {
                c1720aj.m4030d();
            }
        }
        file.mkdirs();
        C1720aj c1720aj2 = new C1720aj(file, j);
        c1720aj2.m4020i();
        return c1720aj2;
    }

    /* renamed from: a */
    public static void m4001a() {
        ThreadPoolExecutor threadPoolExecutor = f4888d;
        if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        f4888d.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m4002a(a aVar, boolean z) {
        c cVar = aVar.f4908b;
        if (cVar.f4922e != aVar) {
            throw new IllegalStateException();
        }
        if (z && !cVar.f4921d) {
            for (int i = 0; i < this.f4897k; i++) {
                if (!aVar.f4909c[i]) {
                    aVar.m4037c();
                    throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i)));
                }
                if (!cVar.m4051b(i).exists()) {
                    aVar.m4037c();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f4897k; i2++) {
            File fileM4051b = cVar.m4051b(i2);
            if (!z) {
                m4005a(fileM4051b);
            } else if (fileM4051b.exists()) {
                File fileM4049a = cVar.m4049a(i2);
                fileM4051b.renameTo(fileM4049a);
                long j = cVar.f4920c[i2];
                long length = fileM4049a.length();
                cVar.f4920c[i2] = length;
                this.f4898l = (this.f4898l - j) + length;
            }
        }
        this.f4902p++;
        cVar.f4922e = null;
        if (cVar.f4921d || z) {
            c.m4043a(cVar);
            this.f4899m.write("CLEAN " + cVar.f4919b + cVar.m4050a() + '\n');
            if (z) {
                long j2 = this.f4903q;
                this.f4903q = 1 + j2;
                cVar.f4923f = j2;
            }
        } else {
            this.f4901o.remove(cVar.f4919b);
            this.f4899m.write("REMOVE " + cVar.f4919b + '\n');
        }
        this.f4899m.flush();
        if (this.f4898l > this.f4896j || m4021j()) {
            m4016f().submit(this.f4904s);
        }
    }

    /* renamed from: a */
    public static void m4004a(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static void m4005a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public static void m4006a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m4005a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: b */
    public static void m4008b(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                m4008b(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
            }
        }
    }

    /* renamed from: d */
    private synchronized a m4010d(String str) {
        m4022k();
        m4014e(str);
        c cVar = this.f4901o.get(str);
        byte b2 = 0;
        if (cVar == null) {
            cVar = new c(this, str, b2);
            this.f4901o.put(str, cVar);
        } else if (cVar.f4922e != null) {
            return null;
        }
        a aVar = new a(this, cVar, b2);
        cVar.f4922e = aVar;
        this.f4899m.write("DIRTY " + str + '\n');
        this.f4899m.flush();
        return aVar;
    }

    /* renamed from: e */
    public static /* synthetic */ int m4012e(C1720aj c1720aj) {
        c1720aj.f4902p = 0;
        return 0;
    }

    /* renamed from: e */
    public static void m4014e(String str) {
        if (f4885a.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    /* renamed from: f */
    public static ThreadPoolExecutor m4016f() {
        try {
            if (f4888d == null || f4888d.isShutdown()) {
                f4888d = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(256), f4889r);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f4888d;
    }

    /* renamed from: g */
    private void m4018g() throws IOException {
        String strM4054a;
        String strSubstring;
        C1721ak c1721ak = new C1721ak(new FileInputStream(this.f4892f), f4886b);
        try {
            String strM4054a2 = c1721ak.m4054a();
            String strM4054a3 = c1721ak.m4054a();
            String strM4054a4 = c1721ak.m4054a();
            String strM4054a5 = c1721ak.m4054a();
            String strM4054a6 = c1721ak.m4054a();
            if (!DiskLruCache.MAGIC.equals(strM4054a2) || !"1".equals(strM4054a3) || !Integer.toString(this.f4895i).equals(strM4054a4) || !Integer.toString(this.f4897k).equals(strM4054a5) || !"".equals(strM4054a6)) {
                throw new IOException("unexpected journal header: [" + strM4054a2 + ", " + strM4054a3 + ", " + strM4054a5 + ", " + strM4054a6 + "]");
            }
            byte b2 = 0;
            int i = 0;
            while (true) {
                try {
                    strM4054a = c1721ak.m4054a();
                    int iIndexOf = strM4054a.indexOf(32);
                    if (iIndexOf == -1) {
                        throw new IOException("unexpected journal line: ".concat(strM4054a));
                    }
                    int i2 = iIndexOf + 1;
                    int iIndexOf2 = strM4054a.indexOf(32, i2);
                    if (iIndexOf2 == -1) {
                        strSubstring = strM4054a.substring(i2);
                        if (iIndexOf == 6 && strM4054a.startsWith(DiskLruCache.REMOVE)) {
                            this.f4901o.remove(strSubstring);
                        }
                        i++;
                    } else {
                        strSubstring = strM4054a.substring(i2, iIndexOf2);
                    }
                    c cVar = this.f4901o.get(strSubstring);
                    if (cVar == null) {
                        cVar = new c(this, strSubstring, b2);
                        this.f4901o.put(strSubstring, cVar);
                    }
                    if (iIndexOf2 != -1 && iIndexOf == 5 && strM4054a.startsWith(DiskLruCache.CLEAN)) {
                        String[] strArrSplit = strM4054a.substring(iIndexOf2 + 1).split(" ");
                        c.m4043a(cVar);
                        cVar.f4922e = null;
                        c.m4042a(cVar, strArrSplit);
                    } else if (iIndexOf2 == -1 && iIndexOf == 5 && strM4054a.startsWith(DiskLruCache.DIRTY)) {
                        cVar.f4922e = new a(this, cVar, b2);
                    } else if (iIndexOf2 != -1 || iIndexOf != 4 || !strM4054a.startsWith(DiskLruCache.READ)) {
                        break;
                    }
                    i++;
                } catch (EOFException unused) {
                    this.f4902p = i - this.f4901o.size();
                    m4004a(c1721ak);
                    return;
                }
            }
            throw new IOException("unexpected journal line: ".concat(strM4054a));
        } catch (Throwable th) {
            m4004a(c1721ak);
            throw th;
        }
    }

    /* renamed from: h */
    private void m4019h() throws IOException {
        m4005a(this.f4893g);
        Iterator<c> it = this.f4901o.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            int i = 0;
            if (next.f4922e == null) {
                while (i < this.f4897k) {
                    this.f4898l += next.f4920c[i];
                    i++;
                }
            } else {
                next.f4922e = null;
                while (i < this.f4897k) {
                    m4005a(next.m4049a(i));
                    m4005a(next.m4051b(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public synchronized void m4020i() {
        if (this.f4899m != null) {
            this.f4899m.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4893g), f4886b));
        try {
            bufferedWriter.write(DiskLruCache.MAGIC);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4895i));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4897k));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c cVar : this.f4901o.values()) {
                bufferedWriter.write(cVar.f4922e != null ? "DIRTY " + cVar.f4919b + '\n' : "CLEAN " + cVar.f4919b + cVar.m4050a() + '\n');
            }
            bufferedWriter.close();
            if (this.f4892f.exists()) {
                m4006a(this.f4892f, this.f4894h, true);
            }
            m4006a(this.f4893g, this.f4892f, false);
            this.f4894h.delete();
            this.f4899m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4892f, true), f4886b));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public boolean m4021j() {
        int i = this.f4902p;
        return i >= 2000 && i >= this.f4901o.size();
    }

    /* renamed from: k */
    private void m4022k() {
        if (this.f4899m == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m4023l() {
        while (true) {
            if (this.f4898l <= this.f4896j && this.f4901o.size() <= this.f4900n) {
                return;
            } else {
                m4029c(this.f4901o.entrySet().iterator().next().getKey());
            }
        }
    }

    /* renamed from: a */
    public final synchronized b m4024a(String str) {
        m4022k();
        m4014e(str);
        c cVar = this.f4901o.get(str);
        if (cVar == null) {
            return null;
        }
        if (!cVar.f4921d) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f4897k];
        for (int i = 0; i < this.f4897k; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(cVar.m4049a(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.f4897k && inputStreamArr[i2] != null; i2++) {
                    m4004a(inputStreamArr[i2]);
                }
                return null;
            }
        }
        this.f4902p++;
        this.f4899m.append((CharSequence) ("READ " + str + '\n'));
        if (m4021j()) {
            m4016f().submit(this.f4904s);
        }
        return new b(this, str, cVar.f4923f, inputStreamArr, cVar.f4920c, (byte) 0);
    }

    /* renamed from: a */
    public final void m4025a(int i) {
        if (i < 10) {
            i = 10;
        } else if (i > 10000) {
            i = 10000;
        }
        this.f4900n = i;
    }

    /* renamed from: b */
    public final a m4026b(String str) {
        return m4010d(str);
    }

    /* renamed from: b */
    public final File m4027b() {
        return this.f4891e;
    }

    /* renamed from: c */
    public final synchronized void m4028c() {
        m4022k();
        m4023l();
        this.f4899m.flush();
    }

    /* renamed from: c */
    public final synchronized boolean m4029c(String str) {
        m4022k();
        m4014e(str);
        c cVar = this.f4901o.get(str);
        if (cVar != null && cVar.f4922e == null) {
            for (int i = 0; i < this.f4897k; i++) {
                File fileM4049a = cVar.m4049a(i);
                if (fileM4049a.exists() && !fileM4049a.delete()) {
                    throw new IOException("failed to delete ".concat(String.valueOf(fileM4049a)));
                }
                this.f4898l -= cVar.f4920c[i];
                cVar.f4920c[i] = 0;
            }
            this.f4902p++;
            this.f4899m.append((CharSequence) ("REMOVE " + str + '\n'));
            this.f4901o.remove(str);
            if (m4021j()) {
                m4016f().submit(this.f4904s);
            }
            return true;
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.f4899m == null) {
            return;
        }
        Iterator it = new ArrayList(this.f4901o.values()).iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f4922e != null) {
                cVar.f4922e.m4037c();
            }
        }
        m4023l();
        this.f4899m.close();
        this.f4899m = null;
    }

    /* renamed from: d */
    public final void m4030d() throws IOException {
        close();
        m4008b(this.f4891e);
    }
}
