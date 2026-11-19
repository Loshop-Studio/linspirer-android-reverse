package anetwork.channel.entity;

import anetwork.channel.Header;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class BasicHeader implements Header {
    public final String name;
    public final String value;

    public BasicHeader(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.name = str;
        this.value = str2;
    }

    @Override // anetwork.channel.Header
    public String getName() {
        return this.name;
    }

    @Override // anetwork.channel.Header
    public String getValue() {
        return this.value;
    }
}
