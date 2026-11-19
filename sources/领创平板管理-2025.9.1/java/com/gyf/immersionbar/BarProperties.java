package com.gyf.immersionbar;

/* loaded from: classes.dex */
public class BarProperties {
    public int actionBarHeight;
    public boolean hasNavigationBar;
    public boolean landscapeLeft;
    public boolean landscapeRight;
    public int navigationBarHeight;
    public int navigationBarWidth;
    public int notchHeight;
    public boolean notchScreen;
    public boolean portrait;
    public int statusBarHeight;

    public int getActionBarHeight() {
        return this.actionBarHeight;
    }

    public int getNavigationBarHeight() {
        return this.navigationBarHeight;
    }

    public int getNavigationBarWidth() {
        return this.navigationBarWidth;
    }

    public int getNotchHeight() {
        return this.notchHeight;
    }

    public int getStatusBarHeight() {
        return this.statusBarHeight;
    }

    public boolean hasNavigationBar() {
        return this.hasNavigationBar;
    }

    public boolean isLandscapeLeft() {
        return this.landscapeLeft;
    }

    public boolean isLandscapeRight() {
        return this.landscapeRight;
    }

    public boolean isNotchScreen() {
        return this.notchScreen;
    }

    public boolean isPortrait() {
        return this.portrait;
    }

    public void setActionBarHeight(int i) {
        this.actionBarHeight = i;
    }

    public void setLandscapeLeft(boolean z) {
        this.landscapeLeft = z;
    }

    public void setLandscapeRight(boolean z) {
        this.landscapeRight = z;
    }

    public void setNavigationBar(boolean z) {
        this.hasNavigationBar = z;
    }

    public void setNavigationBarHeight(int i) {
        this.navigationBarHeight = i;
    }

    public void setNavigationBarWidth(int i) {
        this.navigationBarWidth = i;
    }

    public void setNotchHeight(int i) {
        this.notchHeight = i;
    }

    public void setNotchScreen(boolean z) {
        this.notchScreen = z;
    }

    public void setPortrait(boolean z) {
        this.portrait = z;
    }

    public void setStatusBarHeight(int i) {
        this.statusBarHeight = i;
    }
}
