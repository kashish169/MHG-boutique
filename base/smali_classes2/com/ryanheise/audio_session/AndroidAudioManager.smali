.class public Lcom/ryanheise/audio_session/AndroidAudioManager;
.super Ljava/lang/Object;
.source "AndroidAudioManager.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;
    }
.end annotation


# static fields
.field private static singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private messenger:Lio/flutter/plugin/common/BinaryMessenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-direct {v0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    .line 41
    :cond_0
    iput-object p2, p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 42
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "com.ryanheise.android_audio_manager"

    invoke-direct {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 43
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-virtual {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->add(Lcom/ryanheise/audio_session/AndroidAudioManager;)V

    .line 44
    iget-object p1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/ryanheise/audio_session/AndroidAudioManager;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method

.method static coordinate3fToList(Landroid/media/MicrophoneInfo$Coordinate3F;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MicrophoneInfo$Coordinate3F;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 706
    iget v1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget v1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget p0, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static doubleArrayToList([D)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 698
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 699
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    if-eqz p0, :cond_1

    .line 713
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p0, Ljava/lang/Long;

    :goto_1
    return-object p0
.end method

.method static intArrayToList([I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 690
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 691
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static varargs mapOf([Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 682
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 683
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static requireApi(I)V
    .locals 3

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    return-void

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requires API level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 237
    sget-object v0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-virtual {v0, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->remove(Lcom/ryanheise/audio_session/AndroidAudioManager;)V

    .line 238
    sget-object v0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-virtual {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-virtual {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->dispose()V

    .line 240
    sput-object v1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    .line 242
    :cond_0
    iput-object v1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 243
    iput-object v1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 50
    :try_start_0
    iget-object p0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 51
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "generateAudioSessionId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x21

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "isVolumeFixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "setMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "getAvailableCommunicationDevices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "playSoundEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x24

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "setRingerMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "unloadSoundEffects"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x26

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "abandonAudioFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "adjustSuggestedStreamVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "clearCommunicationDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "setStreamVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "getAllowedCapturePolicy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "getProperty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x27

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "isStreamMute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "adjustVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "setParameters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x22

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "getRingerMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "isBluetoothScoAvailableOffCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "getStreamVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "stopBluetoothSco"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "getParameters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "dispatchMediaKeyEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "getMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1f

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "getStreamVolumeDb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "setCommunicationDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "startBluetoothSco"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "isMusicActive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "loadSoundEffects"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x25

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "getStreamMinVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "setBluetoothScoOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "setAllowedCapturePolicy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "getMicrophones"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x29

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "adjustStreamVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "isBluetoothScoOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "setSpeakerphoneOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto :goto_1

    :sswitch_23
    const-string v0, "setMicrophoneMute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    goto :goto_1

    :sswitch_24
    const-string v0, "requestAudioFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_25
    const-string v0, "isHapticPlaybackSupported"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2a

    goto :goto_1

    :sswitch_26
    const-string v0, "isSpeakerphoneOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_1

    :sswitch_27
    const-string v0, "getStreamMaxVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_28
    const-string v0, "isMicrophoneMute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto :goto_1

    :sswitch_29
    const-string v0, "getDevices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    goto :goto_1

    :sswitch_2a
    const-string v0, "getCommunicationDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 225
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_2

    .line 221
    :pswitch_0
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$4200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 217
    :pswitch_1
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$4100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 213
    :pswitch_2
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$4000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 209
    :pswitch_3
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3900(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 205
    :pswitch_4
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3800(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 201
    :pswitch_5
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3700(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 197
    :pswitch_6
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-static {p1, v0, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3600(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;ILjava/lang/Double;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 193
    :pswitch_7
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3500(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 189
    :pswitch_8
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 185
    :pswitch_9
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3300(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 181
    :pswitch_a
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 177
    :pswitch_b
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 173
    :pswitch_c
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$3000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 169
    :pswitch_d
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2900(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 165
    :pswitch_e
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2800(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Z)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 161
    :pswitch_f
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2700(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 157
    :pswitch_10
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2600(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Z)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 153
    :pswitch_11
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2500(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 149
    :pswitch_12
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 145
    :pswitch_13
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2300(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 141
    :pswitch_14
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 137
    :pswitch_15
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 133
    :pswitch_16
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$2000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 129
    :pswitch_17
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1900(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Z)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 125
    :pswitch_18
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1800(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 121
    :pswitch_19
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1700(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 117
    :pswitch_1a
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1600(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/Integer;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 113
    :pswitch_1b
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1500(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 109
    :pswitch_1c
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 105
    :pswitch_1d
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, v0, v2, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1300(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;III)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 101
    :pswitch_1e
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 97
    :pswitch_1f
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, v0, v2, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;III)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 93
    :pswitch_20
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$1000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 89
    :pswitch_21
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$900(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 85
    :pswitch_22
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$800(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 81
    :pswitch_23
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$700(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 77
    :pswitch_24
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, v0, v2, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$600(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;III)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 73
    :pswitch_25
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$500(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;II)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 69
    :pswitch_26
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, v0, v2, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;III)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 65
    :pswitch_27
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$300(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 61
    :pswitch_28
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 57
    :pswitch_29
    sget-object p0, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 53
    :pswitch_2a
    sget-object p1, Lcom/ryanheise/audio_session/AndroidAudioManager;->singleton:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p1, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68d7016a -> :sswitch_2a
        -0x653a1759 -> :sswitch_29
        -0x641dbdd3 -> :sswitch_28
        -0x5e4f1038 -> :sswitch_27
        -0x5d286128 -> :sswitch_26
        -0x5adb498e -> :sswitch_25
        -0x59af196f -> :sswitch_24
        -0x543b109b -> :sswitch_23
        -0x4d45b3f0 -> :sswitch_22
        -0x4c9a73e6 -> :sswitch_21
        -0x4759d017 -> :sswitch_20
        -0x410d2cad -> :sswitch_1f
        -0x4054a92e -> :sswitch_1e
        -0x3cb7c6ae -> :sswitch_1d
        -0x3043f9ca -> :sswitch_1c
        -0x2d824707 -> :sswitch_1b
        -0x2963f9ff -> :sswitch_1a
        -0x22a10fed -> :sswitch_19
        -0x1a9241f6 -> :sswitch_18
        -0x16b26e32 -> :sswitch_17
        -0x47d5de7 -> :sswitch_16
        0x9153925 -> :sswitch_15
        0x99879e0 -> :sswitch_14
        0xb21c3b3 -> :sswitch_13
        0x107e1530 -> :sswitch_12
        0x1bf5d05f -> :sswitch_11
        0x252e5a16 -> :sswitch_10
        0x37bcc7ec -> :sswitch_f
        0x38dee389 -> :sswitch_e
        0x3a315283 -> :sswitch_d
        0x40a81b4b -> :sswitch_c
        0x455827c6 -> :sswitch_b
        0x46c7103c -> :sswitch_a
        0x49fcee3f -> :sswitch_9
        0x4afd9d2e -> :sswitch_8
        0x50e69af7 -> :sswitch_7
        0x52277592 -> :sswitch_6
        0x5352a822 -> :sswitch_5
        0x59acfbac -> :sswitch_4
        0x5da380da -> :sswitch_3
        0x764d6925 -> :sswitch_2
        0x766c0cf0 -> :sswitch_1
        0x7ccf63f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
