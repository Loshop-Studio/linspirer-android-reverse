package com.android.launcher3.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.view.ViewGroup;
import com.huawei.hem.C0850bc;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MainFragmentPagerAdapter extends FragmentPagerAdapter {

    /* renamed from: a */
    public List<Fragment> f1857a;

    public MainFragmentPagerAdapter(FragmentManager fragmentManager, ArrayList<Fragment> arrayList) {
        super(fragmentManager);
        this.f1857a = arrayList;
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        try {
            super.finishUpdate(viewGroup);
        } catch (NullPointerException unused) {
            C0850bc.m1390A("Catch the NullPointerException in FragmentPagerAdapter.finishUpdate");
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.f1857a.size();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.f1857a.get(i);
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public long getItemId(int i) {
        return this.f1857a.get(i).hashCode();
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }
}
