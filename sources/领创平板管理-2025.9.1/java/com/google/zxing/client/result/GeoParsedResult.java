package com.google.zxing.client.result;

import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.AbstractC1604b;

/* loaded from: classes.dex */
public final class GeoParsedResult extends ParsedResult {
    public final double altitude;
    public final double latitude;
    public final double longitude;
    public final String query;

    public GeoParsedResult(double d, double d2, double d3, String str) {
        super(ParsedResultType.GEO);
        this.latitude = d;
        this.longitude = d2;
        this.altitude = d3;
        this.query = str;
    }

    public double getAltitude() {
        return this.altitude;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.latitude);
        sb.append(", ");
        sb.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb.append(", ");
            sb.append(this.altitude);
            sb.append('m');
        }
        if (this.query != null) {
            sb.append(" (");
            sb.append(this.query);
            sb.append(')');
        }
        return sb.toString();
    }

    public String getGeoURI() {
        StringBuilder sbM1765j = C0948f6.m1765j("geo:");
        sbM1765j.append(this.latitude);
        sbM1765j.append(AbstractC1604b.COMMA);
        sbM1765j.append(this.longitude);
        if (this.altitude > 0.0d) {
            sbM1765j.append(AbstractC1604b.COMMA);
            sbM1765j.append(this.altitude);
        }
        if (this.query != null) {
            sbM1765j.append('?');
            sbM1765j.append(this.query);
        }
        return sbM1765j.toString();
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getQuery() {
        return this.query;
    }
}
