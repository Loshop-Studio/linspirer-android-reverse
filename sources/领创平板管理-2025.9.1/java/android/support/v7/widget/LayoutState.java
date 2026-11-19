package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public class LayoutState {
    public static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    public static final int ITEM_DIRECTION_HEAD = -1;
    public static final int ITEM_DIRECTION_TAIL = 1;
    public static final int LAYOUT_END = 1;
    public static final int LAYOUT_START = -1;
    public static final String TAG = "LayoutState";
    public int mAvailable;
    public int mCurrentPosition;
    public boolean mInfinite;
    public int mItemDirection;
    public int mLayoutDirection;
    public boolean mStopInFocusable;
    public boolean mRecycle = true;
    public int mStartLine = 0;
    public int mEndLine = 0;

    public boolean hasMore(RecyclerView.State state) {
        int i = this.mCurrentPosition;
        return i >= 0 && i < state.getItemCount();
    }

    public View next(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
        this.mCurrentPosition += this.mItemDirection;
        return viewForPosition;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("LayoutState{mAvailable=");
        sbM1765j.append(this.mAvailable);
        sbM1765j.append(", mCurrentPosition=");
        sbM1765j.append(this.mCurrentPosition);
        sbM1765j.append(", mItemDirection=");
        sbM1765j.append(this.mItemDirection);
        sbM1765j.append(", mLayoutDirection=");
        sbM1765j.append(this.mLayoutDirection);
        sbM1765j.append(", mStartLine=");
        sbM1765j.append(this.mStartLine);
        sbM1765j.append(", mEndLine=");
        sbM1765j.append(this.mEndLine);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }
}
