package android.app.mia;

/* loaded from: classes.dex */
public class AppWhiteInfo {
    public String hash;
    public String packageName;

    public AppWhiteInfo() {
    }

    public String getHash() {
        return this.hash;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setHash(String str) {
        this.hash = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public AppWhiteInfo(String str, String str2) {
        this.packageName = str;
        this.hash = str2;
    }
}
