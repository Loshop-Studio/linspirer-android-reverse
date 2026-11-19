package anetwork.channel.cache;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.cache.a */
/* loaded from: classes.dex */
public class HttpCacheHeaderParser {

    /* renamed from: a */
    public static final TimeZone f649a = TimeZone.getTimeZone("GMT");

    /* renamed from: b */
    public static final ThreadLocal<SimpleDateFormat> f650b = new ThreadLocal<>();

    /* renamed from: a */
    public static String m387a(long j) {
        return m388a().format(new Date(j));
    }

    /* renamed from: a */
    public static long m385a(String str) {
        if (str.length() == 0) {
            return 0L;
        }
        try {
            ParsePosition parsePosition = new ParsePosition(0);
            Date date = m388a().parse(str, parsePosition);
            if (parsePosition.getIndex() == str.length()) {
                return date.getTime();
            }
        } catch (Exception unused) {
        }
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009f A[ADDED_TO_REGION] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static anetwork.channel.cache.Cache.Entry m386a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r19) throws java.lang.NumberFormatException {
        /*
            r0 = r19
            long r1 = java.lang.System.currentTimeMillis()
            java.lang.String r3 = "Cache-Control"
            java.lang.String r3 = anet.channel.util.HttpHelper.getSingleHeaderFieldByKey(r0, r3)
            r4 = 0
            r5 = 1
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L4a
            java.lang.String r9 = ","
            java.lang.String[] r3 = r3.split(r9)
            r9 = r7
        L1a:
            int r11 = r3.length
            if (r6 >= r11) goto L4c
            r11 = r3[r6]
            java.lang.String r11 = r11.trim()
            java.lang.String r12 = "no-store"
            boolean r12 = r11.equals(r12)
            if (r12 == 0) goto L2c
            return r4
        L2c:
            java.lang.String r12 = "no-cache"
            boolean r12 = r11.equals(r12)
            if (r12 == 0) goto L35
            goto L4b
        L35:
            java.lang.String r12 = "max-age="
            boolean r12 = r11.startsWith(r12)
            if (r12 == 0) goto L47
            r12 = 8
            java.lang.String r11 = r11.substring(r12)     // Catch: java.lang.Exception -> L47
            long r9 = java.lang.Long.parseLong(r11)     // Catch: java.lang.Exception -> L47
        L47:
            int r6 = r6 + 1
            goto L1a
        L4a:
            r5 = r6
        L4b:
            r9 = r7
        L4c:
            java.lang.String r3 = "Date"
            java.lang.String r3 = anet.channel.util.HttpHelper.getSingleHeaderFieldByKey(r0, r3)
            if (r3 == 0) goto L59
            long r11 = m385a(r3)
            goto L5a
        L59:
            r11 = r7
        L5a:
            java.lang.String r3 = "Expires"
            java.lang.String r3 = anet.channel.util.HttpHelper.getSingleHeaderFieldByKey(r0, r3)
            if (r3 == 0) goto L67
            long r13 = m385a(r3)
            goto L68
        L67:
            r13 = r7
        L68:
            java.lang.String r3 = "Last-Modified"
            java.lang.String r3 = anet.channel.util.HttpHelper.getSingleHeaderFieldByKey(r0, r3)
            if (r3 == 0) goto L77
            long r15 = m385a(r3)
            r17 = r15
            goto L79
        L77:
            r17 = r7
        L79:
            java.lang.String r3 = "ETag"
            java.lang.String r3 = anet.channel.util.HttpHelper.getSingleHeaderFieldByKey(r0, r3)
            if (r5 == 0) goto L88
            r5 = 1000(0x3e8, double:4.94E-321)
            long r9 = r9 * r5
            long r1 = r1 + r9
        L85:
            r5 = r17
            goto L9b
        L88:
            int r5 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            if (r5 <= 0) goto L93
            int r5 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r5 < 0) goto L93
            long r13 = r13 - r11
            long r1 = r1 + r13
            goto L85
        L93:
            r5 = r17
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 <= 0) goto L9a
            goto L9b
        L9a:
            r1 = r7
        L9b:
            int r7 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r7 != 0) goto La2
            if (r3 != 0) goto La2
            return r4
        La2:
            anetwork.channel.cache.Cache$Entry r4 = new anetwork.channel.cache.Cache$Entry
            r4.<init>()
            r4.etag = r3
            r4.ttl = r1
            r4.serverDate = r11
            r4.lastModified = r5
            r4.responseHeaders = r0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: anetwork.channel.cache.C0443a.m386a(java.util.Map):anetwork.channel.cache.Cache$Entry");
    }

    /* renamed from: a */
    public static SimpleDateFormat m388a() {
        SimpleDateFormat simpleDateFormat = f650b.get();
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat2.setTimeZone(f649a);
        f650b.set(simpleDateFormat2);
        return simpleDateFormat2;
    }
}
