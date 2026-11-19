package anet.channel.session;

import android.os.Build;
import android.util.Pair;
import anet.channel.RequestCb;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.bytes.ByteArray;
import anet.channel.bytes.C0317a;
import anet.channel.request.Request;
import anet.channel.statist.ExceptionStatistic;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.util.ALog;
import anet.channel.util.C0420a;
import anet.channel.util.C0421b;
import anet.channel.util.C0426g;
import anet.channel.util.ErrorConstant;
import anet.channel.util.HttpConstant;
import anet.channel.util.StringUtils;
import com.taobao.accs.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.b */
/* loaded from: classes.dex */
public class C0376b {

    /* compiled from: Taobao */
    /* renamed from: anet.channel.session.b$a */
    public static class a {

        /* renamed from: a */
        public int f393a;

        /* renamed from: b */
        public byte[] f394b;

        /* renamed from: c */
        public Map<String, List<String>> f395c;

        /* renamed from: d */
        public int f396d;

        /* renamed from: e */
        public boolean f397e;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x02b8 A[Catch: all -> 0x029b, TryCatch #30 {all -> 0x029b, blocks: (B:12:0x0033, B:14:0x003d, B:22:0x00a3, B:24:0x00a8, B:26:0x00b3, B:28:0x00b9, B:30:0x011d, B:32:0x0127, B:34:0x012d, B:36:0x0136, B:96:0x02a3, B:98:0x02a9, B:100:0x02b0, B:102:0x02b8, B:104:0x02cc, B:103:0x02c7, B:43:0x019b, B:45:0x01b2, B:47:0x01d4, B:49:0x01da, B:51:0x01e0, B:53:0x01e6, B:56:0x01ed, B:58:0x0208, B:60:0x0216, B:61:0x021d, B:65:0x023a, B:68:0x0253, B:70:0x026c, B:63:0x022b, B:64:0x0232, B:129:0x0349, B:131:0x0374, B:140:0x03b1, B:142:0x03dc, B:112:0x02ed, B:120:0x0322, B:150:0x0416, B:158:0x043e, B:166:0x0464, B:174:0x048a), top: B:203:0x0033, inners: #31, #28, #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02c7 A[Catch: all -> 0x029b, TryCatch #30 {all -> 0x029b, blocks: (B:12:0x0033, B:14:0x003d, B:22:0x00a3, B:24:0x00a8, B:26:0x00b3, B:28:0x00b9, B:30:0x011d, B:32:0x0127, B:34:0x012d, B:36:0x0136, B:96:0x02a3, B:98:0x02a9, B:100:0x02b0, B:102:0x02b8, B:104:0x02cc, B:103:0x02c7, B:43:0x019b, B:45:0x01b2, B:47:0x01d4, B:49:0x01da, B:51:0x01e0, B:53:0x01e6, B:56:0x01ed, B:58:0x0208, B:60:0x0216, B:61:0x021d, B:65:0x023a, B:68:0x0253, B:70:0x026c, B:63:0x022b, B:64:0x0232, B:129:0x0349, B:131:0x0374, B:140:0x03b1, B:142:0x03dc, B:112:0x02ed, B:120:0x0322, B:150:0x0416, B:158:0x043e, B:166:0x0464, B:174:0x048a), top: B:203:0x0033, inners: #31, #28, #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0374 A[Catch: all -> 0x029b, TRY_LEAVE, TryCatch #30 {all -> 0x029b, blocks: (B:12:0x0033, B:14:0x003d, B:22:0x00a3, B:24:0x00a8, B:26:0x00b3, B:28:0x00b9, B:30:0x011d, B:32:0x0127, B:34:0x012d, B:36:0x0136, B:96:0x02a3, B:98:0x02a9, B:100:0x02b0, B:102:0x02b8, B:104:0x02cc, B:103:0x02c7, B:43:0x019b, B:45:0x01b2, B:47:0x01d4, B:49:0x01da, B:51:0x01e0, B:53:0x01e6, B:56:0x01ed, B:58:0x0208, B:60:0x0216, B:61:0x021d, B:65:0x023a, B:68:0x0253, B:70:0x026c, B:63:0x022b, B:64:0x0232, B:129:0x0349, B:131:0x0374, B:140:0x03b1, B:142:0x03dc, B:112:0x02ed, B:120:0x0322, B:150:0x0416, B:158:0x043e, B:166:0x0464, B:174:0x048a), top: B:203:0x0033, inners: #31, #28, #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03dc A[Catch: all -> 0x029b, TRY_LEAVE, TryCatch #30 {all -> 0x029b, blocks: (B:12:0x0033, B:14:0x003d, B:22:0x00a3, B:24:0x00a8, B:26:0x00b3, B:28:0x00b9, B:30:0x011d, B:32:0x0127, B:34:0x012d, B:36:0x0136, B:96:0x02a3, B:98:0x02a9, B:100:0x02b0, B:102:0x02b8, B:104:0x02cc, B:103:0x02c7, B:43:0x019b, B:45:0x01b2, B:47:0x01d4, B:49:0x01da, B:51:0x01e0, B:53:0x01e6, B:56:0x01ed, B:58:0x0208, B:60:0x0216, B:61:0x021d, B:65:0x023a, B:68:0x0253, B:70:0x026c, B:63:0x022b, B:64:0x0232, B:129:0x0349, B:131:0x0374, B:140:0x03b1, B:142:0x03dc, B:112:0x02ed, B:120:0x0322, B:150:0x0416, B:158:0x043e, B:166:0x0464, B:174:0x048a), top: B:203:0x0033, inners: #31, #28, #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x039a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x02da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0402 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x022b A[Catch: Exception -> 0x0283, SSLException -> 0x0285, SSLHandshakeException -> 0x0288, all -> 0x029b, IOException -> 0x02e9, CancellationException -> 0x031e, ConnectException -> 0x0412, ConnectTimeoutException -> 0x043a, SocketTimeoutException -> 0x0460, UnknownHostException -> 0x0486, TryCatch #31 {CancellationException -> 0x031e, ConnectTimeoutException -> 0x043a, blocks: (B:12:0x0033, B:14:0x003d, B:22:0x00a3, B:24:0x00a8, B:26:0x00b3, B:28:0x00b9, B:30:0x011d, B:32:0x0127, B:34:0x012d, B:36:0x0136, B:43:0x019b, B:45:0x01b2, B:47:0x01d4, B:49:0x01da, B:51:0x01e0, B:53:0x01e6, B:56:0x01ed, B:58:0x0208, B:60:0x0216, B:61:0x021d, B:65:0x023a, B:68:0x0253, B:70:0x026c, B:63:0x022b, B:64:0x0232), top: B:203:0x0033, outer: #30 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0253 A[Catch: Exception -> 0x0283, SSLException -> 0x0285, SSLHandshakeException -> 0x0288, all -> 0x029b, IOException -> 0x02e9, CancellationException -> 0x031e, ConnectException -> 0x0412, ConnectTimeoutException -> 0x043a, SocketTimeoutException -> 0x0460, UnknownHostException -> 0x0486, TRY_ENTER, TryCatch #31 {CancellationException -> 0x031e, ConnectTimeoutException -> 0x043a, blocks: (B:12:0x0033, B:14:0x003d, B:22:0x00a3, B:24:0x00a8, B:26:0x00b3, B:28:0x00b9, B:30:0x011d, B:32:0x0127, B:34:0x012d, B:36:0x0136, B:43:0x019b, B:45:0x01b2, B:47:0x01d4, B:49:0x01da, B:51:0x01e0, B:53:0x01e6, B:56:0x01ed, B:58:0x0208, B:60:0x0216, B:61:0x021d, B:65:0x023a, B:68:0x0253, B:70:0x026c, B:63:0x022b, B:64:0x0232), top: B:203:0x0033, outer: #30 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x026c A[Catch: Exception -> 0x0283, SSLException -> 0x0285, SSLHandshakeException -> 0x0288, all -> 0x029b, IOException -> 0x02e9, CancellationException -> 0x031e, ConnectException -> 0x0412, ConnectTimeoutException -> 0x043a, SocketTimeoutException -> 0x0460, UnknownHostException -> 0x0486, TRY_LEAVE, TryCatch #31 {CancellationException -> 0x031e, ConnectTimeoutException -> 0x043a, blocks: (B:12:0x0033, B:14:0x003d, B:22:0x00a3, B:24:0x00a8, B:26:0x00b3, B:28:0x00b9, B:30:0x011d, B:32:0x0127, B:34:0x012d, B:36:0x0136, B:43:0x019b, B:45:0x01b2, B:47:0x01d4, B:49:0x01da, B:51:0x01e0, B:53:0x01e6, B:56:0x01ed, B:58:0x0208, B:60:0x0216, B:61:0x021d, B:65:0x023a, B:68:0x0253, B:70:0x026c, B:63:0x022b, B:64:0x0232), top: B:203:0x0033, outer: #30 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02a9 A[Catch: all -> 0x029b, TryCatch #30 {all -> 0x029b, blocks: (B:12:0x0033, B:14:0x003d, B:22:0x00a3, B:24:0x00a8, B:26:0x00b3, B:28:0x00b9, B:30:0x011d, B:32:0x0127, B:34:0x012d, B:36:0x0136, B:96:0x02a3, B:98:0x02a9, B:100:0x02b0, B:102:0x02b8, B:104:0x02cc, B:103:0x02c7, B:43:0x019b, B:45:0x01b2, B:47:0x01d4, B:49:0x01da, B:51:0x01e0, B:53:0x01e6, B:56:0x01ed, B:58:0x0208, B:60:0x0216, B:61:0x021d, B:65:0x023a, B:68:0x0253, B:70:0x026c, B:63:0x022b, B:64:0x0232, B:129:0x0349, B:131:0x0374, B:140:0x03b1, B:142:0x03dc, B:112:0x02ed, B:120:0x0322, B:150:0x0416, B:158:0x043e, B:166:0x0464, B:174:0x048a), top: B:203:0x0033, inners: #31, #28, #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02ae  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static anet.channel.session.C0376b.a m226a(anet.channel.request.Request r21, anet.channel.RequestCb r22) {
        /*
            Method dump skipped, instructions count: 1243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: anet.channel.session.C0376b.m226a(anet.channel.request.Request, anet.channel.RequestCb):anet.channel.session.b$a");
    }

    /* renamed from: a */
    public static void m228a(Request request, a aVar, RequestCb requestCb, int i, Throwable th) {
        String errMsg = ErrorConstant.getErrMsg(i);
        ALog.m339e("awcn.HttpConnector", "onException", request.getSeq(), Constants.KEY_ERROR_CODE, Integer.valueOf(i), "errMsg", errMsg, AgooConstants.OPEN_URL, request.getUrlString(), Constants.KEY_HOST, request.getHost());
        if (aVar != null) {
            aVar.f393a = i;
        }
        if (!request.f328a.isDone.get()) {
            request.f328a.statusCode = i;
            request.f328a.msg = errMsg;
            request.f328a.rspEnd = System.currentTimeMillis();
            if (i != -204) {
                AppMonitor.getInstance().commitStat(new ExceptionStatistic(i, errMsg, request.f328a, th));
            }
        }
        if (requestCb != null) {
            requestCb.onFinish(i, errMsg, request.f328a);
        }
    }

    /* renamed from: a */
    public static HttpURLConnection m227a(Request request) throws ProtocolException {
        HttpURLConnection httpURLConnection;
        Pair<String, Integer> wifiProxy = NetworkStatusHelper.getWifiProxy();
        Proxy proxy = wifiProxy != null ? new Proxy(Proxy.Type.HTTP, new InetSocketAddress((String) wifiProxy.first, ((Integer) wifiProxy.second).intValue())) : null;
        C0426g c0426gM360a = C0426g.m360a();
        if (NetworkStatusHelper.getStatus().isMobile() && c0426gM360a != null) {
            proxy = c0426gM360a.m361b();
        }
        URL url = request.getUrl();
        if (proxy != null) {
            httpURLConnection = (HttpURLConnection) url.openConnection(proxy);
        } else {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        }
        httpURLConnection.setConnectTimeout(request.getConnectTimeout());
        httpURLConnection.setReadTimeout(request.getReadTimeout());
        httpURLConnection.setRequestMethod(request.getMethod());
        if (request.containsBody()) {
            httpURLConnection.setDoOutput(true);
        }
        Map<String, String> headers = request.getHeaders();
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
        }
        String host = headers.get(HttpConstant.HOST);
        if (host == null) {
            host = request.getHost();
        }
        String strConcatString = request.getHttpUrl().containsNonDefaultPort() ? StringUtils.concatString(host, ":", String.valueOf(request.getHttpUrl().getPort())) : host;
        httpURLConnection.setRequestProperty(HttpConstant.HOST, strConcatString);
        if (NetworkStatusHelper.getApn().equals("cmwap")) {
            httpURLConnection.setRequestProperty(HttpConstant.X_ONLINE_HOST, strConcatString);
        }
        if (!headers.containsKey("Accept-Encoding")) {
            httpURLConnection.setRequestProperty("Accept-Encoding", HttpConstant.GZIP);
        }
        if (c0426gM360a != null) {
            httpURLConnection.setRequestProperty(HttpConstant.AUTHORIZATION, c0426gM360a.m362c());
        }
        if (url.getProtocol().equalsIgnoreCase(HttpConstant.HTTPS)) {
            m230a(httpURLConnection, request, host);
        }
        httpURLConnection.setInstanceFollowRedirects(false);
        return httpURLConnection;
    }

    /* renamed from: a */
    public static void m230a(HttpURLConnection httpURLConnection, Request request, String str) {
        if (Integer.parseInt(Build.VERSION.SDK) < 8) {
            ALog.m339e("awcn.HttpConnector", "supportHttps", "[supportHttps]Froyo 以下版本不支持https", new Object[0]);
            return;
        }
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
        if (request.getSslSocketFactory() != null) {
            httpsURLConnection.setSSLSocketFactory(request.getSslSocketFactory());
        } else {
            SSLSocketFactory sSLSocketFactory = C0421b.f583a;
            if (sSLSocketFactory != null) {
                httpsURLConnection.setSSLSocketFactory(sSLSocketFactory);
                if (ALog.isPrintLog(2)) {
                    ALog.m340i("awcn.HttpConnector", "HttpSslUtil", request.getSeq(), "SslSocketFactory", C0421b.f583a);
                }
            }
        }
        if (request.getHostnameVerifier() != null) {
            httpsURLConnection.setHostnameVerifier(request.getHostnameVerifier());
            return;
        }
        HostnameVerifier hostnameVerifier = C0421b.f584b;
        if (hostnameVerifier != null) {
            httpsURLConnection.setHostnameVerifier(hostnameVerifier);
            if (ALog.isPrintLog(2)) {
                ALog.m340i("awcn.HttpConnector", "HttpSslUtil", request.getSeq(), "HostnameVerifier", C0421b.f584b);
                return;
            }
            return;
        }
        httpsURLConnection.setHostnameVerifier(new C0377c(str));
    }

    /* renamed from: a */
    public static int m225a(HttpURLConnection httpURLConnection, Request request) throws IOException {
        int i = 0;
        if (request.containsBody()) {
            OutputStream outputStream = null;
            try {
                try {
                    outputStream = httpURLConnection.getOutputStream();
                    int iPostBody = request.postBody(outputStream);
                    if (outputStream != null) {
                        try {
                            outputStream.flush();
                            outputStream.close();
                        } catch (IOException e) {
                            ALog.m338e("awcn.HttpConnector", "postData", request.getSeq(), e, new Object[0]);
                        }
                    }
                    i = iPostBody;
                } catch (Exception e2) {
                    ALog.m338e("awcn.HttpConnector", "postData error", request.getSeq(), e2, new Object[0]);
                    if (outputStream != null) {
                        try {
                            outputStream.flush();
                            outputStream.close();
                        } catch (IOException e3) {
                            ALog.m338e("awcn.HttpConnector", "postData", request.getSeq(), e3, new Object[0]);
                        }
                    }
                }
                long j = i;
                request.f328a.reqBodyInflateSize = j;
                request.f328a.reqBodyDeflateSize = j;
                request.f328a.sendDataSize = j;
            } catch (Throwable th) {
                if (outputStream != null) {
                    try {
                        outputStream.flush();
                        outputStream.close();
                    } catch (IOException e4) {
                        ALog.m338e("awcn.HttpConnector", "postData", request.getSeq(), e4, new Object[0]);
                    }
                }
                throw th;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static void m229a(HttpURLConnection httpURLConnection, Request request, a aVar, RequestCb requestCb) throws Throwable {
        InputStream errorStream;
        ByteArrayOutputStream byteArrayOutputStream;
        httpURLConnection.getURL().toString();
        C0420a c0420a = null;
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            if (e instanceof FileNotFoundException) {
                ALog.m342w("awcn.HttpConnector", "File not found", request.getSeq(), AgooConstants.OPEN_URL, request.getUrlString());
            }
            try {
                errorStream = httpURLConnection.getErrorStream();
            } catch (Exception e2) {
                ALog.m338e("awcn.HttpConnector", "get error stream failed.", request.getSeq(), e2, new Object[0]);
                errorStream = null;
            }
        }
        if (errorStream == null) {
            m228a(request, aVar, requestCb, ErrorConstant.ERROR_IO_EXCEPTION, null);
            return;
        }
        if (requestCb == null) {
            int i = aVar.f396d;
            if (i <= 0) {
                i = 1024;
            } else if (aVar.f397e) {
                i *= 2;
            }
            byteArrayOutputStream = new ByteArrayOutputStream(i);
        } else {
            byteArrayOutputStream = null;
        }
        try {
            C0420a c0420a2 = new C0420a(errorStream);
            try {
                InputStream gZIPInputStream = aVar.f397e ? new GZIPInputStream(c0420a2) : c0420a2;
                ByteArray byteArrayM70a = null;
                while (!Thread.currentThread().isInterrupted()) {
                    if (byteArrayM70a == null) {
                        byteArrayM70a = C0317a.a.f177a.m70a(2048);
                    }
                    int from = byteArrayM70a.readFrom(gZIPInputStream);
                    if (from != -1) {
                        if (byteArrayOutputStream != null) {
                            byteArrayM70a.writeTo(byteArrayOutputStream);
                        } else {
                            requestCb.onDataReceive(byteArrayM70a, false);
                            byteArrayM70a = null;
                        }
                        long j = from;
                        request.f328a.recDataSize += j;
                        request.f328a.rspBodyInflateSize += j;
                    } else {
                        if (byteArrayOutputStream != null) {
                            byteArrayM70a.recycle();
                        } else {
                            requestCb.onDataReceive(byteArrayM70a, true);
                        }
                        if (byteArrayOutputStream != null) {
                            aVar.f394b = byteArrayOutputStream.toByteArray();
                        }
                        request.f328a.recDataTime = System.currentTimeMillis() - request.f328a.rspStart;
                        request.f328a.rspBodyDeflateSize = c0420a2.m343a();
                        try {
                            gZIPInputStream.close();
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                }
                throw new CancellationException("task cancelled");
            } catch (Throwable th) {
                th = th;
                c0420a = c0420a2;
                request.f328a.recDataTime = System.currentTimeMillis() - request.f328a.rspStart;
                request.f328a.rspBodyDeflateSize = c0420a.m343a();
                try {
                    errorStream.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
