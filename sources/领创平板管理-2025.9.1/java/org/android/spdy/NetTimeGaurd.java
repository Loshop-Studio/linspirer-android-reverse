package org.android.spdy;

import android.util.Log;
import com.huawei.hem.CompilerOutline;

/* loaded from: classes.dex */
public class NetTimeGaurd {
    public static final int CREATE = 0;
    public static final int ERROR = 2;
    public static final int PING = 1;
    public static final int STREAM = 3;
    public static final long calltime = 10;
    public static final long total = 50;
    public static long[] totaltime = new long[4];

    public static long begin() {
        if (SpdyAgent.enableTimeGaurd) {
            return System.currentTimeMillis();
        }
        return 0L;
    }

    public static void end(String str, int i, long j) {
        if (SpdyAgent.enableTimeGaurd) {
            long jCurrentTimeMillis = System.currentTimeMillis() - j;
            long[] jArr = totaltime;
            jArr[i] = jArr[i] + jCurrentTimeMillis;
            Log.i("NetTimeGaurd", "NetTimeGaurd[end]" + str + " time=" + jCurrentTimeMillis + " total=" + totaltime[i]);
            if (jCurrentTimeMillis <= 10) {
                return;
            }
            throw new SpdyErrorException("CallBack:" + str + " timeconsuming:" + jCurrentTimeMillis + "  mustlessthan:10", -1);
        }
    }

    public static void finish(int i) {
        if (SpdyAgent.enableTimeGaurd) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("NetTimeGaurd[finish]:time=");
            sbM1765j.append(totaltime[i]);
            Log.i("NetTimeGaurd", sbM1765j.toString());
            if (totaltime[i] <= 50) {
                return;
            }
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("CallBack totaltimeconsuming:");
            sbM1765j2.append(totaltime[i]);
            sbM1765j2.append("  mustlessthan:");
            sbM1765j2.append(50L);
            throw new SpdyErrorException(sbM1765j2.toString(), -1);
        }
    }

    public static void start(int i) {
        if (SpdyAgent.enableTimeGaurd) {
            totaltime[i] = 0;
        }
    }
}
