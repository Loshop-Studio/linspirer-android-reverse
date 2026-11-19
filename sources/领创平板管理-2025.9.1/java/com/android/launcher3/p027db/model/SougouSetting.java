package com.android.launcher3.p027db.model;

/* loaded from: classes.dex */
public class SougouSetting {
    public InputMethodSetBean inputMethodSet;

    public static class InputMethodSetBean {
        public int clipboard_status;
        public int handwriting_status;
        public int open_associative;
        public int open_fuzzy_yin;
        public int quick_translation_status;
        public int shortcut_phrase_status;
        public int stroke_status;
        public int voice_status;
        public int voice_translation_status;
        public int wubi_status;

        public int getClipboard_status() {
            return this.clipboard_status;
        }

        public int getHandwriting_status() {
            return this.handwriting_status;
        }

        public int getOpen_associative() {
            return this.open_associative;
        }

        public int getOpen_fuzzy_yin() {
            return this.open_fuzzy_yin;
        }

        public int getQuick_translation_status() {
            return this.quick_translation_status;
        }

        public int getShortcut_phrase_status() {
            return this.shortcut_phrase_status;
        }

        public int getStroke_status() {
            return this.stroke_status;
        }

        public int getVoice_status() {
            return this.voice_status;
        }

        public int getVoice_translation_status() {
            return this.voice_translation_status;
        }

        public int getWubi_status() {
            return this.wubi_status;
        }

        public void setClipboard_status(int i) {
            this.clipboard_status = i;
        }

        public void setHandwriting_status(int i) {
            this.handwriting_status = i;
        }

        public void setOpen_associative(int i) {
            this.open_associative = i;
        }

        public void setOpen_fuzzy_yin(int i) {
            this.open_fuzzy_yin = i;
        }

        public void setQuick_translation_status(int i) {
            this.quick_translation_status = i;
        }

        public void setShortcut_phrase_status(int i) {
            this.shortcut_phrase_status = i;
        }

        public void setStroke_status(int i) {
            this.stroke_status = i;
        }

        public void setVoice_status(int i) {
            this.voice_status = i;
        }

        public void setVoice_translation_status(int i) {
            this.voice_translation_status = i;
        }

        public void setWubi_status(int i) {
            this.wubi_status = i;
        }
    }

    public InputMethodSetBean getInputMethodSet() {
        return this.inputMethodSet;
    }

    public void setInputMethodSet(InputMethodSetBean inputMethodSetBean) {
        this.inputMethodSet = inputMethodSetBean;
    }
}
