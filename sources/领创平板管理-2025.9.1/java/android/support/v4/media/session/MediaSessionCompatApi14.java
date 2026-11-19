package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@RequiresApi(14)
@TargetApi(14)
/* loaded from: classes.dex */
public class MediaSessionCompatApi14 {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_STOP = 1;
    public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
    public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
    public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
    public static final String METADATA_KEY_ART = "android.media.metadata.ART";
    public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
    public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
    public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
    public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
    public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
    public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
    public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
    public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
    public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
    public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
    public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
    public static final int RCC_PLAYSTATE_NONE = 0;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;

    public static void buildOldMetadata(Bundle bundle, RemoteControlClient.MetadataEditor metadataEditor) throws IllegalArgumentException {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("android.media.metadata.ART")) {
            metadataEditor.putBitmap(100, (Bitmap) bundle.getParcelable("android.media.metadata.ART"));
        } else if (bundle.containsKey("android.media.metadata.ALBUM_ART")) {
            metadataEditor.putBitmap(100, (Bitmap) bundle.getParcelable("android.media.metadata.ALBUM_ART"));
        }
        if (bundle.containsKey("android.media.metadata.ALBUM")) {
            metadataEditor.putString(1, bundle.getString("android.media.metadata.ALBUM"));
        }
        if (bundle.containsKey("android.media.metadata.ALBUM_ARTIST")) {
            metadataEditor.putString(13, bundle.getString("android.media.metadata.ALBUM_ARTIST"));
        }
        if (bundle.containsKey("android.media.metadata.ARTIST")) {
            metadataEditor.putString(2, bundle.getString("android.media.metadata.ARTIST"));
        }
        if (bundle.containsKey("android.media.metadata.AUTHOR")) {
            metadataEditor.putString(3, bundle.getString("android.media.metadata.AUTHOR"));
        }
        if (bundle.containsKey("android.media.metadata.COMPILATION")) {
            metadataEditor.putString(15, bundle.getString("android.media.metadata.COMPILATION"));
        }
        if (bundle.containsKey("android.media.metadata.COMPOSER")) {
            metadataEditor.putString(4, bundle.getString("android.media.metadata.COMPOSER"));
        }
        if (bundle.containsKey("android.media.metadata.DATE")) {
            metadataEditor.putString(5, bundle.getString("android.media.metadata.DATE"));
        }
        if (bundle.containsKey("android.media.metadata.DISC_NUMBER")) {
            metadataEditor.putLong(14, bundle.getLong("android.media.metadata.DISC_NUMBER"));
        }
        if (bundle.containsKey("android.media.metadata.DURATION")) {
            metadataEditor.putLong(9, bundle.getLong("android.media.metadata.DURATION"));
        }
        if (bundle.containsKey("android.media.metadata.GENRE")) {
            metadataEditor.putString(6, bundle.getString("android.media.metadata.GENRE"));
        }
        if (bundle.containsKey("android.media.metadata.TITLE")) {
            metadataEditor.putString(7, bundle.getString("android.media.metadata.TITLE"));
        }
        if (bundle.containsKey("android.media.metadata.TRACK_NUMBER")) {
            metadataEditor.putLong(0, bundle.getLong("android.media.metadata.TRACK_NUMBER"));
        }
        if (bundle.containsKey("android.media.metadata.WRITER")) {
            metadataEditor.putString(11, bundle.getString("android.media.metadata.WRITER"));
        }
    }

    public static Object createRemoteControlClient(PendingIntent pendingIntent) {
        return new RemoteControlClient(pendingIntent);
    }

    public static int getRccStateFromState(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
            case 8:
                return 8;
            case 7:
                return 9;
            case 9:
                return 7;
            case 10:
            case 11:
                return 6;
            default:
                return -1;
        }
    }

    public static int getRccTransportControlFlagsFromActions(long j) {
        int i = (1 & j) != 0 ? 32 : 0;
        if ((2 & j) != 0) {
            i |= 16;
        }
        if ((4 & j) != 0) {
            i |= 4;
        }
        if ((8 & j) != 0) {
            i |= 2;
        }
        if ((16 & j) != 0) {
            i |= 1;
        }
        if ((32 & j) != 0) {
            i |= 128;
        }
        if ((64 & j) != 0) {
            i |= 64;
        }
        return (j & 512) != 0 ? i | 8 : i;
    }

    public static void registerRemoteControlClient(Context context, Object obj) {
        ((AudioManager) context.getSystemService("audio")).registerRemoteControlClient((RemoteControlClient) obj);
    }

    public static void setMetadata(Object obj, Bundle bundle) throws IllegalArgumentException {
        RemoteControlClient.MetadataEditor metadataEditorEditMetadata = ((RemoteControlClient) obj).editMetadata(true);
        buildOldMetadata(bundle, metadataEditorEditMetadata);
        metadataEditorEditMetadata.apply();
    }

    public static void setState(Object obj, int i) {
        ((RemoteControlClient) obj).setPlaybackState(getRccStateFromState(i));
    }

    public static void setTransportControlFlags(Object obj, long j) {
        ((RemoteControlClient) obj).setTransportControlFlags(getRccTransportControlFlagsFromActions(j));
    }

    public static void unregisterRemoteControlClient(Context context, Object obj) {
        ((AudioManager) context.getSystemService("audio")).unregisterRemoteControlClient((RemoteControlClient) obj);
    }
}
