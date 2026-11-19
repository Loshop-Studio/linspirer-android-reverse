package com.google.zxing.client.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public final class BeepManager {
    public static final float BEEP_VOLUME = 0.1f;
    public static final String TAG = "BeepManager";
    public static final long VIBRATE_DURATION = 200;
    public final Context context;
    public boolean beepEnabled = true;
    public boolean vibrateEnabled = false;

    public BeepManager(Activity activity) {
        activity.setVolumeControlStream(3);
        this.context = activity.getApplicationContext();
    }

    public boolean isBeepEnabled() {
        return this.beepEnabled;
    }

    public boolean isVibrateEnabled() {
        return this.vibrateEnabled;
    }

    public MediaPlayer playBeepSound() throws IllegalStateException, Resources.NotFoundException, IOException {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioStreamType(3);
        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.google.zxing.client.android.BeepManager.1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer2) throws IllegalStateException {
                mediaPlayer2.stop();
                mediaPlayer2.release();
            }
        });
        mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.google.zxing.client.android.BeepManager.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer2, int i, int i2) throws IllegalStateException {
                Log.w(BeepManager.TAG, "Failed to beep " + i + ", " + i2);
                mediaPlayer2.stop();
                mediaPlayer2.release();
                return true;
            }
        });
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.context.getResources().openRawResourceFd(ZxingClientAndroidResources.raw.zxing_beep);
            try {
                mediaPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
                assetFileDescriptorOpenRawResourceFd.close();
                mediaPlayer.setVolume(0.1f, 0.1f);
                mediaPlayer.prepare();
                mediaPlayer.start();
                return mediaPlayer;
            } catch (Throwable th) {
                assetFileDescriptorOpenRawResourceFd.close();
                throw th;
            }
        } catch (IOException e) {
            Log.w(TAG, e);
            mediaPlayer.release();
            return null;
        }
    }

    public synchronized void playBeepSoundAndVibrate() {
        if (this.beepEnabled) {
            playBeepSound();
        }
        if (this.vibrateEnabled) {
            ((Vibrator) this.context.getSystemService("vibrator")).vibrate(200L);
        }
    }

    public void setBeepEnabled(boolean z) {
        this.beepEnabled = z;
    }

    public void setVibrateEnabled(boolean z) {
        this.vibrateEnabled = z;
    }
}
