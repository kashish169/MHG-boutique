.class Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;
.super Ljava/lang/Object;
.source "AndroidAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryanheise/audio_session/AndroidAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private audioDeviceCallback:Ljava/lang/Object;

.field private audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

.field private audioManager:Landroid/media/AudioManager;

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ryanheise/audio_session/AndroidAudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private noisyReceiver:Landroid/content/BroadcastReceiver;

.field private scoReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->handler:Landroid/os/Handler;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->instances:Ljava/util/List;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->devices:Ljava/util/List;

    .line 287
    iput-object p1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->applicationContext:Landroid/content/Context;

    .line 288
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    .line 290
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->initAudioDeviceCallback()V

    return-void
.end method

.method private abandonAudioFocus()Z
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->unregisterNoisyReceiver()V

    .line 349
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->unregisterScoReceiver()V

    .line 350
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-static {v3, v0}, Landroidx/media/AudioManagerCompat;->abandonAudioFocusRequest(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I

    move-result v0

    const/4 v3, 0x0

    .line 354
    iput-object v3, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method static synthetic access$000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/util/List;)Z
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->requestAudioFocus(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Z
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->abandonAudioFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getStreamVolume(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;III)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getStreamVolumeDb(III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setRingerMode(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;III)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setStreamVolume(III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isStreamMute(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/util/List;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/Integer;)Z
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setCommunicationDevice(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/util/Map;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getCommunicationDevice()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->clearCommunicationDevice()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Z)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setSpeakerphoneOn(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->dispatchMediaKeyEvent(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isSpeakerphoneOn()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setAllowedCapturePolicy(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getAllowedCapturePolicy()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isBluetoothScoAvailableOffCall()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->startBluetoothSco()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->stopBluetoothSco()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Z)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setBluetoothScoOn(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isBluetoothScoOn()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Z)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setMicrophoneMute(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isMicrophoneMute()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isVolumeFixed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setMode(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getMode()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isMusicActive()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->generateAudioSessionId()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->setParameters(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getParameters(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;ILjava/lang/Double;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->playSoundEffect(ILjava/lang/Double;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->loadSoundEffects()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->unloadSoundEffects()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;III)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->adjustStreamVolume(III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getDevices(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getMicrophones()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->isHapticPlaybackSupported()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300([Landroid/media/AudioDeviceInfo;)Ljava/util/List;
    .locals 0

    .line 251
    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->encodeAudioDevices([Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;II)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->adjustVolume(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;III)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->adjustSuggestedStreamVolume(III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getRingerMode()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getStreamMaxVolume(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->getStreamMinVolume(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private adjustStreamVolume(III)Ljava/lang/Object;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private adjustSuggestedStreamVolume(III)Ljava/lang/Object;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private adjustVolume(II)Ljava/lang/Object;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->adjustVolume(II)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private clearCommunicationDevice()Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x1f

    .line 443
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 444
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private decodeAudioAttributes(Ljava/util/Map;)Landroidx/media/AudioAttributesCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Landroidx/media/AudioAttributesCompat;"
        }
    .end annotation

    .line 641
    new-instance p0, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {p0}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    .line 642
    const-string v0, "contentType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 643
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media/AudioAttributesCompat$Builder;->setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;

    .line 645
    :cond_0
    const-string v0, "flags"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 646
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media/AudioAttributesCompat$Builder;->setFlags(I)Landroidx/media/AudioAttributesCompat$Builder;

    .line 648
    :cond_1
    const-string v0, "usage"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 649
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesCompat$Builder;->setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;

    .line 651
    :cond_2
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object p0

    return-object p0
.end method

.method private dispatchMediaKeyEvent(Ljava/util/Map;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 v0, 0x13

    .line 360
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 361
    new-instance v0, Landroid/view/KeyEvent;

    const-string v1, "downTime"

    .line 362
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ryanheise/audio_session/AndroidAudioManager;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "eventTime"

    .line 363
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ryanheise/audio_session/AndroidAudioManager;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v1, "action"

    .line 364
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v1, "code"

    .line 365
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v1, "repeat"

    .line 366
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v1, "metaState"

    .line 367
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v1, "deviceId"

    .line 368
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v1, "scancode"

    .line 369
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v1, "flags"

    .line 370
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v1, "source"

    .line 371
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 372
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private disposeAudioDeviceCallback()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioDeviceCallback:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    return-void
.end method

.method private static encodeAudioDevice(Landroid/media/AudioDeviceInfo;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    move-result-object v12

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    move-result-object v14

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getChannelIndexMasks()[I

    move-result-object v16

    .line 280
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getChannelCounts()[I

    move-result-object v18

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    move-result-object v20

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v1, "id"

    const-string v3, "productName"

    const-string v5, "address"

    const-string v7, "isSource"

    const-string v9, "isSink"

    const-string v11, "sampleRates"

    const-string v13, "channelMasks"

    const-string v15, "channelIndexMasks"

    const-string v17, "channelCounts"

    const-string v19, "encodings"

    const-string v21, "type"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static encodeAudioDevices([Landroid/media/AudioDeviceInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/AudioDeviceInfo;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 265
    invoke-static {v3}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->encodeAudioDevice(Landroid/media/AudioDeviceInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private generateAudioSessionId()Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x15

    .line 504
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 505
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getAllowedCapturePolicy()Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x1d

    .line 462
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 463
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getAllowedCapturePolicy()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getAvailableCommunicationDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x1f

    .line 421
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 422
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->devices:Ljava/util/List;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->devices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceInfo;

    .line 425
    invoke-static {v1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->encodeAudioDevice(Landroid/media/AudioDeviceInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCommunicationDevice()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1f

    .line 439
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 440
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->encodeAudioDevice(Landroid/media/AudioDeviceInfo;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getDevices(I)Ljava/lang/Object;
    .locals 26

    const/16 v0, 0x17

    .line 535
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    .line 537
    iget-object v1, v1, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 538
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 539
    aget-object v3, v1, v2

    .line 542
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 545
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 546
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 548
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 549
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 550
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    move-result-object v4

    invoke-static {v4}, Lcom/ryanheise/audio_session/AndroidAudioManager;->intArrayToList([I)Ljava/util/ArrayList;

    move-result-object v15

    .line 551
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    move-result-object v4

    invoke-static {v4}, Lcom/ryanheise/audio_session/AndroidAudioManager;->intArrayToList([I)Ljava/util/ArrayList;

    move-result-object v17

    .line 552
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getChannelIndexMasks()[I

    move-result-object v4

    invoke-static {v4}, Lcom/ryanheise/audio_session/AndroidAudioManager;->intArrayToList([I)Ljava/util/ArrayList;

    move-result-object v19

    .line 553
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getChannelCounts()[I

    move-result-object v4

    invoke-static {v4}, Lcom/ryanheise/audio_session/AndroidAudioManager;->intArrayToList([I)Ljava/util/ArrayList;

    move-result-object v21

    .line 554
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    move-result-object v4

    invoke-static {v4}, Lcom/ryanheise/audio_session/AndroidAudioManager;->intArrayToList([I)Ljava/util/ArrayList;

    move-result-object v23

    .line 555
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const-string v4, "id"

    const-string v6, "productName"

    const-string v8, "address"

    const-string v10, "isSource"

    const-string v12, "isSink"

    const-string v14, "sampleRates"

    const-string v16, "channelMasks"

    const-string v18, "channelIndexMasks"

    const-string v20, "channelCounts"

    const-string v22, "encodings"

    const-string v24, "type"

    filled-new-array/range {v4 .. v25}, [Ljava/lang/Object;

    move-result-object v3

    .line 544
    invoke-static {v3}, Lcom/ryanheise/audio_session/AndroidAudioManager;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMicrophones()Ljava/lang/Object;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1c

    .line 561
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    .line 563
    iget-object v1, v1, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMicrophones()Ljava/util/List;

    move-result-object v1

    .line 564
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MicrophoneInfo;

    .line 565
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 566
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getFrequencyResponse()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 567
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 570
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getChannelMapping()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 571
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 574
    :cond_1
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 575
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 576
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 577
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 578
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 579
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getGroup()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 580
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getIndexInTheGroup()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 581
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getPosition()Landroid/media/MicrophoneInfo$Coordinate3F;

    move-result-object v3

    invoke-static {v3}, Lcom/ryanheise/audio_session/AndroidAudioManager;->coordinate3fToList(Landroid/media/MicrophoneInfo$Coordinate3F;)Ljava/util/ArrayList;

    move-result-object v18

    .line 582
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getOrientation()Landroid/media/MicrophoneInfo$Coordinate3F;

    move-result-object v3

    invoke-static {v3}, Lcom/ryanheise/audio_session/AndroidAudioManager;->coordinate3fToList(Landroid/media/MicrophoneInfo$Coordinate3F;)Ljava/util/ArrayList;

    move-result-object v20

    .line 585
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getSensitivity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    .line 586
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getMaxSpl()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    .line 587
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getMinSpl()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    .line 588
    invoke-virtual {v2}, Landroid/media/MicrophoneInfo;->getDirectionality()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const-string v3, "description"

    const-string v5, "id"

    const-string v7, "type"

    const-string v9, "address"

    const-string v11, "location"

    const-string v2, "group"

    move-object/from16 v24, v13

    move-object v13, v2

    const-string v2, "indexInTheGroup"

    move-object/from16 v22, v15

    move-object v15, v2

    const-string v17, "position"

    const-string v19, "orientation"

    const-string v21, "frequencyResponse"

    const-string v23, "channelMapping"

    const-string v25, "sensitivity"

    const-string v27, "maxSpl"

    const-string v29, "minSpl"

    const-string v31, "directionality"

    filled-new-array/range {v3 .. v32}, [Ljava/lang/Object;

    move-result-object v2

    .line 573
    invoke-static {v2}, Lcom/ryanheise/audio_session/AndroidAudioManager;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method private getMode()Ljava/lang/Object;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getParameters(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x11

    .line 531
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 532
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRingerMode()Ljava/lang/Object;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getStreamMaxVolume(I)Ljava/lang/Object;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getStreamMinVolume(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x1c

    .line 398
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 399
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getStreamVolume(I)Ljava/lang/Object;
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getStreamVolumeDb(III)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x1c

    .line 405
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 406
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->getStreamVolumeDb(III)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private initAudioDeviceCallback()V
    .locals 2

    .line 295
    new-instance v0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$1;

    invoke-direct {v0, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$1;-><init>(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)V

    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioDeviceCallback:Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioDeviceCallback;

    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p0}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private varargs invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 655
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->instances:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ryanheise/audio_session/AndroidAudioManager;

    .line 656
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 657
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->access$4500(Lcom/ryanheise/audio_session/AndroidAudioManager;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isBluetoothScoAvailableOffCall()Ljava/lang/Object;
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isBluetoothScoOn()Ljava/lang/Object;
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isHapticPlaybackSupported()Ljava/lang/Object;
    .locals 0

    const/16 p0, 0x1d

    .line 595
    invoke-static {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 596
    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isMicrophoneMute()Ljava/lang/Object;
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isMusicActive()Ljava/lang/Object;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isSpeakerphoneOn()Ljava/lang/Object;
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isStreamMute(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x17

    .line 417
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 418
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isVolumeFixed()Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x15

    .line 376
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 377
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private loadSoundEffects()Ljava/lang/Object;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->loadSoundEffects()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private playSoundEffect(ILjava/lang/Double;)Ljava/lang/Object;
    .locals 2

    if-eqz p2, :cond_0

    .line 516
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    goto :goto_0

    .line 518
    :cond_0
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerNoisyReceiver()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->noisyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 601
    :cond_0
    new-instance v0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$2;

    invoke-direct {v0, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$2;-><init>(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)V

    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->noisyReceiver:Landroid/content/BroadcastReceiver;

    .line 609
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerScoReceiver()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->scoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 620
    :cond_0
    new-instance v0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$3;

    invoke-direct {v0, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$3;-><init>(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)V

    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->scoReceiver:Landroid/content/BroadcastReceiver;

    .line 631
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestAudioFocus(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 325
    new-instance v2, Landroidx/media/AudioFocusRequestCompat$Builder;

    const-string v3, "gainType"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroidx/media/AudioFocusRequestCompat$Builder;-><init>(I)V

    .line 326
    new-instance v3, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$$ExternalSyntheticLambda4;-><init>(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)V

    invoke-virtual {v2, v3}, Landroidx/media/AudioFocusRequestCompat$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroidx/media/AudioFocusRequestCompat$Builder;

    .line 330
    const-string v3, "audioAttributes"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 331
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->decodeAudioAttributes(Ljava/util/Map;)Landroidx/media/AudioAttributesCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media/AudioFocusRequestCompat$Builder;->setAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media/AudioFocusRequestCompat$Builder;

    .line 333
    :cond_1
    const-string v3, "willPauseWhenDucked"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 334
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/media/AudioFocusRequestCompat$Builder;->setWillPauseWhenDucked(Z)Landroidx/media/AudioFocusRequestCompat$Builder;

    .line 336
    :cond_2
    invoke-virtual {v2}, Landroidx/media/AudioFocusRequestCompat$Builder;->build()Landroidx/media/AudioFocusRequestCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

    .line 337
    iget-object v2, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-static {v2, p1}, Landroidx/media/AudioManagerCompat;->requestAudioFocus(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    .line 340
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->registerNoisyReceiver()V

    .line 341
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->registerScoReceiver()V

    :cond_4
    return v1
.end method

.method private setAllowedCapturePolicy(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x1d

    .line 457
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 458
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setAllowedCapturePolicy(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setBluetoothScoOn(Z)Ljava/lang/Object;
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setCommunicationDevice(Ljava/lang/Integer;)Z
    .locals 4

    const/16 v0, 0x1f

    .line 430
    invoke-static {v0}, Lcom/ryanheise/audio_session/AndroidAudioManager;->requireApi(I)V

    .line 431
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceInfo;

    .line 432
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 433
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0, v1}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setMicrophoneMute(Z)Ljava/lang/Object;
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setMode(I)Ljava/lang/Object;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setMode(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setParameters(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 508
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setRingerMode(I)Ljava/lang/Object;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setSpeakerphoneOn(Z)Ljava/lang/Object;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setStreamVolume(III)Ljava/lang/Object;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private startBluetoothSco()Ljava/lang/Object;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private stopBluetoothSco()Ljava/lang/Object;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private unloadSoundEffects()Ljava/lang/Object;
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private unregisterNoisyReceiver()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->noisyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->noisyReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterScoReceiver()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->scoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->scoReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lcom/ryanheise/audio_session/AndroidAudioManager;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->instances:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 662
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->abandonAudioFocus()Z

    .line 664
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->disposeAudioDeviceCallback()V

    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->applicationContext:Landroid/content/Context;

    .line 667
    iput-object v0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->instances:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$requestAudioFocus$0$com-ryanheise-audio_session-AndroidAudioManager$Singleton(I)V
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->abandonAudioFocus()Z

    .line 328
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onAudioFocusChanged"

    invoke-direct {p0, v0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Lcom/ryanheise/audio_session/AndroidAudioManager;)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->instances:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
