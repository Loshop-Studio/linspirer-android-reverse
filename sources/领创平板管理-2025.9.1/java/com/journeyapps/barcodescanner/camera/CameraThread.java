package com.journeyapps.barcodescanner.camera;

import android.os.Handler;
import android.os.HandlerThread;

/* loaded from: classes.dex */
public class CameraThread {
    public static final String TAG = "CameraThread";
    public static CameraThread instance;
    public Handler handler;
    public HandlerThread thread;
    public int openCount = 0;
    public final Object LOCK = new Object();

    private void checkRunning() {
        synchronized (this.LOCK) {
            if (this.handler == null) {
                if (this.openCount <= 0) {
                    throw new IllegalStateException("CameraThread is not open");
                }
                HandlerThread handlerThread = new HandlerThread(TAG);
                this.thread = handlerThread;
                handlerThread.start();
                this.handler = new Handler(this.thread.getLooper());
            }
        }
    }

    public static CameraThread getInstance() {
        if (instance == null) {
            instance = new CameraThread();
        }
        return instance;
    }

    private void quit() {
        synchronized (this.LOCK) {
            this.thread.quit();
            this.thread = null;
            this.handler = null;
        }
    }

    public void decrementInstances() {
        synchronized (this.LOCK) {
            int i = this.openCount - 1;
            this.openCount = i;
            if (i == 0) {
                quit();
            }
        }
    }

    public void enqueue(Runnable runnable) {
        synchronized (this.LOCK) {
            checkRunning();
            this.handler.post(runnable);
        }
    }

    public void enqueueDelayed(Runnable runnable, long j) {
        synchronized (this.LOCK) {
            checkRunning();
            this.handler.postDelayed(runnable, j);
        }
    }

    public void incrementAndEnqueue(Runnable runnable) {
        synchronized (this.LOCK) {
            this.openCount++;
            enqueue(runnable);
        }
    }
}
