package anetwork.channel.util;

import android.support.v7.widget.ActivityChooserView;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.util.a */
/* loaded from: classes.dex */
public class NetworkRequestSequence {

    /* renamed from: a */
    public static AtomicInteger f807a = new AtomicInteger(0);

    /* renamed from: a */
    public static String m464a(String str, String str2) {
        StringBuilder sb = new StringBuilder(16);
        if (str != null) {
            sb.append(str);
            sb.append('.');
        }
        if (str2 != null) {
            sb.append(str2);
            sb.append(f807a.incrementAndGet() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        }
        return sb.toString();
    }
}
