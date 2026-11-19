package com.android.launcher3.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.android.launcher3.R;

/* loaded from: classes.dex */
public class SwipeSideslipListView extends ListView {
    public static final String TAG = "CustomListView";
    public Boolean isBtnDelShow;
    public ViewGroup itemViewGroup;
    public int mBtnDelWidth;
    public Context mContext;
    public int mDownX;
    public int mDownY;
    public int mSreeenWidth;
    public LinearLayout.LayoutParams params;
    public ViewGroup subViewGroup;

    public SwipeSideslipListView(Context context) {
        super(context);
        this.isBtnDelShow = Boolean.FALSE;
        this.mContext = context;
        initView(context);
    }

    private void onActionDowm(MotionEvent motionEvent) {
        if (this.isBtnDelShow.booleanValue()) {
            resetItemView();
        }
        this.mDownX = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        this.mDownY = y;
        Integer numValueOf = Integer.valueOf(pointToPosition(this.mDownX, y));
        if (-1 == numValueOf.intValue()) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getChildAt(numValueOf.intValue() - getFirstVisiblePosition());
        this.itemViewGroup = viewGroup;
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
        this.subViewGroup = viewGroup2;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewGroup2.getChildAt(0).getLayoutParams();
        this.params = layoutParams;
        layoutParams.width = this.mSreeenWidth;
        this.subViewGroup.getChildAt(0).setLayoutParams(this.params);
    }

    private boolean onActionMove(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        if (Math.abs(x - this.mDownX) <= Math.abs(((int) motionEvent.getY()) - this.mDownY)) {
            return super.onTouchEvent(motionEvent);
        }
        requestDisallowInterceptTouchEvent(true);
        int i = this.mDownX;
        if (x < i) {
            int i2 = i - x;
            int i3 = this.mBtnDelWidth;
            if (i2 >= i3) {
                i2 = i3;
            }
            LinearLayout.LayoutParams layoutParams = this.params;
            if (layoutParams != null) {
                layoutParams.leftMargin = -i2;
                ((ViewGroup) this.itemViewGroup.getChildAt(0)).getChildAt(0).setLayoutParams(this.params);
            }
        }
        return true;
    }

    private void onActionUp(MotionEvent motionEvent) {
        LinearLayout.LayoutParams layoutParams = this.params;
        if (layoutParams == null) {
            return;
        }
        int i = -layoutParams.leftMargin;
        int i2 = this.mBtnDelWidth;
        if (i >= i2 / 2) {
            layoutParams.leftMargin = -i2;
            this.isBtnDelShow = Boolean.TRUE;
        } else {
            resetItemView();
        }
        ((ViewGroup) this.itemViewGroup.getChildAt(0)).getChildAt(0).setLayoutParams(this.params);
    }

    public void initView(Context context) {
        this.mBtnDelWidth = (int) this.mContext.getResources().getDimension(R.dimen.dp_90);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.mSreeenWidth = displayMetrics.widthPixels;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            onActionDowm(motionEvent);
        } else if (action == 1) {
            onActionUp(motionEvent);
        } else if (action == 2) {
            onActionMove(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void resetItemView() {
        LinearLayout.LayoutParams layoutParams = this.params;
        if (layoutParams != null) {
            layoutParams.leftMargin = 0;
            ((ViewGroup) this.itemViewGroup.getChildAt(0)).getChildAt(0).setLayoutParams(this.params);
            this.isBtnDelShow = Boolean.FALSE;
        }
    }

    public SwipeSideslipListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isBtnDelShow = Boolean.FALSE;
        this.mContext = context;
        initView(context);
    }

    public SwipeSideslipListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isBtnDelShow = Boolean.FALSE;
        this.mContext = context;
        initView(context);
    }
}
