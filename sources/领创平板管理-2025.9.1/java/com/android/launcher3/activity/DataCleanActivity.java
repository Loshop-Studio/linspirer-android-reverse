package com.android.launcher3.activity;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.adapter.DataCleanRecyclerViewAdapter;
import com.android.launcher3.model.DataCleanCategoryInfo;
import com.android.launcher3.network.DeviceLogHelper;
import com.android.launcher3.view.CircleProgressView;
import com.android.launcher3.view.CommonDialog;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ViewControlUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.C0930ee;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.CheckGrantedPermission;
import com.huawei.hem.DataCleanUtil;
import com.huawei.hem.LauncherOnClickListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DataCleanActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public int f1697b;

    /* renamed from: c */
    public TextView f1698c;

    /* renamed from: d */
    public RecyclerView f1699d;

    /* renamed from: e */
    public Button f1700e;

    /* renamed from: f */
    public Button f1701f;

    /* renamed from: i */
    public AsyncTaskC0634c f1704i;

    /* renamed from: j */
    public AsyncTaskC0635d f1705j;

    /* renamed from: k */
    public CircleProgressView f1706k;

    /* renamed from: l */
    public List<DataCleanCategoryInfo> f1707l;

    /* renamed from: m */
    public DataCleanRecyclerViewAdapter f1708m;

    /* renamed from: g */
    public boolean f1702g = true;

    /* renamed from: h */
    public boolean f1703h = true;

    /* renamed from: n */
    public int[] f1709n = {-16345601, -1445385, -1445385, -1445385, -16345601};

    /* renamed from: com.android.launcher3.activity.DataCleanActivity$a */
    public class C0632a implements LauncherOnClickListener {
        public C0632a() {
        }

        @Override // com.huawei.hem.InterfaceC1071k3
        /* renamed from: a */
        public void mo1185a(int i, boolean z) {
            if (i < 0 || i >= 7) {
                return;
            }
            DataCleanActivity.this.f1707l.get(i).setSelect(z);
            DataCleanActivity.this.f1708m.notifyItemChanged(i);
        }

        @Override // com.huawei.hem.InterfaceC1071k3
        /* renamed from: b */
        public void mo1186b(int i) {
            DataCleanActivity dataCleanActivity = DataCleanActivity.this;
            if (dataCleanActivity.f1702g && dataCleanActivity.f1703h) {
                Intent intent = new Intent(DataCleanActivity.this, (Class<?>) CleanRubbishActivity.class);
                intent.putExtra("rubbishState", i);
                DataCleanActivity.this.startActivityForResult(intent, 1);
            }
        }
    }

    /* renamed from: com.android.launcher3.activity.DataCleanActivity$b */
    public class C0633b implements CommonDialog.DialogButtonOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f1711a;

        public C0633b(int i) {
            this.f1711a = i;
        }

        @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
        public void clickCancelButton(View view) {
        }

        @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
        public void clickConfirmButton(View view, String str) {
            if (this.f1711a == 0) {
                DeviceLogHelper.getInstance().recordClearEvent();
                DataCleanActivity.this.f1704i = DataCleanActivity.this.new AsyncTaskC0634c();
                DataCleanActivity.this.f1704i.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
            }
        }
    }

    /* renamed from: com.android.launcher3.activity.DataCleanActivity$c */
    public class AsyncTaskC0634c extends AsyncTask<String, Integer, String> {
        public AsyncTaskC0634c() {
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String[] strArr) throws InterruptedException {
            File[] fileArrListFiles;
            if (AbstractC1102l9.m2273N(DataCleanActivity.this.f1707l)) {
                return null;
            }
            if (DataCleanActivity.this.f1707l.get(0).isSelect()) {
                for (int i = 0; i < DataCleanUtil.f3763j.length; i++) {
                    C0930ee.m1677b(new File(DataCleanUtil.f3763j[i]));
                }
                DataCleanUtil.f3755b.clear();
            }
            if (DataCleanActivity.this.f1707l.get(1).isSelect()) {
                for (int i2 = 0; i2 < DataCleanUtil.f3765l.length; i2++) {
                    File file = new File(DataCleanUtil.f3765l[i2]);
                    DataCleanActivity dataCleanActivity = DataCleanActivity.this;
                    if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
                        for (int i3 = 0; i3 < fileArrListFiles.length; i3++) {
                            C0930ee.m1677b(fileArrListFiles[i3]);
                            C0930ee.m1682g(dataCleanActivity, fileArrListFiles[i3].getAbsolutePath(), fileArrListFiles[i3].getName());
                            C0930ee.m1678c(fileArrListFiles[i3]);
                        }
                    }
                }
                DataCleanUtil.f3760g.clear();
            }
            if (DataCleanActivity.this.f1707l.get(2).isSelect()) {
                for (int i4 = 0; i4 < DataCleanUtil.f3759f.size(); i4++) {
                    File file2 = new File(DataCleanUtil.f3759f.get(i4).getFilePath());
                    C0930ee.m1678c(file2);
                    C0930ee.m1682g(DataCleanActivity.this, file2.getAbsolutePath(), file2.getName());
                }
                DataCleanUtil.f3759f.clear();
            }
            if (DataCleanActivity.this.f1707l.get(3).isSelect()) {
                for (int i5 = 0; i5 < DataCleanUtil.f3756c.size(); i5++) {
                    C0930ee.m1678c(new File(DataCleanUtil.f3756c.get(i5).getFilePath()));
                }
                DataCleanUtil.f3756c.clear();
            }
            if (DataCleanActivity.this.f1707l.get(4).isSelect()) {
                for (int i6 = 0; i6 < DataCleanUtil.f3757d.size(); i6++) {
                    C0930ee.m1678c(new File(DataCleanUtil.f3757d.get(i6).getFilePath()));
                }
                DataCleanUtil.f3757d.clear();
            }
            if (DataCleanActivity.this.f1707l.get(5).isSelect()) {
                for (int i7 = 0; i7 < DataCleanUtil.f3758e.size(); i7++) {
                    C0930ee.m1678c(new File(DataCleanUtil.f3758e.get(i7).getFilePath()));
                }
                DataCleanUtil.f3758e.clear();
            }
            if (DataCleanActivity.this.f1707l.get(6).isSelect()) {
                for (int i8 = 0; i8 < DataCleanUtil.f3761h.size(); i8++) {
                    File file3 = new File(DataCleanUtil.f3761h.get(i8).getFilePath());
                    C0930ee.m1678c(file3);
                    C0930ee.m1682g(DataCleanActivity.this, file3.getAbsolutePath(), file3.getName());
                }
                DataCleanUtil.f3761h.clear();
            }
            for (int i9 = 1; i9 <= 100; i9++) {
                publishProgress(Integer.valueOf(i9));
                if (isCancelled()) {
                    return null;
                }
                try {
                    Thread.sleep(80L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            DataCleanActivity dataCleanActivity = DataCleanActivity.this;
            dataCleanActivity.f1703h = true;
            dataCleanActivity.m1189h(true);
            DataCleanActivity.m1187g(DataCleanActivity.this);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            DataCleanActivity dataCleanActivity = DataCleanActivity.this;
            dataCleanActivity.f1703h = false;
            dataCleanActivity.m1189h(false);
        }

        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            super.onProgressUpdate(numArr2);
            DataCleanActivity.this.f1706k.setProgress(numArr2[0].intValue());
            if (numArr2[0].intValue() == 100) {
                DataCleanActivity dataCleanActivity = DataCleanActivity.this;
                dataCleanActivity.f1697b = LauncherDeviceUtils.m1584a(dataCleanActivity);
                DataCleanActivity dataCleanActivity2 = DataCleanActivity.this;
                dataCleanActivity2.f1706k.setProgress(dataCleanActivity2.f1697b);
            }
            isCancelled();
        }
    }

    /* renamed from: com.android.launcher3.activity.DataCleanActivity$d */
    public class AsyncTaskC0635d extends AsyncTask<String, Integer, String> {
        public AsyncTaskC0635d() {
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String[] strArr) throws InterruptedException {
            DataCleanUtil.m2722c(new File(DataCleanUtil.f3754a), DataCleanActivity.this);
            for (int i = 1; i <= 100; i++) {
                publishProgress(Integer.valueOf(i));
                if (isCancelled()) {
                    return null;
                }
                try {
                    Thread.sleep(80L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            DataCleanActivity dataCleanActivity = DataCleanActivity.this;
            dataCleanActivity.f1702g = true;
            dataCleanActivity.m1189h(true);
            DataCleanActivity.m1187g(DataCleanActivity.this);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            DataCleanActivity dataCleanActivity = DataCleanActivity.this;
            dataCleanActivity.f1702g = false;
            dataCleanActivity.m1189h(false);
            DataCleanUtil.f3755b.clear();
            DataCleanUtil.f3760g.clear();
            DataCleanUtil.f3759f.clear();
            DataCleanUtil.f3756c.clear();
            DataCleanUtil.f3757d.clear();
            DataCleanUtil.f3758e.clear();
            DataCleanUtil.f3761h.clear();
        }

        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            super.onProgressUpdate(numArr2);
            DataCleanActivity.this.f1706k.setProgress(numArr2[0].intValue());
            if (numArr2[0].intValue() == 100) {
                DataCleanActivity dataCleanActivity = DataCleanActivity.this;
                dataCleanActivity.f1697b = LauncherDeviceUtils.m1584a(dataCleanActivity);
                DataCleanActivity dataCleanActivity2 = DataCleanActivity.this;
                dataCleanActivity2.f1706k.setProgress(dataCleanActivity2.f1697b);
            }
            isCancelled();
        }
    }

    /* renamed from: g */
    public static void m1187g(DataCleanActivity dataCleanActivity) {
        if (dataCleanActivity == null) {
            throw null;
        }
        LTKDateUtil.m1403m("DataCleanActivity-- finishScan");
        dataCleanActivity.f1705j = null;
        int size = DataCleanUtil.f3755b.size();
        int size2 = DataCleanUtil.f3760g.size();
        int size3 = DataCleanUtil.f3759f.size();
        int size4 = DataCleanUtil.f3756c.size();
        int size5 = DataCleanUtil.f3757d.size();
        int size6 = DataCleanUtil.f3758e.size();
        int size7 = DataCleanUtil.f3761h.size();
        if (AbstractC1102l9.m2273N(dataCleanActivity.f1707l)) {
            LTKDateUtil.m1403m("DataCleanActivity-- scan categorys are empty");
        } else {
            for (int i = 0; i < dataCleanActivity.f1707l.size(); i++) {
                DataCleanCategoryInfo dataCleanCategoryInfo = dataCleanActivity.f1707l.get(i);
                if (i == 0) {
                    dataCleanCategoryInfo.setNumber(size);
                } else if (i == 1) {
                    dataCleanCategoryInfo.setNumber(size2);
                } else if (i == 2) {
                    dataCleanCategoryInfo.setNumber(size3);
                } else if (i == 3) {
                    dataCleanCategoryInfo.setNumber(size4);
                } else if (i == 4) {
                    dataCleanCategoryInfo.setNumber(size5);
                } else if (i == 5) {
                    dataCleanCategoryInfo.setNumber(size6);
                } else if (i == 6) {
                    dataCleanCategoryInfo.setNumber(size7);
                }
            }
            LTKDateUtil.m1403m("DataCleanActivity-- destDownloadPathListSize:" + size);
            LTKDateUtil.m1403m("DataCleanActivity-- imageVideoPathSize:" + size2);
            LTKDateUtil.m1403m("DataCleanActivity-- bigFilePathListSize:" + size3);
            LTKDateUtil.m1403m("DataCleanActivity-- appCachePathListSize:" + size4);
            LTKDateUtil.m1403m("DataCleanActivity-- noneUsedApkPathListSize:" + size5);
            LTKDateUtil.m1403m("DataCleanActivity-- appLogPathListSize:" + size6);
            LTKDateUtil.m1403m("DataCleanActivity-- imageVideoPathCacheSize:" + size7);
        }
        dataCleanActivity.f1708m.notifyDataSetChanged();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_dataclean;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        for (int i : DataCleanUtil.f3762i) {
            DataCleanCategoryInfo dataCleanCategoryInfo = new DataCleanCategoryInfo();
            dataCleanCategoryInfo.setDesc(getString(i));
            this.f1707l.add(dataCleanCategoryInfo);
        }
        DataCleanRecyclerViewAdapter dataCleanRecyclerViewAdapter = this.f1708m;
        if (dataCleanRecyclerViewAdapter != null) {
            dataCleanRecyclerViewAdapter.f1851d = new C0632a();
        }
        new CheckGrantedPermission(this, true);
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
        CircleProgressView circleProgressView = (CircleProgressView) findViewById(R.id.circle_progressview);
        this.f1706k = circleProgressView;
        circleProgressView.setProgressColor(this.f1709n);
        this.f1700e = (Button) findViewById(R.id.scan_button);
        this.f1701f = (Button) findViewById(R.id.clean_button);
        TextView textView = (TextView) findViewById(R.id.back_textview);
        this.f1698c = textView;
        textView.setOnClickListener(this);
        this.f1700e.setOnClickListener(this);
        this.f1701f.setOnClickListener(this);
        this.f1699d = (RecyclerView) findViewById(R.id.category_view);
        ArrayList arrayList = new ArrayList();
        this.f1707l = arrayList;
        this.f1708m = new DataCleanRecyclerViewAdapter(this, arrayList);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.f1699d.setLayoutManager(linearLayoutManager);
        this.f1699d.setAdapter(this.f1708m);
        DeviceLogHelper.getInstance().recordOpenClearApp();
        m1190i();
    }

    /* renamed from: f */
    public final void m1188f(int i) {
        int i2 = i == 0 ? R.string.delete_file : R.string.must_select_a_file;
        CommonDialog commonDialog = new CommonDialog();
        commonDialog.initDialog(this, i2, R.string.bt_define, R.string.bt_cancel, 0.45d, 0.4d, false);
        commonDialog.setDialogOnClickEvent(new C0633b(i));
    }

    /* renamed from: h */
    public final void m1189h(boolean z) {
        Button button = this.f1700e;
        if (button == null || this.f1701f == null) {
            return;
        }
        if (!z) {
            button.setBackground(getResources().getDrawable(R.drawable.btn_round_corner1_alpha30_bg));
            this.f1701f.setBackground(getResources().getDrawable(R.drawable.btn_round_corner2_alpha30_bg));
        } else {
            button.setBackground(getResources().getDrawable(R.drawable.btn_round_corner1_bg));
            this.f1701f.setBackground(getResources().getDrawable(R.drawable.btn_round_corner2_bg));
            this.f1702g = true;
            this.f1703h = true;
        }
    }

    /* renamed from: i */
    public final void m1190i() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("DataCleanActivity-- scanFiles init scanState:");
        sbM1765j.append(this.f1702g);
        sbM1765j.append(" cleanState:");
        sbM1765j.append(this.f1703h);
        LTKDateUtil.m1403m(sbM1765j.toString());
        if (this.f1702g && this.f1703h) {
            AsyncTaskC0635d asyncTaskC0635d = new AsyncTaskC0635d();
            this.f1705j = asyncTaskC0635d;
            asyncTaskC0635d.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        LTKDateUtil.m1403m("DataCleanActivity-- onActivityResult");
        if (i == 1 && i2 == -1) {
            m1190i();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (ViewControlUtil.m1583a(view)) {
            return;
        }
        int id = view.getId();
        if (id == R.id.back_textview) {
            if (this.f1702g && this.f1703h) {
                finish();
                return;
            }
            return;
        }
        if (id != R.id.clean_button) {
            if (id != R.id.scan_button) {
                return;
            }
            m1190i();
            return;
        }
        m1214a();
        if (this.f1702g && this.f1703h) {
            ArrayList arrayList = new ArrayList();
            Iterator<DataCleanCategoryInfo> it = this.f1707l.iterator();
            while (it.hasNext()) {
                arrayList.add(Boolean.valueOf(it.next().isSelect()));
            }
            if (arrayList.contains(Boolean.TRUE)) {
                m1188f(0);
            } else {
                m1188f(1);
            }
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        LTKDateUtil.m1403m("DataCleanActivity-- onDestroy");
        m1189h(true);
        AsyncTaskC0635d asyncTaskC0635d = this.f1705j;
        if (asyncTaskC0635d != null && !asyncTaskC0635d.isCancelled() && this.f1705j.getStatus() == AsyncTask.Status.RUNNING) {
            this.f1705j.cancel(true);
            this.f1705j = null;
            LTKDateUtil.m1403m("DataCleanActivity-- fileScanTask cancel");
        }
        AsyncTaskC0634c asyncTaskC0634c = this.f1704i;
        if (asyncTaskC0634c != null && !asyncTaskC0634c.isCancelled() && this.f1704i.getStatus() == AsyncTask.Status.RUNNING) {
            this.f1704i.cancel(true);
            this.f1704i = null;
            LTKDateUtil.m1403m("DataCleanActivity-- fileCleanTask cancel");
        }
        this.f1702g = true;
        this.f1703h = true;
        this.f1706k.setProgress(0);
    }
}
