package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.SupportRecyclerviewResources;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* loaded from: classes.dex */
public class ItemTouchUIUtilImpl implements ItemTouchUIUtil {
    public static final ItemTouchUIUtil INSTANCE = new ItemTouchUIUtilImpl();

    public static float findMaxElevation(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (childAt != view) {
                float elevation = ViewCompat.getElevation(childAt);
                if (elevation > f) {
                    f = elevation;
                }
            }
        }
        return f;
    }

    @Override // android.support.v7.widget.helper.ItemTouchUIUtil
    public void clearView(View view) {
        Object tag = view.getTag(SupportRecyclerviewResources.id.item_touch_helper_previous_elevation);
        if (tag != null && (tag instanceof Float)) {
            ViewCompat.setElevation(view, ((Float) tag).floatValue());
        }
        view.setTag(SupportRecyclerviewResources.id.item_touch_helper_previous_elevation, null);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }

    @Override // android.support.v7.widget.helper.ItemTouchUIUtil
    public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
        if (z && view.getTag(SupportRecyclerviewResources.id.item_touch_helper_previous_elevation) == null) {
            Float fValueOf = Float.valueOf(ViewCompat.getElevation(view));
            ViewCompat.setElevation(view, findMaxElevation(recyclerView, view) + 1.0f);
            view.setTag(SupportRecyclerviewResources.id.item_touch_helper_previous_elevation, fValueOf);
        }
        view.setTranslationX(f);
        view.setTranslationY(f2);
    }

    @Override // android.support.v7.widget.helper.ItemTouchUIUtil
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
    }

    @Override // android.support.v7.widget.helper.ItemTouchUIUtil
    public void onSelected(View view) {
    }
}
