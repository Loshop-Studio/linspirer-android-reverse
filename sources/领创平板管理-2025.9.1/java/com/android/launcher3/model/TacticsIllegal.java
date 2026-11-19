package com.android.launcher3.model;

import com.android.launcher3.p027db.model.Illegal;

/* loaded from: classes.dex */
public class TacticsIllegal {
    public static final String CHANGE_SIMCARD = "change_simcard";
    public static final String PROHIBITED_APP = "prohibited_app";
    public static final String ROOT = "already_root";
    public static final String USB_TO_PC = "usb_to_pc";
    public Illegal already_root;
    public Illegal change_simcard;
    public Illegal prohibited_app;
    public Illegal usb_to_pc;

    public Illegal getAlready_root() {
        return this.already_root;
    }

    public Illegal getChange_simcard() {
        return this.change_simcard;
    }

    public Illegal getProhibited_app() {
        return this.prohibited_app;
    }

    public Illegal getUsb_to_pc() {
        return this.usb_to_pc;
    }

    public void setAlready_root(Illegal illegal) {
        this.already_root = illegal;
    }

    public void setChange_simcard(Illegal illegal) {
        this.change_simcard = illegal;
    }

    public void setProhibited_app(Illegal illegal) {
        this.prohibited_app = illegal;
    }

    public void setUsb_to_pc(Illegal illegal) {
        this.usb_to_pc = illegal;
    }
}
