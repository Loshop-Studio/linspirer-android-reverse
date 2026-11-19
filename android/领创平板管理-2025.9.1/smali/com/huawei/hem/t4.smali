.class public Lcom/huawei/hem/t4;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "SouGouControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Lcom/android/launcher3/db/model/SougouSetting;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/u4;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/u4;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/launcher3/db/model/SougouSetting;

    const-string v0, "SouGouControlHelper----getSougouSetting success----"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getOpen_fuzzy_yin()I

    move-result v1

    const-string v2, "sogou_pad_base_fuzzy"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->a(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getOpen_associative()I

    move-result v1

    const-string v2, "sogou_pad_base_association"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->a(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getHandwriting_status()I

    move-result v1

    const-string v2, "sogou_pad_base_handwrite_type"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->b(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getVoice_status()I

    move-result v1

    const-string v2, "sogou_pad_base_voice_input_type"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->b(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getStroke_status()I

    move-result v1

    const-string v2, "sogou_pad_base_bihua_input_type"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->b(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getWubi_status()I

    move-result v1

    const-string v2, "sogou_pad_base_wubi_input_type"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->b(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getClipboard_status()I

    move-result v1

    const-string v2, "sogou_pad_base_clipboard_type"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->b(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getQuick_translation_status()I

    move-result v1

    const-string v2, "sogou_pad_base_quick_translate_type"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->b(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getVoice_translation_status()I

    move-result v1

    const-string v2, "sogou_pad_base_voice_translate_type"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/u4;->b(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/huawei/hem/t4;->a:Lcom/huawei/hem/u4;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting;->getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;->getShortcut_phrase_status()I

    move-result p1

    const-string v1, "sogou_pad_base_shortcut_phases_type"

    invoke-static {v0, p1, v1}, Lcom/huawei/hem/u4;->b(Lcom/huawei/hem/u4;ILjava/lang/String;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 1

    const-string v0, "SouGouControlHelper--- get sougou setting fail respon code:"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/network/response/Response;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "SouGouControlHelper--- get sougou setting failur---"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
