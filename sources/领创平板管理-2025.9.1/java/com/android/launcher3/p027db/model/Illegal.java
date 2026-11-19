package com.android.launcher3.p027db.model;

import java.util.Objects;

/* loaded from: classes.dex */
public class Illegal {
    public boolean eliminate_data;
    public boolean enable;

    /* renamed from: id */
    public Long f1880id;
    public boolean lock_workspace;
    public String name;
    public boolean notify_admin;

    public Illegal(Long l, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f1880id = l;
        this.name = str;
        this.enable = z;
        this.notify_admin = z2;
        this.eliminate_data = z3;
        this.lock_workspace = z4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Illegal.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.name, ((Illegal) obj).name);
    }

    public boolean getEliminate_data() {
        return this.eliminate_data;
    }

    public boolean getEnable() {
        return this.enable;
    }

    public Long getId() {
        return this.f1880id;
    }

    public boolean getLock_workspace() {
        return this.lock_workspace;
    }

    public String getName() {
        return this.name;
    }

    public boolean getNotify_admin() {
        return this.notify_admin;
    }

    public int hashCode() {
        return Objects.hash(this.name, Boolean.valueOf(this.enable), Boolean.valueOf(this.notify_admin), Boolean.valueOf(this.eliminate_data), Boolean.valueOf(this.lock_workspace));
    }

    public boolean isEliminate_data() {
        return this.eliminate_data;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public boolean isLock_workspace() {
        return this.lock_workspace;
    }

    public boolean isNotify_admin() {
        return this.notify_admin;
    }

    public void setEliminate_data(boolean z) {
        this.eliminate_data = z;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public void setId(Long l) {
        this.f1880id = l;
    }

    public void setLock_workspace(boolean z) {
        this.lock_workspace = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNotify_admin(boolean z) {
        this.notify_admin = z;
    }

    public Illegal() {
    }
}
