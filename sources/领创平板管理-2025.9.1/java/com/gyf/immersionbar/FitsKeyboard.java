package com.gyf.immersionbar;

import android.graphics.Rect;
import android.support.v4.app.Fragment;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class FitsKeyboard implements ViewTreeObserver.OnGlobalLayoutListener {
    public View mChildView;
    public View mContentView;
    public View mDecorView;
    public ImmersionBar mImmersionBar;
    public boolean mIsAddListener;
    public int mPaddingBottom;
    public int mPaddingLeft;
    public int mPaddingRight;
    public int mPaddingTop;
    public int mTempKeyboardHeight;
    public Window mWindow;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View] */
    public FitsKeyboard(ImmersionBar immersionBar) {
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mImmersionBar = immersionBar;
        Window window = immersionBar.getWindow();
        this.mWindow = window;
        View decorView = window.getDecorView();
        this.mDecorView = decorView;
        FrameLayout frameLayout = (FrameLayout) decorView.findViewById(android.R.id.content);
        if (immersionBar.isDialogFragment()) {
            Fragment supportFragment = immersionBar.getSupportFragment();
            if (supportFragment != null) {
                this.mChildView = supportFragment.getView();
            } else {
                android.app.Fragment fragment = immersionBar.getFragment();
                if (fragment != null) {
                    this.mChildView = fragment.getView();
                }
            }
        } else {
            View childAt = frameLayout.getChildAt(0);
            this.mChildView = childAt;
            if (childAt != null && (childAt instanceof DrawerLayout)) {
                this.mChildView = ((DrawerLayout) childAt).getChildAt(0);
            }
        }
        View view = this.mChildView;
        if (view != null) {
            this.mPaddingLeft = view.getPaddingLeft();
            this.mPaddingTop = this.mChildView.getPaddingTop();
            this.mPaddingRight = this.mChildView.getPaddingRight();
            this.mPaddingBottom = this.mChildView.getPaddingBottom();
        }
        ?? r4 = this.mChildView;
        this.mContentView = r4 != 0 ? r4 : frameLayout;
    }

    public void cancel() {
        if (this.mIsAddListener) {
            this.mDecorView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.mIsAddListener = false;
        }
    }

    public void disable() {
        if (this.mIsAddListener) {
            if (this.mChildView != null) {
                this.mContentView.setPadding(this.mPaddingLeft, this.mPaddingTop, this.mPaddingRight, this.mPaddingBottom);
            } else {
                this.mContentView.setPadding(this.mImmersionBar.getPaddingLeft(), this.mImmersionBar.getPaddingTop(), this.mImmersionBar.getPaddingRight(), this.mImmersionBar.getPaddingBottom());
            }
        }
    }

    public void enable(int i) {
        this.mWindow.setSoftInputMode(i);
        if (this.mIsAddListener) {
            return;
        }
        this.mDecorView.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.mIsAddListener = true;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i;
        ImmersionBar immersionBar = this.mImmersionBar;
        if (immersionBar == null || immersionBar.getBarParams() == null || !this.mImmersionBar.getBarParams().keyboardEnable) {
            return;
        }
        BarConfig barConfig = this.mImmersionBar.getBarConfig();
        int navigationBarHeight = barConfig.isNavigationAtBottom() ? barConfig.getNavigationBarHeight() : barConfig.getNavigationBarWidth();
        Rect rect = new Rect();
        this.mDecorView.getWindowVisibleDisplayFrame(rect);
        int height = this.mContentView.getHeight() - rect.bottom;
        if (height != this.mTempKeyboardHeight) {
            this.mTempKeyboardHeight = height;
            boolean z = true;
            if (ImmersionBar.checkFitsSystemWindows(this.mWindow.getDecorView().findViewById(android.R.id.content))) {
                height -= navigationBarHeight;
                if (height <= navigationBarHeight) {
                    z = false;
                }
            } else if (this.mChildView != null) {
                if (this.mImmersionBar.getBarParams().isSupportActionBar) {
                    height += barConfig.getStatusBarHeight() + this.mImmersionBar.getActionBarHeight();
                }
                if (this.mImmersionBar.getBarParams().fits) {
                    height += barConfig.getStatusBarHeight();
                }
                if (height > navigationBarHeight) {
                    i = this.mPaddingBottom + height;
                } else {
                    i = 0;
                    z = false;
                }
                this.mContentView.setPadding(this.mPaddingLeft, this.mPaddingTop, this.mPaddingRight, i);
            } else {
                int paddingBottom = this.mImmersionBar.getPaddingBottom();
                height -= navigationBarHeight;
                if (height > navigationBarHeight) {
                    paddingBottom = height + navigationBarHeight;
                } else {
                    z = false;
                }
                this.mContentView.setPadding(this.mImmersionBar.getPaddingLeft(), this.mImmersionBar.getPaddingTop(), this.mImmersionBar.getPaddingRight(), paddingBottom);
            }
            int i2 = height >= 0 ? height : 0;
            if (this.mImmersionBar.getBarParams().onKeyboardListener != null) {
                this.mImmersionBar.getBarParams().onKeyboardListener.onKeyboardChange(z, i2);
            }
            if (z || this.mImmersionBar.getBarParams().barHide == BarHide.FLAG_SHOW_BAR) {
                return;
            }
            this.mImmersionBar.setBar();
        }
    }
}
