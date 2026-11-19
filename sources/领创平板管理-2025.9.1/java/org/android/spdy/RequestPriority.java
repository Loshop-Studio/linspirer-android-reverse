package org.android.spdy;

/* loaded from: classes.dex */
public enum RequestPriority {
    HIGHEST(0),
    HIGH(1),
    MEDIUM(2),
    LOW(3),
    LOWEST(4),
    IDLE(5),
    DEFAULT_PRIORITY(1);

    public int priority;

    RequestPriority(int i) {
        this.priority = i;
    }

    public int getPriorityInt() {
        return this.priority;
    }
}
