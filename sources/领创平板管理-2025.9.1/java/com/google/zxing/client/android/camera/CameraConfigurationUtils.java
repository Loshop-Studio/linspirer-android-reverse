package com.google.zxing.client.android.camera;

import android.annotation.TargetApi;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import anet.channel.entity.ConnType;
import com.huawei.hem.CompilerOutline;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class CameraConfigurationUtils {
    public static final int AREA_PER_1000 = 400;
    public static final float MAX_EXPOSURE_COMPENSATION = 1.5f;
    public static final int MAX_FPS = 20;
    public static final float MIN_EXPOSURE_COMPENSATION = 0.0f;
    public static final int MIN_FPS = 10;
    public static final Pattern SEMICOLON = Pattern.compile(";");
    public static final String TAG = "CameraConfiguration";

    @TargetApi(15)
    public static List<Camera.Area> buildMiddleArea(int i) {
        int i2 = -i;
        return Collections.singletonList(new Camera.Area(new Rect(i2, i2, i, i), 1));
    }

    public static String collectStats(Camera.Parameters parameters) {
        return collectStats(parameters.flatten());
    }

    public static String findSettableValue(String str, Collection<String> collection, String... strArr) {
        StringBuilder sbM1769n = CompilerOutline.m1769n("Requesting ", str, " value from among: ");
        sbM1769n.append(Arrays.toString(strArr));
        Log.i(TAG, sbM1769n.toString());
        Log.i(TAG, "Supported " + str + " values: " + collection);
        if (collection != null) {
            for (String str2 : strArr) {
                if (collection.contains(str2)) {
                    Log.i(TAG, "Can set " + str + " to: " + str2);
                    return str2;
                }
            }
        }
        Log.i(TAG, "No supported values match");
        return null;
    }

    public static Integer indexOfClosestZoom(Camera.Parameters parameters, double d) {
        List<Integer> zoomRatios = parameters.getZoomRatios();
        Log.i(TAG, "Zoom ratios: " + zoomRatios);
        int maxZoom = parameters.getMaxZoom();
        if (zoomRatios == null || zoomRatios.isEmpty() || zoomRatios.size() != maxZoom + 1) {
            Log.w(TAG, "Invalid zoom ratios!");
            return null;
        }
        double d2 = d * 100.0d;
        double d3 = Double.POSITIVE_INFINITY;
        int i = 0;
        for (int i2 = 0; i2 < zoomRatios.size(); i2++) {
            double dAbs = Math.abs(zoomRatios.get(i2).intValue() - d2);
            if (dAbs < d3) {
                i = i2;
                d3 = dAbs;
            }
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("Chose zoom ratio of ");
        sbM1765j.append(zoomRatios.get(i).intValue() / 100.0d);
        Log.i(TAG, sbM1765j.toString());
        return Integer.valueOf(i);
    }

    public static void setBarcodeSceneMode(Camera.Parameters parameters) {
        if ("barcode".equals(parameters.getSceneMode())) {
            Log.i(TAG, "Barcode scene mode already set");
            return;
        }
        String strFindSettableValue = findSettableValue("scene mode", parameters.getSupportedSceneModes(), "barcode");
        if (strFindSettableValue != null) {
            parameters.setSceneMode(strFindSettableValue);
        }
    }

    public static void setBestExposure(Camera.Parameters parameters, boolean z) {
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        if (minExposureCompensation != 0 || maxExposureCompensation != 0) {
            if (exposureCompensationStep > 0.0f) {
                int iRound = Math.round((z ? 0.0f : 1.5f) / exposureCompensationStep);
                float f = exposureCompensationStep * iRound;
                int iMax = Math.max(Math.min(iRound, maxExposureCompensation), minExposureCompensation);
                if (parameters.getExposureCompensation() == iMax) {
                    Log.i(TAG, "Exposure compensation already set to " + iMax + " / " + f);
                    return;
                }
                Log.i(TAG, "Setting exposure compensation to " + iMax + " / " + f);
                parameters.setExposureCompensation(iMax);
                return;
            }
        }
        Log.i(TAG, "Camera does not support exposure compensation");
    }

    public static void setBestPreviewFPS(Camera.Parameters parameters) {
        setBestPreviewFPS(parameters, 10, 20);
    }

    public static void setFocus(Camera.Parameters parameters, CameraSettings.FocusMode focusMode, boolean z) {
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        String strFindSettableValue = (z || focusMode == CameraSettings.FocusMode.AUTO) ? findSettableValue("focus mode", supportedFocusModes, ConnType.PK_AUTO) : focusMode == CameraSettings.FocusMode.CONTINUOUS ? findSettableValue("focus mode", supportedFocusModes, "continuous-picture", "continuous-video", ConnType.PK_AUTO) : focusMode == CameraSettings.FocusMode.INFINITY ? findSettableValue("focus mode", supportedFocusModes, "infinity") : focusMode == CameraSettings.FocusMode.MACRO ? findSettableValue("focus mode", supportedFocusModes, "macro") : null;
        if (!z && strFindSettableValue == null) {
            strFindSettableValue = findSettableValue("focus mode", supportedFocusModes, "macro", "edof");
        }
        if (strFindSettableValue != null) {
            if (!strFindSettableValue.equals(parameters.getFocusMode())) {
                parameters.setFocusMode(strFindSettableValue);
                return;
            }
            Log.i(TAG, "Focus mode already set to " + strFindSettableValue);
        }
    }

    @TargetApi(15)
    public static void setFocusArea(Camera.Parameters parameters) {
        if (parameters.getMaxNumFocusAreas() <= 0) {
            Log.i(TAG, "Device does not support focus areas");
            return;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("Old focus areas: ");
        sbM1765j.append(toString((Iterable<Camera.Area>) parameters.getFocusAreas()));
        Log.i(TAG, sbM1765j.toString());
        List<Camera.Area> listBuildMiddleArea = buildMiddleArea(400);
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("Setting focus area to : ");
        sbM1765j2.append(toString((Iterable<Camera.Area>) listBuildMiddleArea));
        Log.i(TAG, sbM1765j2.toString());
        parameters.setFocusAreas(listBuildMiddleArea);
    }

    public static void setInvertColor(Camera.Parameters parameters) {
        if ("negative".equals(parameters.getColorEffect())) {
            Log.i(TAG, "Negative effect already set");
            return;
        }
        String strFindSettableValue = findSettableValue("color effect", parameters.getSupportedColorEffects(), "negative");
        if (strFindSettableValue != null) {
            parameters.setColorEffect(strFindSettableValue);
        }
    }

    @TargetApi(15)
    public static void setMetering(Camera.Parameters parameters) {
        if (parameters.getMaxNumMeteringAreas() <= 0) {
            Log.i(TAG, "Device does not support metering areas");
            return;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("Old metering areas: ");
        sbM1765j.append(parameters.getMeteringAreas());
        Log.i(TAG, sbM1765j.toString());
        List<Camera.Area> listBuildMiddleArea = buildMiddleArea(400);
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("Setting metering area to : ");
        sbM1765j2.append(toString((Iterable<Camera.Area>) listBuildMiddleArea));
        Log.i(TAG, sbM1765j2.toString());
        parameters.setMeteringAreas(listBuildMiddleArea);
    }

    public static void setTorch(Camera.Parameters parameters, boolean z) {
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        String strFindSettableValue = z ? findSettableValue("flash mode", supportedFlashModes, "torch", "on") : findSettableValue("flash mode", supportedFlashModes, "off");
        if (strFindSettableValue != null) {
            if (strFindSettableValue.equals(parameters.getFlashMode())) {
                Log.i(TAG, "Flash mode already set to " + strFindSettableValue);
                return;
            }
            Log.i(TAG, "Setting flash mode to " + strFindSettableValue);
            parameters.setFlashMode(strFindSettableValue);
        }
    }

    @TargetApi(15)
    public static void setVideoStabilization(Camera.Parameters parameters) {
        if (!parameters.isVideoStabilizationSupported()) {
            Log.i(TAG, "This device does not support video stabilization");
        } else if (parameters.getVideoStabilization()) {
            Log.i(TAG, "Video stabilization already enabled");
        } else {
            Log.i(TAG, "Enabling video stabilization...");
            parameters.setVideoStabilization(true);
        }
    }

    public static void setZoom(Camera.Parameters parameters, double d) {
        if (!parameters.isZoomSupported()) {
            Log.i(TAG, "Zoom is not supported");
            return;
        }
        Integer numIndexOfClosestZoom = indexOfClosestZoom(parameters, d);
        if (numIndexOfClosestZoom == null) {
            return;
        }
        if (parameters.getZoom() == numIndexOfClosestZoom.intValue()) {
            Log.i(TAG, "Zoom is already set to " + numIndexOfClosestZoom);
            return;
        }
        Log.i(TAG, "Setting zoom to " + numIndexOfClosestZoom);
        parameters.setZoom(numIndexOfClosestZoom.intValue());
    }

    public static String toString(Collection<int[]> collection) {
        if (collection == null || collection.isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator<int[]> it = collection.iterator();
        while (it.hasNext()) {
            sb.append(Arrays.toString(it.next()));
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public static String collectStats(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(1000);
        sb.append("BOARD=");
        CompilerOutline.m1781z(sb, Build.BOARD, '\n', "BRAND=");
        CompilerOutline.m1781z(sb, Build.BRAND, '\n', "CPU_ABI=");
        CompilerOutline.m1781z(sb, Build.CPU_ABI, '\n', "DEVICE=");
        CompilerOutline.m1781z(sb, Build.DEVICE, '\n', "DISPLAY=");
        CompilerOutline.m1781z(sb, Build.DISPLAY, '\n', "FINGERPRINT=");
        CompilerOutline.m1781z(sb, Build.FINGERPRINT, '\n', "HOST=");
        CompilerOutline.m1781z(sb, Build.HOST, '\n', "ID=");
        CompilerOutline.m1781z(sb, Build.ID, '\n', "MANUFACTURER=");
        CompilerOutline.m1781z(sb, Build.MANUFACTURER, '\n', "MODEL=");
        CompilerOutline.m1781z(sb, Build.MODEL, '\n', "PRODUCT=");
        CompilerOutline.m1781z(sb, Build.PRODUCT, '\n', "TAGS=");
        CompilerOutline.m1781z(sb, Build.TAGS, '\n', "TIME=");
        sb.append(Build.TIME);
        sb.append('\n');
        sb.append("TYPE=");
        CompilerOutline.m1781z(sb, Build.TYPE, '\n', "USER=");
        CompilerOutline.m1781z(sb, Build.USER, '\n', "VERSION.CODENAME=");
        CompilerOutline.m1781z(sb, Build.VERSION.CODENAME, '\n', "VERSION.INCREMENTAL=");
        CompilerOutline.m1781z(sb, Build.VERSION.INCREMENTAL, '\n', "VERSION.RELEASE=");
        CompilerOutline.m1781z(sb, Build.VERSION.RELEASE, '\n', "VERSION.SDK_INT=");
        sb.append(Build.VERSION.SDK_INT);
        sb.append('\n');
        if (charSequence != null) {
            String[] strArrSplit = SEMICOLON.split(charSequence);
            Arrays.sort(strArrSplit);
            for (String str : strArrSplit) {
                sb.append(str);
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    public static void setBestPreviewFPS(Camera.Parameters parameters, int i, int i2) {
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        StringBuilder sbM1765j = CompilerOutline.m1765j("Supported FPS ranges: ");
        sbM1765j.append(toString((Collection<int[]>) supportedPreviewFpsRange));
        Log.i(TAG, sbM1765j.toString());
        if (supportedPreviewFpsRange == null || supportedPreviewFpsRange.isEmpty()) {
            return;
        }
        int[] iArr = null;
        Iterator<int[]> it = supportedPreviewFpsRange.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int[] next = it.next();
            int i3 = next[0];
            int i4 = next[1];
            if (i3 >= i * 1000 && i4 <= i2 * 1000) {
                iArr = next;
                break;
            }
        }
        if (iArr == null) {
            Log.i(TAG, "No suitable FPS range?");
            return;
        }
        int[] iArr2 = new int[2];
        parameters.getPreviewFpsRange(iArr2);
        if (Arrays.equals(iArr2, iArr)) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("FPS range already set to ");
            sbM1765j2.append(Arrays.toString(iArr));
            Log.i(TAG, sbM1765j2.toString());
        } else {
            StringBuilder sbM1765j3 = CompilerOutline.m1765j("Setting FPS range to ");
            sbM1765j3.append(Arrays.toString(iArr));
            Log.i(TAG, sbM1765j3.toString());
            parameters.setPreviewFpsRange(iArr[0], iArr[1]);
        }
    }

    @TargetApi(15)
    public static String toString(Iterable<Camera.Area> iterable) {
        if (iterable == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Camera.Area area : iterable) {
            sb.append(area.rect);
            sb.append(':');
            sb.append(area.weight);
            sb.append(' ');
        }
        return sb.toString();
    }
}
