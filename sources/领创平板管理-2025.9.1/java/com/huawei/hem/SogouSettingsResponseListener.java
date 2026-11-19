package com.huawei.hem;

import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.SougouSetting;

/* compiled from: SouGouControlHelper.java */
/* renamed from: com.huawei.hem.t4 */
/* loaded from: classes.dex */
public class SogouSettingsResponseListener extends LTKResponseListener<SougouSetting> {

    /* renamed from: a */
    public final /* synthetic */ SogouInputSettingsHelper f3753a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SogouSettingsResponseListener(SogouInputSettingsHelper c1323u4, Class cls) {
        super(cls);
        this.f3753a = c1323u4;
    }

    @Override // com.android.launcher3.network.response.LTKResponseListener
    public void handleResult(SougouSetting sougouSetting) {
        SougouSetting sougouSetting2 = sougouSetting;
        LTKDateUtil.m1403m("SouGouControlHelper----getSougouSetting success----");
        SogouInputSettingsHelper.m2782a(this.f3753a, sougouSetting2.getInputMethodSet().getOpen_fuzzy_yin(), "sogou_pad_base_fuzzy");
        SogouInputSettingsHelper.m2782a(this.f3753a, sougouSetting2.getInputMethodSet().getOpen_associative(), "sogou_pad_base_association");
        SogouInputSettingsHelper.m2783b(this.f3753a, sougouSetting2.getInputMethodSet().getHandwriting_status(), "sogou_pad_base_handwrite_type");
        SogouInputSettingsHelper.m2783b(this.f3753a, sougouSetting2.getInputMethodSet().getVoice_status(), "sogou_pad_base_voice_input_type");
        SogouInputSettingsHelper.m2783b(this.f3753a, sougouSetting2.getInputMethodSet().getStroke_status(), "sogou_pad_base_bihua_input_type");
        SogouInputSettingsHelper.m2783b(this.f3753a, sougouSetting2.getInputMethodSet().getWubi_status(), "sogou_pad_base_wubi_input_type");
        SogouInputSettingsHelper.m2783b(this.f3753a, sougouSetting2.getInputMethodSet().getClipboard_status(), "sogou_pad_base_clipboard_type");
        SogouInputSettingsHelper.m2783b(this.f3753a, sougouSetting2.getInputMethodSet().getQuick_translation_status(), "sogou_pad_base_quick_translate_type");
        SogouInputSettingsHelper.m2783b(this.f3753a, sougouSetting2.getInputMethodSet().getVoice_translation_status(), "sogou_pad_base_voice_translate_type");
        SogouInputSettingsHelper.m2783b(this.f3753a, sougouSetting2.getInputMethodSet().getShortcut_phrase_status(), "sogou_pad_base_shortcut_phases_type");
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailed(Response response) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("SouGouControlHelper--- get sougou setting fail respon code:");
        sbM1765j.append(response.getCode());
        LTKDateUtil.m1403m(sbM1765j.toString());
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailureByNet(Object obj) {
        LTKDateUtil.m1403m("SouGouControlHelper--- get sougou setting failur---");
    }
}
