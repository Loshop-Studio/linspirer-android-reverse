package anet.channel.util;

import anet.channel.request.Request;
import anet.channel.thread.ThreadPoolExecutorFactory;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.h */
/* loaded from: classes.dex */
public class C0427h {

    /* renamed from: a */
    public static Map<String, Integer> f599a;

    static {
        HashMap map = new HashMap();
        f599a = map;
        map.put("tpatch", 3);
        f599a.put("so", 3);
        f599a.put("json", 3);
        f599a.put("html", 4);
        f599a.put("htm", 4);
        f599a.put("css", 5);
        f599a.put("js", 5);
        f599a.put("webp", 6);
        f599a.put("png", 6);
        f599a.put("jpg", 6);
        f599a.put("do", 6);
        f599a.put("zip", Integer.valueOf(ThreadPoolExecutorFactory.Priority.LOW));
        f599a.put("bin", Integer.valueOf(ThreadPoolExecutorFactory.Priority.LOW));
        f599a.put("apk", Integer.valueOf(ThreadPoolExecutorFactory.Priority.LOW));
    }

    /* renamed from: a */
    public static int m363a(Request request) {
        Integer num;
        if (request == null) {
            throw new NullPointerException("url is null!");
        }
        if (request.getHeaders().containsKey(HttpConstant.X_PV)) {
            return 1;
        }
        String strTrySolveFileExtFromUrlPath = HttpHelper.trySolveFileExtFromUrlPath(request.getHttpUrl().path());
        if (strTrySolveFileExtFromUrlPath == null || (num = f599a.get(strTrySolveFileExtFromUrlPath)) == null) {
            return 6;
        }
        return num.intValue();
    }
}
