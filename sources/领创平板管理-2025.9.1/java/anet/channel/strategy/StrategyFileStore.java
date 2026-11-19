package anet.channel.strategy;

import android.content.Context;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.statist.StrategyStatObject;
import anet.channel.util.ALog;
import anet.channel.util.SerializeHelper;
import java.io.File;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.m */
/* loaded from: classes.dex */
public class StrategyFileStore {

    /* renamed from: a */
    public static File f554a = null;

    /* renamed from: b */
    public static volatile boolean f555b = false;

    /* renamed from: c */
    public static Comparator<File> f556c = new StrategyFileTimeComparator();

    /* renamed from: a */
    public static void m318a(Context context) {
        if (context != null) {
            try {
                File file = new File(context.getFilesDir(), "awcn_strategy");
                f554a = file;
                if (!m320a(file)) {
                    ALog.m339e("awcn.StrategySerializeHelper", "create directory failed!!!", null, "dir", f554a.getAbsolutePath());
                }
                if (!GlobalAppRuntimeInfo.isTargetProcess()) {
                    String currentProcess = GlobalAppRuntimeInfo.getCurrentProcess();
                    File file2 = new File(f554a, currentProcess.substring(currentProcess.indexOf(58) + 1));
                    f554a = file2;
                    if (!m320a(file2)) {
                        ALog.m339e("awcn.StrategySerializeHelper", "create directory failed!!!", null, "dir", f554a.getAbsolutePath());
                    }
                }
                ALog.m340i("awcn.StrategySerializeHelper", "StrateyFolder", null, "path", f554a.getAbsolutePath());
                if (!f555b) {
                    m322c();
                } else {
                    m317a();
                    f555b = false;
                }
            } catch (Throwable th) {
                ALog.m338e("awcn.StrategySerializeHelper", "StrategySerializeHelper initialize failed!!!", null, th, new Object[0]);
            }
        }
    }

    /* renamed from: b */
    public static synchronized File[] m321b() {
        if (f554a == null) {
            return null;
        }
        File[] fileArrListFiles = f554a.listFiles();
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, f556c);
        }
        return fileArrListFiles;
    }

    /* renamed from: c */
    public static synchronized void m322c() {
        File[] fileArrM321b = m321b();
        if (fileArrM321b == null) {
            return;
        }
        int i = 0;
        for (File file : fileArrM321b) {
            if (!file.isDirectory()) {
                if (System.currentTimeMillis() - file.lastModified() > 172800000) {
                    file.delete();
                } else if (file.getName().startsWith("WIFI")) {
                    int i2 = i + 1;
                    if (i > 10) {
                        file.delete();
                    }
                    i = i2;
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m320a(File file) {
        if (file == null || file.exists()) {
            return true;
        }
        return file.mkdir();
    }

    /* renamed from: a */
    public static File m315a(String str) {
        m320a(f554a);
        return new File(f554a, str);
    }

    /* renamed from: a */
    public static synchronized void m317a() {
        ALog.m340i("awcn.StrategySerializeHelper", "clear start.", null, new Object[0]);
        if (f554a == null) {
            ALog.m342w("awcn.StrategySerializeHelper", "folder path not initialized, wait to clear", null, new Object[0]);
            f555b = true;
            return;
        }
        File[] fileArrListFiles = f554a.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                file.delete();
            }
        }
        ALog.m340i("awcn.StrategySerializeHelper", "clear end.", null, new Object[0]);
    }

    /* renamed from: a */
    public static synchronized void m319a(Serializable serializable, String str, StrategyStatObject strategyStatObject) {
        SerializeHelper.persist(serializable, m315a(str), strategyStatObject);
    }

    /* renamed from: a */
    public static synchronized <T> T m316a(String str, StrategyStatObject strategyStatObject) {
        return (T) SerializeHelper.restore(m315a(str), strategyStatObject);
    }
}
