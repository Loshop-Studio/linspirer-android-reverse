package android.cube.sql.bean;

import com.huawei.hem.CompilerOutline;

/* loaded from: classes.dex */
public class StopApplication {
    public String pid;
    public String pname;

    public String getPid() {
        return this.pid;
    }

    public String getPname() {
        return this.pname;
    }

    public void setPid(String str) {
        this.pid = str;
    }

    public void setPname(String str) {
        this.pname = str;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("StopApplication [pid=");
        sbM1765j.append(this.pid);
        sbM1765j.append(", pname=");
        return CompilerOutline.m1762g(sbM1765j, this.pname, "]");
    }
}
