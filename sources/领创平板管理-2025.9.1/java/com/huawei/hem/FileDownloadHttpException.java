package com.huawei.hem;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: FileDownloadHttpException.java */
/* renamed from: com.huawei.hem.ag */
/* loaded from: classes.dex */
public class FileDownloadHttpException extends IOException {
    public final int mCode;
    public final Map<String, List<String>> mRequestHeaderMap;
    public final Map<String, List<String>> mResponseHeaderMap;

    public FileDownloadHttpException(int i, Map<String, List<String>> map, Map<String, List<String>> map2) {
        super(FileDownloadUtils.m1955e("response code error: %d, \n request headers: %s \n response headers: %s", Integer.valueOf(i), map, map2));
        this.mCode = i;
        this.mRequestHeaderMap = m1355a(map);
        this.mResponseHeaderMap = m1355a(map);
    }

    /* renamed from: a */
    public static Map<String, List<String>> m1355a(Map<String, List<String>> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            map2.put(entry.getKey(), new ArrayList(entry.getValue()));
        }
        return map2;
    }

    public int getCode() {
        return this.mCode;
    }

    public Map<String, List<String>> getRequestHeader() {
        return this.mRequestHeaderMap;
    }

    public Map<String, List<String>> getResponseHeader() {
        return this.mResponseHeaderMap;
    }
}
