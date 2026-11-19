package org.greenrobot.eventbus.util;

import android.os.Bundle;
import android.support.v4.app.Fragment;

/* loaded from: classes.dex */
public class ErrorDialogManager$SupportManagerFragment extends Fragment {

    /* renamed from: a */
    public boolean f6502a;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        throw null;
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        throw null;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (!this.f6502a) {
            throw null;
        }
        this.f6502a = false;
    }
}
