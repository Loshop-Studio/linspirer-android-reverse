import com.android.launcher3.network.response.*;
import com.android.launcher3.model.UserInfo;
import java.util.List;

/** Offline observer for decoded wire messages. Only the APK's response parsers
 * run; the host callbacks collect their typed values in memory. */
public final class LinspirerResponseProbe {
    private static String value;
    private static void result(String received) { value=received; }
    static class Single extends LTKResponseListener<UserInfo> {
        Single() { super(UserInfo.class); }
        public void handleResult(Boolean v) { result("boolean="+v); }
        public void handleResult(String v) { result("string="+v); }
        public void handleResult(UserInfo v) { result("user="+v.getId()+","+v.getName()+","+v.getSchoolinfo().getName()); }
        public void onFailed(Response r) { result("application-error="+r.getCode()+","+r.getData()); }
        public void onFailureByNet(Object e) { result("network-error="+e); }
    }
    static class Many extends LTKListResponseListener<UserInfo> {
        Many() { super(UserInfo.class); }
        public void handleResult(List<UserInfo> rows) {
            StringBuilder s=new StringBuilder("user-list=");
            for(UserInfo u:rows)s.append(u.getId()).append(',');
            result(s.toString());
        }
        public void onFailed(Response r) { result("list-error="+r.getCode()); }
        public void onFailureByNet(Object e) { result("network-error="+e); }
    }
    private static void check(String label,String expected) {
        if(!expected.equals(value))throw new AssertionError(label+" -> "+value);
        System.out.println(label+" "+expected);
        value=null;
    }
    public static void main(String[] args) {
        Single one=new Single();
        String a="{\"id\":17,\"name\":\"Local example\",\"schoolinfo\":{\"name\":\"Example School\"}}";
        one.onSucessDecrypt("{\"code\":0,\"type\":\"object\",\"data\":"+a+"}");
        check("object","user=17,Local example,Example School");
        one.onSucessDecrypt("{\"code\":0,\"type\":\"boolean\",\"data\":false}");
        check("boolean","boolean=false");
        one.onSucessDecrypt("{\"code\":0,\"type\":\"string\",\"data\":\"fixture\"}");
        check("string","string=fixture");
        one.onSucessDecrypt("{\"code\":7301,\"data\":\"synthetic business error\"}");
        check("business","application-error=7301,synthetic business error");
        one.onSucessDecrypt("{\"code\":0,\"data\":[]}");
        check("missing-type","application-error=-200,");
        one.onFailure("synthetic transport error");
        check("transport","network-error=synthetic transport error");
        Many many=new Many();
        many.onSucessDecrypt("{\"code\":0,\"data\":["+a+",{\"id\":29}]}");
        check("array","user-list=17,29,");
        many.onSucessDecrypt("{\"code\":0,\"data\":[]}");
        check("empty-array","user-list=");
        many.onSucessDecrypt("{\"code\":0,\"data\":{}}");
        check("invalid-array","list-error=-200");
    }
}
