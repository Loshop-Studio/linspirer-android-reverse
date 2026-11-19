package com.android.launcher3.activity;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.adapter.RubbishRecyclerViewAdapter;
import com.android.launcher3.model.RubbishFileInfo;
import com.android.launcher3.network.DeviceLogHelper;
import com.android.launcher3.view.CommonDialog;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C0930ee;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1045j2;
import com.huawei.hem.C1299t5;
import com.huawei.hem.InterfaceC1071k3;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CleanRubbishActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public TextView f1682b;

    /* renamed from: c */
    public TextView f1683c;

    /* renamed from: d */
    public TextView f1684d;

    /* renamed from: e */
    public List<RubbishFileInfo> f1685e;

    /* renamed from: f */
    public boolean f1686f = true;

    /* renamed from: g */
    public AsyncTaskC0631c f1687g;

    /* renamed from: h */
    public RecyclerView f1688h;

    /* renamed from: i */
    public RubbishRecyclerViewAdapter f1689i;

    /* renamed from: j */
    public int f1690j;

    /* renamed from: com.android.launcher3.activity.CleanRubbishActivity$a */
    public class C0629a implements InterfaceC1071k3 {
        public C0629a() {
        }

        @Override // com.huawei.hem.InterfaceC1071k3
        /* renamed from: a */
        public void mo1185a(int i, boolean z) {
            CleanRubbishActivity.this.f1685e.get(i).setSelected(z);
            ArrayList arrayList = new ArrayList();
            if (AbstractC1102l9.m2273N(CleanRubbishActivity.this.f1685e)) {
                return;
            }
            Iterator<RubbishFileInfo> it = CleanRubbishActivity.this.f1685e.iterator();
            while (it.hasNext()) {
                arrayList.add(Boolean.valueOf(it.next().isSelected()));
            }
            if (CleanRubbishActivity.this.f1683c != null) {
                if (arrayList.contains(Boolean.FALSE)) {
                    CleanRubbishActivity cleanRubbishActivity = CleanRubbishActivity.this;
                    cleanRubbishActivity.f1683c.setText(cleanRubbishActivity.getString(R.string.choice_all));
                } else {
                    CleanRubbishActivity cleanRubbishActivity2 = CleanRubbishActivity.this;
                    cleanRubbishActivity2.f1683c.setText(cleanRubbishActivity2.getString(R.string.cancel_choice_all));
                }
            }
        }

        @Override // com.huawei.hem.InterfaceC1071k3
        /* renamed from: b */
        public void mo1186b(int i) {
        }
    }

    /* renamed from: com.android.launcher3.activity.CleanRubbishActivity$b */
    public class C0630b implements CommonDialog.DialogButtonOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f1692a;

        public C0630b(int i) {
            this.f1692a = i;
        }

        @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
        public void clickCancelButton(View view) {
        }

        @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
        public void clickConfirmButton(View view, String str) {
            if (this.f1692a == 0) {
                DeviceLogHelper.getInstance().recordClearEvent();
                CleanRubbishActivity.m1183g(CleanRubbishActivity.this);
            }
        }
    }

    /* renamed from: com.android.launcher3.activity.CleanRubbishActivity$c */
    public class AsyncTaskC0631c extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC0631c() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (AbstractC1102l9.m2273N(CleanRubbishActivity.this.f1685e)) {
                C0850bc.m1403m("CleanRubbishActivity----rubbishs are empty");
                return null;
            }
            StringBuilder sbM1765j = C0948f6.m1765j("CleanRubbishActivity----deleteLayout:");
            sbM1765j.append(CleanRubbishActivity.this.f1690j);
            C0850bc.m1403m(sbM1765j.toString());
            for (int i = 0; i < CleanRubbishActivity.this.f1685e.size(); i++) {
                if (CleanRubbishActivity.this.f1685e.get(i).isSelected()) {
                    C0850bc.m1403m("CleanRubbishActivity----isSelected:" + i);
                    File file = new File(CleanRubbishActivity.this.f1685e.get(i).getFilePath());
                    C0930ee.m1678c(file);
                    C0930ee.m1682g(CleanRubbishActivity.this, file.getAbsolutePath(), file.getName());
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r5) {
            super.onPostExecute(r5);
            ArrayList arrayList = new ArrayList();
            StringBuilder sbM1765j = C0948f6.m1765j("CleanRubbishActivity----befo rubbishFileInfoList size:");
            sbM1765j.append(CleanRubbishActivity.this.f1685e.size());
            C0850bc.m1403m(sbM1765j.toString());
            for (int i = 0; i < CleanRubbishActivity.this.f1685e.size(); i++) {
                if (CleanRubbishActivity.this.f1685e.get(i).isSelected()) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (!AbstractC1102l9.m2273N(arrayList)) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    List<RubbishFileInfo> list = CleanRubbishActivity.this.f1685e;
                    list.remove(list.get(((Integer) arrayList.get(size)).intValue()));
                }
            }
            StringBuilder sbM1765j2 = C0948f6.m1765j("CleanRubbishActivity----after rubbishFileInfoList size:");
            sbM1765j2.append(CleanRubbishActivity.this.f1685e.size());
            C0850bc.m1403m(sbM1765j2.toString());
            CleanRubbishActivity.this.f1689i.notifyDataSetChanged();
            CleanRubbishActivity.this.f1686f = true;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            CleanRubbishActivity.this.f1686f = false;
        }
    }

    /* renamed from: g */
    public static void m1183g(CleanRubbishActivity cleanRubbishActivity) {
        if (cleanRubbishActivity == null) {
            throw null;
        }
        AsyncTaskC0631c asyncTaskC0631c = cleanRubbishActivity.new AsyncTaskC0631c();
        cleanRubbishActivity.f1687g = asyncTaskC0631c;
        asyncTaskC0631c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_rubbish;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        int i = getIntent().getExtras().getInt("rubbishState");
        this.f1690j = i;
        this.f1685e.addAll(C1299t5.m2720a(i));
        if (!AbstractC1102l9.m2273N(this.f1685e)) {
            Iterator<RubbishFileInfo> it = this.f1685e.iterator();
            while (it.hasNext()) {
                it.next().setSelected(true);
            }
        }
        this.f1689i.f1873d = new C0629a();
        new C1045j2(this, true);
        m1214a();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).fitsSystemWindows(true).statusBarColor(R.color.blue).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1688h = (RecyclerView) findViewById(R.id.rubbish_recyclerView);
        ArrayList arrayList = new ArrayList();
        this.f1685e = arrayList;
        this.f1689i = new RubbishRecyclerViewAdapter(this, arrayList);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.f1688h.setLayoutManager(linearLayoutManager);
        this.f1688h.setAdapter(this.f1689i);
        this.f1683c = (TextView) findViewById(R.id.select_text);
        this.f1684d = (TextView) findViewById(R.id.delete_text);
        TextView textView = (TextView) findViewById(R.id.back_textview);
        this.f1682b = textView;
        textView.setOnClickListener(this);
        this.f1683c.setOnClickListener(this);
        this.f1684d.setOnClickListener(this);
    }

    /* renamed from: f */
    public final void m1184f(int i) {
        int i2 = i == 0 ? R.string.delete_file : R.string.must_select_a_file;
        CommonDialog commonDialog = new CommonDialog();
        commonDialog.initDialog(this, i2, R.string.bt_define, R.string.bt_cancel, 0.45d, 0.4d, false);
        commonDialog.setDialogOnClickEvent(new C0630b(i));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        int id = view.getId();
        if (id == R.id.back_textview) {
            if (this.f1686f) {
                setResult(-1, new Intent());
                finish();
                return;
            }
            return;
        }
        if (id == R.id.delete_text) {
            if (this.f1686f) {
                ArrayList arrayList = new ArrayList();
                Iterator<RubbishFileInfo> it = this.f1685e.iterator();
                while (it.hasNext()) {
                    arrayList.add(Boolean.valueOf(it.next().isSelected()));
                }
                if (arrayList.contains(Boolean.TRUE)) {
                    m1184f(0);
                } else {
                    m1184f(1);
                }
                DeviceLogHelper.getInstance().recordClearEvent();
                return;
            }
            return;
        }
        if (id == R.id.select_text && this.f1686f && !AbstractC1102l9.m2273N(this.f1685e)) {
            String string = this.f1683c.getText().toString();
            if (getString(R.string.choice_all).equals(string)) {
                Iterator<RubbishFileInfo> it2 = this.f1685e.iterator();
                while (it2.hasNext()) {
                    it2.next().setSelected(true);
                }
                this.f1683c.setText(getString(R.string.cancel_choice_all));
            } else if (getString(R.string.cancel_choice_all).equals(string)) {
                Iterator<RubbishFileInfo> it3 = this.f1685e.iterator();
                while (it3.hasNext()) {
                    it3.next().setSelected(false);
                }
                this.f1683c.setText(getString(R.string.choice_all));
            }
            this.f1689i.notifyDataSetChanged();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        setResult(-1, new Intent());
        finish();
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        C0850bc.m1403m("CleanRubbishActivity----onPause");
        AsyncTaskC0631c asyncTaskC0631c = this.f1687g;
        if (asyncTaskC0631c == null || asyncTaskC0631c.isCancelled() || this.f1687g.getStatus() != AsyncTask.Status.RUNNING) {
            return;
        }
        this.f1687g.cancel(true);
        this.f1687g = null;
        C0850bc.m1403m("CleanRubbishActivity----fileCleanTask cancel");
    }
}
