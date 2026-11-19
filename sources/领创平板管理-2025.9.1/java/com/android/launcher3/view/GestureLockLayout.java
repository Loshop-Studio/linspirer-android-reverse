package com.android.launcher3.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import com.android.launcher3.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GestureLockLayout extends RelativeLayout {
    public static final int STATUS_CHECK = 2;
    public static final int STATUS_RESET = 1;
    public int background_color;
    public int background_color_transparent;
    public List<Integer> checkPwd;
    public int childEndIndex;
    public int childStartIndex;
    public int currentAttemptTime;
    public Paint currentPaint;
    public int downX;
    public int downY;
    public GestureLockCircleView[] gestureCircleViewArr;
    public int guideLineEndX;
    public int guideLineEndY;
    public int guideLineStartX;
    public int guideLineStartY;
    public boolean hasRoundBorder;
    public boolean ifAllowDrawLockPath;
    public boolean ifAllowInteract;
    public boolean ifCheckOnErr;
    public Path lockPath;
    public List<Integer> lockPathArr;
    public Context mContext;
    public int mCount;
    public GestureEventCallback mGestureEventCallback;
    public int mGesturePasswordViewWidth;
    public int mHeight;
    public int mModeStatus;
    public int mWidth;
    public float marginRate;
    public int maxAttemptTimes;
    public int minLengthOfPwd;
    public int movedX;
    public int movedY;
    public Paint paint_correct;
    public Paint paint_error;
    public int resetCurrentTime;
    public List<Integer> tempPwd;

    public class ColorHolder {
        public static final int COLOR_GRAY = -6710887;
        public static final int COLOR_RED = -52686;
        public static final int COLOR_YELLOW = -481002;

        public ColorHolder() {
        }
    }

    public interface GestureEventCallback {
        void onCheckFinish(boolean z, int i);

        void onGetTempPassword(List<Integer> list);

        void onResetFinish(List<Integer> list);

        void onSwipeFinish(List<Integer> list);

        void onSwipeMore();

        void onToast(String str, int i);
    }

    public static class GestureEventCallbackAdapter implements GestureEventCallback {
        @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallback
        public void onCheckFinish(boolean z, int i) {
        }

        @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallback
        public void onGetTempPassword(List<Integer> list) {
        }

        @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallback
        public void onResetFinish(List<Integer> list) {
        }

        @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallback
        public void onSwipeFinish(List<Integer> list) {
        }

        @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallback
        public void onSwipeMore() {
        }

        @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallback
        public void onToast(String str, int i) {
        }
    }

    public class ToastStrHolder {
        public static final String forYourSafetyStr = "为了您的账户安全，请设置手势密码";
        public static final String notSameStr = "与首次绘制不一致，请再次绘制";
        public static final String successStr = "绘制成功";
        public static final String swipeTooLittlePointStr = "请最少连接%s个点";
        public static final String tryAgainStr = "请再次绘制手势密码";
        public static final String wrongPwdInputStr = "输入错误，您还可以输入%s次";
        public static final String wrongPwdInputTips = "输入错误，请重新输入手势密码";

        public ToastStrHolder() {
        }
    }

    public GestureLockLayout(Context context) {
        this(context, null);
    }

    private void addPwd(int i) {
        if (checkRepetition(i)) {
            return;
        }
        this.lockPathArr.add(Integer.valueOf(i));
    }

    private boolean checkRepetition(int i) {
        return this.lockPathArr.contains(Integer.valueOf(i));
    }

    private boolean compare(List<Integer> list, List<Integer> list2) {
        if (list == null || list2 == null) {
            throw new RuntimeException("存在list为空，不执行对比");
        }
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i) != list2.get(i)) {
                return false;
            }
        }
        return true;
    }

    private List<Integer> copyPwd(List<Integer> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(list.get(i));
        }
        return arrayList;
    }

    private void dealAttr(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GestureLockLayout);
        if (typedArrayObtainStyledAttributes != null) {
            try {
                this.hasRoundBorder = typedArrayObtainStyledAttributes.getBoolean(2, false);
                this.mCount = typedArrayObtainStyledAttributes.getInteger(0, 3);
                this.ifAllowInteract = typedArrayObtainStyledAttributes.getBoolean(1, false);
            } catch (Exception unused) {
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void drawLockPath(Canvas canvas) {
        canvas.drawPath(this.lockPath, this.currentPaint);
    }

    private void drawMovingPath(Canvas canvas) {
        int i;
        int i2 = this.guideLineStartX;
        if (i2 == 0 || (i = this.guideLineStartY) == 0) {
            return;
        }
        canvas.drawLine(i2, i, this.guideLineEndX, this.guideLineEndY, this.currentPaint);
    }

    private Point getCenterPoint(View view) {
        Rect rect = new Rect();
        view.getHitRect(rect);
        return new Point((view.getWidth() / 2) + rect.left, (view.getHeight() / 2) + rect.top);
    }

    private GestureLockCircleView getCircleView(int i) {
        GestureLockCircleView gestureLockCircleView = new GestureLockCircleView(this.mContext);
        double d = i;
        float fPow = (float) (d / (Math.pow(this.mCount, 3.0d) + 0.5d));
        gestureLockCircleView.setInnerCircle(getResources().getColor(R.color.colorChecked), fPow);
        float f = fPow * 0.2f;
        this.paint_correct.setStrokeWidth(f);
        this.paint_error.setStrokeWidth(f);
        gestureLockCircleView.setBorderRound(this.hasRoundBorder, getResources().getColor(R.color.colorChecked), (float) (d / (Math.pow(this.mCount, 2.0d) + 0.5d)));
        gestureLockCircleView.switchStatus(1);
        return gestureLockCircleView;
    }

    private GestureLockCircleView getClickedChild(int i, int i2) {
        for (GestureLockCircleView gestureLockCircleView : this.gestureCircleViewArr) {
            if (ifClickOnView(i, i2, gestureLockCircleView)) {
                return gestureLockCircleView;
            }
        }
        return null;
    }

    private int getClickedChildIndex(int i, int i2) {
        int i3 = 0;
        while (true) {
            GestureLockCircleView[] gestureLockCircleViewArr = this.gestureCircleViewArr;
            if (i3 >= gestureLockCircleViewArr.length) {
                return -1;
            }
            if (ifClickOnView(i, i2, gestureLockCircleViewArr[i3])) {
                return i3;
            }
            i3++;
        }
    }

    private boolean ifClickOnView(int i, int i2, View view) {
        Rect rect = new Rect();
        view.getHitRect(rect);
        int width = view.getWidth();
        int height = view.getHeight();
        float f = rect.left;
        float f2 = this.marginRate;
        float f3 = width;
        float f4 = height;
        return new Rect((int) ((f2 * f3) + f), (int) ((f2 * f4) + ((float) rect.top)), (int) (((float) rect.right) - (f3 * f2)), (int) (((float) rect.bottom) - (f2 * f4))).contains(i, i2);
    }

    private void init(Context context) {
        this.mContext = context;
        setClickable(true);
        setBackgroundColor(this.background_color_transparent);
        Paint paint = new Paint();
        this.paint_correct = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.paint_correct.setAntiAlias(true);
        this.paint_correct.setColor(getResources().getColor(R.color.colorChecked));
        Paint paint2 = new Paint();
        this.paint_error = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.paint_error.setAntiAlias(true);
        this.paint_error.setColor(getResources().getColor(R.color.colorCheckedErr));
        initLockPathArr();
        this.currentPaint = this.paint_correct;
    }

    private void initLockPathArr() {
        this.lockPathArr = new ArrayList();
    }

    private void onCheck() {
        if (this.mGestureEventCallback == null) {
            return;
        }
        boolean zCompare = compare(this.checkPwd, this.lockPathArr);
        int i = this.currentAttemptTime;
        int i2 = this.maxAttemptTimes;
        if (i > i2) {
            this.mGestureEventCallback.onCheckFinish(zCompare, i);
            this.currentAttemptTime = 1;
            return;
        }
        if (zCompare) {
            this.mGestureEventCallback.onCheckFinish(zCompare, i);
            this.currentAttemptTime = 1;
            this.currentPaint = this.paint_correct;
            this.ifCheckOnErr = false;
            return;
        }
        if (i2 - i > 0) {
            onToast(ToastStrHolder.wrongPwdInputTips, ColorHolder.COLOR_RED);
            this.currentPaint = this.paint_error;
            this.ifCheckOnErr = true;
        } else {
            this.mGestureEventCallback.onCheckFinish(zCompare, i);
        }
        this.currentAttemptTime++;
    }

    private void onGetTempPassword(List<Integer> list) {
        GestureEventCallback gestureEventCallback = this.mGestureEventCallback;
        if (gestureEventCallback == null) {
            return;
        }
        gestureEventCallback.onGetTempPassword(list);
    }

    private void onReset() {
        if (this.mGestureEventCallback == null) {
            return;
        }
        if (this.resetCurrentTime == 0) {
            this.tempPwd = copyPwd(this.lockPathArr);
            this.resetCurrentTime++;
            onToast(ToastStrHolder.tryAgainStr, ColorHolder.COLOR_GRAY);
            onGetTempPassword(this.tempPwd);
            return;
        }
        try {
            if (compare(this.tempPwd, this.lockPathArr)) {
                onToast(ToastStrHolder.successStr, ColorHolder.COLOR_GRAY);
                this.mGestureEventCallback.onResetFinish(copyPwd(this.lockPathArr));
            } else {
                onToast(ToastStrHolder.notSameStr, ColorHolder.COLOR_RED);
            }
        } catch (RuntimeException e) {
            e.printStackTrace();
        }
    }

    private void onSwipeFinish() {
        GestureEventCallback gestureEventCallback = this.mGestureEventCallback;
        if (gestureEventCallback == null) {
            return;
        }
        gestureEventCallback.onSwipeFinish(copyPwd(this.lockPathArr));
    }

    private void onSwipeMore() {
        GestureEventCallback gestureEventCallback = this.mGestureEventCallback;
        if (gestureEventCallback == null) {
            return;
        }
        gestureEventCallback.onSwipeMore();
    }

    private void onToast(String str, int i) {
        GestureEventCallback gestureEventCallback = this.mGestureEventCallback;
        if (gestureEventCallback == null) {
            return;
        }
        gestureEventCallback.onToast(str, i);
    }

    private void resetAllCircleBtn() {
        if (this.gestureCircleViewArr == null) {
            return;
        }
        int i = 0;
        while (true) {
            GestureLockCircleView[] gestureLockCircleViewArr = this.gestureCircleViewArr;
            if (i >= gestureLockCircleViewArr.length) {
                return;
            }
            gestureLockCircleViewArr[i].switchStatus(1);
            i++;
        }
    }

    private void resetMovingPathCoordinate() {
        this.guideLineStartX = 0;
        this.guideLineStartY = 0;
        this.guideLineEndX = 0;
        this.guideLineEndY = 0;
    }

    private void resetPwd() {
        List<Integer> list = this.lockPathArr;
        if (list == null) {
            this.lockPathArr = new ArrayList();
        } else {
            list.clear();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Log.d("onDrawTag", "dispatchDraw");
        if (this.gestureCircleViewArr == null || !this.ifAllowInteract) {
            return;
        }
        drawLockPath(canvas);
        drawMovingPath(canvas);
    }

    public int getCurrentMode() {
        return this.mModeStatus;
    }

    public void initCurrentTimes() {
        this.resetCurrentTime = 0;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Log.d("onDrawTag", "onDraw");
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.mWidth = View.MeasureSpec.getSize(i);
        int size = View.MeasureSpec.getSize(i2);
        this.mHeight = size;
        int i3 = this.mWidth;
        if (i3 < size) {
            size = i3;
        }
        this.mWidth = size;
        this.mHeight = size;
        if (this.gestureCircleViewArr != null) {
            return;
        }
        int i4 = this.mCount;
        this.gestureCircleViewArr = new GestureLockCircleView[i4 * i4];
        this.mGesturePasswordViewWidth = size / i4;
        int i5 = 0;
        while (true) {
            GestureLockCircleView[] gestureLockCircleViewArr = this.gestureCircleViewArr;
            if (i5 >= gestureLockCircleViewArr.length) {
                return;
            }
            gestureLockCircleViewArr[i5] = getCircleView(this.mHeight);
            int i6 = i5 + 1;
            this.gestureCircleViewArr[i5].setId(i6);
            int i7 = this.mGesturePasswordViewWidth;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i7, i7);
            if (i5 % this.mCount != 0) {
                layoutParams.addRule(1, this.gestureCircleViewArr[i5 - 1].getId());
            }
            int i8 = this.mCount;
            if (i5 > i8 - 1) {
                layoutParams.addRule(3, this.gestureCircleViewArr[i5 - i8].getId());
            }
            layoutParams.setMargins(0, 0, 0, 0);
            addView(this.gestureCircleViewArr[i5], layoutParams);
            i5 = i6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.view.GestureLockLayout.onTouchEvent(android.view.MotionEvent):boolean"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/view/GestureLockLayout.smali:1488
    }

    public void refreshPwdKeyboard(List<Integer> list) {
        for (int i = 0; i < this.mCount * this.mCount; i++) {
            try {
                this.gestureCircleViewArr[i].switchStatus(1);
            } catch (IndexOutOfBoundsException e) {
                e.printStackTrace();
                return;
            }
        }
        if (list != null) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.gestureCircleViewArr[list.get(i2).intValue()].switchStatus(2);
            }
        }
    }

    public void setGestureFinishedCallback(GestureEventCallback gestureEventCallback) {
        this.mGestureEventCallback = gestureEventCallback;
    }

    public void switchToCheckMode(List<Integer> list, int i) {
        if (list == null || i <= 0) {
            Log.e("switchToCheckMode", "参数错误,pwd不能为空，而且 maxAttemptTimes必须大于0");
            return;
        }
        this.currentAttemptTime = 1;
        this.mModeStatus = 2;
        this.maxAttemptTimes = i;
        this.checkPwd = copyPwd(list);
    }

    public void switchToResetMode() {
        this.mModeStatus = 1;
    }

    public GestureLockLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GestureLockLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.gestureCircleViewArr = null;
        this.mCount = 4;
        this.marginRate = 0.2f;
        this.ifAllowDrawLockPath = false;
        this.lockPath = new Path();
        this.minLengthOfPwd = 4;
        this.mModeStatus = -1;
        this.maxAttemptTimes = 5;
        this.currentAttemptTime = 1;
        this.resetCurrentTime = 0;
        this.ifCheckOnErr = false;
        this.background_color = -12087041;
        this.background_color_transparent = 0;
        dealAttr(context, attributeSet);
        init(context);
    }
}
