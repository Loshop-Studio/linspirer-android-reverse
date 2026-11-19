package com.android.launcher3.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.view.ViewGroup;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MFragmentPagerAdapter extends FragmentPagerAdapter {

    /* renamed from: a */
    public ArrayList<Fragment> f1856a;

    public MFragmentPagerAdapter(FragmentManager fragmentManager, ArrayList<Fragment> arrayList) {
        super(fragmentManager);
        this.f1856a = arrayList;
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        super.destroyItem(viewGroup, i, obj);
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.f1856a.size();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.f1856a.get(i);
    }
}
