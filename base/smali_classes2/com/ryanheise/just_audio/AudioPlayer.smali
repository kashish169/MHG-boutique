.class public Lcom/ryanheise/just_audio/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AudioPlayer"

.field private static random:Ljava/util/Random;


# instance fields
.field private audioEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/audiofx/AudioEffect;",
            ">;"
        }
    .end annotation
.end field

.field private audioEffectsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/audiofx/AudioEffect;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:Ljava/lang/Integer;

.field private final bufferWatcher:Ljava/lang/Runnable;

.field private bufferedPosition:J

.field private final context:Landroid/content/Context;

.field private currentIndex:Ljava/lang/Integer;

.field private final dataEventChannel:Lcom/ryanheise/just_audio/BetterEventChannel;

.field private errorCount:I

.field private final eventChannel:Lcom/ryanheise/just_audio/BetterEventChannel;

.field private final handler:Landroid/os/Handler;

.field private icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field private icyInfo:Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

.field private initialIndex:Ljava/lang/Integer;

.field private initialPos:J

.field private lastPlaylistLength:I

.field private livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field private loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private mediaSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private final methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private offloadSchedulingEnabled:Z

.field private pendingAudioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private pendingPlaybackEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private playResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

.field private rawAudioEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private seekPos:Ljava/lang/Long;

.field private seekResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private updatePosition:J

.field private updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ryanheise/just_audio/AudioPlayer;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/plugin/common/BinaryMessenger;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSources:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffects:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffectsMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->lastPlaylistLength:I

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->handler:Landroid/os/Handler;

    .line 105
    new-instance v1, Lcom/ryanheise/just_audio/AudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/ryanheise/just_audio/AudioPlayer$1;-><init>(Lcom/ryanheise/just_audio/AudioPlayer;)V

    iput-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->bufferWatcher:Ljava/lang/Runnable;

    .line 142
    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->context:Landroid/content/Context;

    .line 143
    iput-object p5, p0, Lcom/ryanheise/just_audio/AudioPlayer;->rawAudioEffects:Ljava/util/List;

    if-eqz p6, :cond_0

    .line 144
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->offloadSchedulingEnabled:Z

    .line 145
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "com.ryanheise.just_audio.methods."

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p2, p5}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 146
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 147
    new-instance p1, Lcom/ryanheise/just_audio/BetterEventChannel;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "com.ryanheise.just_audio.events."

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p2, p5}, Lcom/ryanheise/just_audio/BetterEventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->eventChannel:Lcom/ryanheise/just_audio/BetterEventChannel;

    .line 148
    new-instance p1, Lcom/ryanheise/just_audio/BetterEventChannel;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "com.ryanheise.just_audio.data."

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/ryanheise/just_audio/BetterEventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->dataEventChannel:Lcom/ryanheise/just_audio/BetterEventChannel;

    .line 149
    sget-object p1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->none:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-eqz p4, :cond_3

    .line 151
    const-string p1, "androidLoadControl"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-wide/16 p2, 0x3e8

    if-eqz p1, :cond_2

    .line 153
    new-instance p5, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {p5}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    const-string p6, "minBufferDuration"

    .line 155
    invoke-interface {p1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-static {p6}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, p2

    long-to-int p6, v1

    const-string v1, "maxBufferDuration"

    .line 156
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, p2

    long-to-int v1, v1

    const-string v2, "bufferForPlaybackDuration"

    .line 157
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v2, p2

    long-to-int v2, v2

    const-string v3, "bufferForPlaybackAfterRebufferDuration"

    .line 158
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long/2addr v3, p2

    long-to-int v3, v3

    .line 154
    invoke-virtual {p5, p6, v1, v2, v3}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object p5

    const-string p6, "prioritizeTimeOverSizeThresholds"

    .line 160
    invoke-interface {p1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    invoke-virtual {p5, p6}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setPrioritizeTimeOverSizeThresholds(Z)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object p5

    const-string p6, "backBufferDuration"

    .line 161
    invoke-interface {p1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-static {p6}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, p2

    long-to-int p6, v1

    invoke-virtual {p5, p6, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBackBuffer(IZ)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object p5

    .line 162
    const-string p6, "targetBufferBytes"

    invoke-interface {p1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {p1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setTargetBufferBytes(I)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    .line 165
    :cond_1
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object p1

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 167
    :cond_2
    const-string p1, "androidLivePlaybackSpeedControl"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 169
    new-instance p4, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    const-string p5, "fallbackMinPlaybackSpeed"

    .line 170
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Double;

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    double-to-float p5, p5

    invoke-virtual {p4, p5}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setFallbackMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object p4

    const-string p5, "fallbackMaxPlaybackSpeed"

    .line 171
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Double;

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    double-to-float p5, p5

    invoke-virtual {p4, p5}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setFallbackMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object p4

    const-string p5, "minUpdateInterval"

    .line 172
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    div-long/2addr p5, p2

    invoke-virtual {p4, p5, p6}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setMinUpdateIntervalMs(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object p4

    const-string p5, "proportionalControlFactor"

    .line 173
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Double;

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    double-to-float p5, p5

    invoke-virtual {p4, p5}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setProportionalControlFactor(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object p4

    const-string p5, "maxLiveOffsetErrorForUnitSpeed"

    .line 174
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    div-long/2addr p5, p2

    invoke-virtual {p4, p5, p6}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setMaxLiveOffsetErrorMsForUnitSpeed(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object p4

    const-string p5, "targetLiveOffsetIncrementOnRebuffer"

    .line 175
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    div-long/2addr p5, p2

    invoke-virtual {p4, p5, p6}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setTargetLiveOffsetIncrementOnRebufferMs(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object p2

    const-string p3, "minPossibleLiveOffsetSmoothingFactor"

    .line 176
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    double-to-float p1, p3

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setMinPossibleLiveOffsetSmoothingFactor(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    :cond_3
    return-void
.end method

.method private abortExistingConnection()V
    .locals 2

    .line 1050
    const-string v0, "abort"

    const-string v1, "Connection aborted"

    invoke-direct {p0, v0, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private abortSeek()V
    .locals 2

    .line 1038
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    .line 1040
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 1044
    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1045
    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekPos:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/ryanheise/just_audio/AudioPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ryanheise/just_audio/AudioPlayer;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->bufferedPosition:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/ryanheise/just_audio/AudioPlayer;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/ryanheise/just_audio/AudioPlayer;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private audioEffectSetEnabled(Ljava/lang/String;Z)V
    .locals 0

    .line 795
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffectsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/audiofx/AudioEffect;

    invoke-virtual {p0, p2}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    return-void
.end method

.method private broadcastImmediatePlaybackEvent()V
    .locals 0

    .line 869
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->enqueuePlaybackEvent()V

    .line 870
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastPendingPlaybackEvent()V

    return-void
.end method

.method private broadcastPendingPlaybackEvent()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->pendingPlaybackEvent:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 847
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->eventChannel:Lcom/ryanheise/just_audio/BetterEventChannel;

    invoke-virtual {v1, v0}, Lcom/ryanheise/just_audio/BetterEventChannel;->success(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 848
    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->pendingPlaybackEvent:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private buildDataSourceFactory(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;"
        }
    .end annotation

    .line 713
    invoke-static {p1}, Lcom/ryanheise/just_audio/AudioPlayer;->castToStringMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 716
    const-string v0, "User-Agent"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 718
    const-string v0, "user-agent"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->context:Landroid/content/Context;

    const-string v1, "just_audio"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 725
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/4 v1, 0x1

    .line 726
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 727
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 728
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 730
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->context:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object p1
.end method

.method private buildExtractorsFactory(Ljava/util/Map;)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;"
        }
    .end annotation

    .line 595
    new-instance p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    if-eqz p1, :cond_0

    .line 600
    const-string v0, "androidExtractorOptions"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 602
    const-string v0, "constantBitrateSeekingEnabled"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 603
    const-string v1, "constantBitrateSeekingAlwaysEnabled"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 604
    const-string v2, "mp3Flags"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    move p1, v1

    .line 607
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setConstantBitrateSeekingEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    .line 608
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setConstantBitrateSeekingAlwaysEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    .line 609
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp3ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    return-object p0
.end method

.method static castToStringMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1080
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1081
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1082
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private clearAudioEffects()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/AudioEffect;

    .line 706
    invoke-virtual {v1}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 707
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 709
    :cond_0
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffectsMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private collectIcyMetadata()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 874
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 875
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyInfo:Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    const-string v2, "url"

    if-eqz v1, :cond_0

    .line 876
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 877
    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyInfo:Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    const-string v4, "title"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyInfo:Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v3, "info"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v1, :cond_1

    .line 882
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 883
    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    iget v3, v3, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bitrate"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    const-string v4, "genre"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    const-string v4, "name"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    iget v3, v3, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "metadataInterval"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->isPublic:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v2, "isPublic"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string p0, "headers"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private completeSeek()V
    .locals 3

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekPos:Ljava/lang/Long;

    .line 407
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekResult:Lio/flutter/plugin/common/MethodChannel$Result;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 408
    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method private concatenating(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSources:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    return-object p0
.end method

.method private createPlaybackEvent()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 831
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->getDuration()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x3e8

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->getDuration()J

    move-result-wide v4

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 832
    :goto_0
    iget-object v4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    iput-wide v4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->bufferedPosition:J

    .line 833
    iget-object v4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    invoke-virtual {v4}, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "processingState"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-wide v4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition:J

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "updatePosition"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-wide v4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->updateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "updateTime"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget-wide v4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition:J

    iget-wide v6, p0, Lcom/ryanheise/just_audio/AudioPlayer;->bufferedPosition:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "bufferedPosition"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v2, "icyMetadata"

    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->collectIcyMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-string v1, "currentIndex"

    iget-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->currentIndex:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string v1, "androidAudioSessionId"

    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioSessionId:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private createShuffleOrder(ILjava/lang/Integer;)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 2

    .line 555
    invoke-static {p1, p2}, Lcom/ryanheise/just_audio/AudioPlayer;->shuffle(ILjava/lang/Integer;)[I

    move-result-object p0

    .line 556
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    sget-object p2, Lcom/ryanheise/just_audio/AudioPlayer;->random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([IJ)V

    return-object p1
.end method

.method private decodeAudioEffect(Ljava/lang/Object;I)Landroid/media/audiofx/AudioEffect;
    .locals 2

    .line 685
    check-cast p1, Ljava/util/Map;

    .line 686
    const-string p0, "type"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 687
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "AndroidEqualizer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AndroidLoudnessEnhancer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    const-string p0, "targetGain"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    .line 692
    new-instance p1, Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {p1, p2}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 693
    invoke-virtual {p1, p0}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    return-object p1

    .line 699
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown AudioEffect type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 696
    :cond_1
    new-instance p0, Landroid/media/audiofx/Equalizer;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    return-object p0
.end method

.method private decodeAudioSource(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 10

    .line 614
    check-cast p1, Ljava/util/Map;

    .line 615
    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 616
    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "silence"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "progressive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "clipping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "looping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "dash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "hls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_6
    const-string v3, "concatenating"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v5, v4

    .line 663
    :goto_0
    const-string v2, "child"

    const-string v3, "uri"

    const-string v6, "headers"

    packed-switch v5, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AudioSource type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :pswitch_0
    new-instance p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;-><init>()V

    const-string v1, "duration"

    .line 638
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->setDurationUs(J)Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;

    move-result-object p0

    .line 639
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;

    move-result-object p0

    .line 640
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->createMediaSource()Lcom/google/android/exoplayer2/source/SilenceMediaSource;

    move-result-object p0

    return-object p0

    .line 618
    :pswitch_1
    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-static {p1, v6}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->buildDataSourceFactory(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    const-string v4, "options"

    invoke-static {p1, v4}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/ryanheise/just_audio/AudioPlayer;->buildExtractorsFactory(Ljava/util/Map;)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 620
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p0

    .line 621
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p0

    .line 622
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p0

    .line 619
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0

    .line 649
    :pswitch_2
    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 650
    const-string v1, "end"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 651
    new-instance v9, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ryanheise/just_audio/AudioPlayer;->getAudioSource(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    if-eqz v0, :cond_7

    .line 652
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_1

    :cond_7
    const-wide/16 p0, 0x0

    :goto_1
    move-wide v5, p0

    if-eqz v1, :cond_8

    .line 653
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_2

    :cond_8
    const-wide/high16 p0, -0x8000000000000000L

    :goto_2
    move-wide v7, p0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJ)V

    return-object v9

    .line 655
    :pswitch_3
    const-string v0, "count"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 656
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ryanheise/just_audio/AudioPlayer;->getAudioSource(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    .line 657
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array v0, p1, [Lcom/google/android/exoplayer2/source/MediaSource;

    :goto_3
    if-ge v4, p1, :cond_9

    .line 659
    aput-object p0, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 661
    :cond_9
    new-instance p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-object p0

    .line 624
    :pswitch_4
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-static {p1, v6}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->buildDataSourceFactory(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 626
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p0

    const-string p1, "application/dash+xml"

    .line 627
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p0

    .line 628
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p0

    .line 629
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p0

    .line 625
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    return-object p0

    .line 631
    :pswitch_5
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-static {p1, v6}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->buildDataSourceFactory(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 633
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p0

    const-string p1, "application/x-mpegURL"

    .line 634
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p0

    .line 635
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p0

    .line 632
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    .line 642
    :pswitch_6
    const-string v0, "children"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ryanheise/just_audio/AudioPlayer;->getAudioSourcesArray(Ljava/lang/Object;)[Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 643
    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    const-string v2, "useLazyPreparation"

    .line 645
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "shuffleOrder"

    .line 646
    invoke-static {p1, v3}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ryanheise/just_audio/AudioPlayer;->decodeShuffleOrder(Ljava/util/List;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p0

    invoke-direct {v1, v4, v2, p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(ZZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a9425ce -> :sswitch_6
        0x193ef -> :sswitch_5
        0x2eef92 -> :sswitch_4
        0x14db9ebe -> :sswitch_3
        0x36c0fcc2 -> :sswitch_2
        0x43720b8b -> :sswitch_1
        0x7cbaf4a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeShuffleOrder(Ljava/util/List;)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;"
        }
    .end annotation

    .line 526
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 528
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    sget-object p1, Lcom/ryanheise/just_audio/AudioPlayer;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([IJ)V

    return-object p0
.end method

.method private enqueuePlaybackEvent()V
    .locals 1

    .line 863
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 864
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->createPlaybackEvent()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->pendingPlaybackEvent:Ljava/util/Map;

    return-void
.end method

.method private ensurePlayerInitialized()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_3

    .line 761
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 768
    :cond_1
    iget-boolean v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->offloadSchedulingEnabled:Z

    if-eqz v1, :cond_2

    .line 769
    new-instance v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setEnableAudioOffload(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 771
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 772
    iget-boolean v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->offloadSchedulingEnabled:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->experimentalSetOffloadSchedulingEnabled(Z)V

    .line 773
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getAudioSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ryanheise/just_audio/AudioPlayer;->setAudioSessionId(I)V

    .line 774
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_3
    return-void
.end method

.method private equalizerAudioEffectGetParameters()Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 804
    iget-object v0, v0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffectsMap:Ljava/util/Map;

    const-string v1, "AndroidEqualizer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Equalizer;

    .line 805
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 806
    :goto_0
    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v3

    const/4 v4, 0x1

    const-wide v7, 0x408f400000000000L    # 1000.0

    if-ge v2, v3, :cond_0

    .line 808
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    .line 809
    invoke-virtual {v0, v2}, Landroid/media/audiofx/Equalizer;->getBandFreqRange(S)[I

    move-result-object v3

    aget v3, v3, v1

    int-to-double v11, v3

    div-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 810
    invoke-virtual {v0, v2}, Landroid/media/audiofx/Equalizer;->getBandFreqRange(S)[I

    move-result-object v3

    aget v3, v3, v4

    int-to-double v3, v3

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 811
    invoke-virtual {v0, v2}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 812
    invoke-virtual {v0, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const-string v9, "index"

    const-string v11, "lowerFrequency"

    const-string v13, "upperFrequency"

    const-string v15, "centerFrequency"

    const-string v17, "gain"

    filled-new-array/range {v9 .. v18}, [Ljava/lang/Object;

    move-result-object v3

    .line 807
    invoke-static {v3}, Lcom/ryanheise/just_audio/AudioPlayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_0

    .line 817
    :cond_0
    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v2

    aget-short v1, v2, v1

    int-to-double v1, v1

    div-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 818
    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v0

    aget-short v0, v0, v4

    int-to-double v0, v0

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "bands"

    const-string v1, "minDecibels"

    const-string v3, "maxDecibels"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 816
    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "parameters"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 815
    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private equalizerBandSetGain(ID)V
    .locals 2

    .line 825
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffectsMap:Ljava/util/Map;

    const-string v0, "AndroidEqualizer"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/audiofx/Equalizer;

    int-to-short p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    return-void
.end method

.method private getAudioSource(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    .line 584
    check-cast p1, Ljava/util/Map;

    .line 585
    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSources:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v1, :cond_0

    .line 588
    invoke-direct {p0, p1}, Lcom/ryanheise/just_audio/AudioPlayer;->decodeAudioSource(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    .line 589
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSources:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private getAudioSources(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 675
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 676
    check-cast p1, Ljava/util/List;

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 678
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 679
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->getAudioSource(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 675
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "List expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAudioSourcesArray(Ljava/lang/Object;)[Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lcom/ryanheise/just_audio/AudioPlayer;->getAudioSources(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 669
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 670
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private getCurrentPosition()J
    .locals 5

    .line 895
    iget-wide v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialPos:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->none:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->loading:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekPos:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 902
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekPos:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 904
    :cond_2
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 898
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_4

    move-wide v0, v2

    :cond_4
    return-wide v0
.end method

.method private getDuration()J
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->none:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->loading:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez p0, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public static getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    if-eqz p0, :cond_1

    .line 1058
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

.method private getLowerCaseExtension(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 934
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 935
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 936
    :goto_0
    const-string p1, "^.*\\."

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onMethodCall$0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMethodCall$1(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMethodCall$2(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private load(Lcom/google/android/exoplayer2/source/MediaSource;JLjava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 734
    iput-wide p2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialPos:J

    .line 735
    iput-object p4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialIndex:Ljava/lang/Integer;

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 736
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->currentIndex:Ljava/lang/Integer;

    .line 737
    sget-object p3, Lcom/ryanheise/just_audio/AudioPlayer$2;->$SwitchMap$com$ryanheise$just_audio$AudioPlayer$ProcessingState:[I

    iget-object p4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    invoke-virtual {p4}, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    .line 745
    iget-object p3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    goto :goto_1

    .line 741
    :cond_1
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->abortExistingConnection()V

    .line 742
    iget-object p3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 748
    :cond_2
    :goto_1
    iput p2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->errorCount:I

    .line 749
    iput-object p5, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 750
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition()V

    .line 751
    sget-object p2, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->loading:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    iput-object p2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    .line 752
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->enqueuePlaybackEvent()V

    .line 753
    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 755
    iget-object p2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 756
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    return-void
.end method

.method private loudnessEnhancerSetTargetGain(D)V
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    .line 799
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 800
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffectsMap:Ljava/util/Map;

    const-string p2, "AndroidLoudnessEnhancer"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/audiofx/LoudnessEnhancer;

    invoke-virtual {p0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    return-void
.end method

.method static mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1063
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1064
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
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

    .line 1071
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1072
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1073
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

.method private sendError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 917
    invoke-direct {p0, p1, p2, v0}, Lcom/ryanheise/just_audio/AudioPlayer;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    .line 922
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 923
    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 926
    :cond_0
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->eventChannel:Lcom/ryanheise/just_audio/BetterEventChannel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ryanheise/just_audio/BetterEventChannel;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setAudioAttributes(III)V
    .locals 1

    .line 779
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    .line 780
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 781
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setFlags(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 782
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 784
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object p1

    .line 785
    iget-object p2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object p3, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->loading:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-ne p2, p3, :cond_0

    .line 788
    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->pendingAudioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    goto :goto_0

    .line 790
    :cond_0
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    :goto_0
    return-void
.end method

.method private setAudioSessionId(I)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioSessionId:Ljava/lang/Integer;

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioSessionId:Ljava/lang/Integer;

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->clearAudioEffects()V

    .line 194
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioSessionId:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->rawAudioEffects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 196
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 197
    iget-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioSessionId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->decodeAudioEffect(Ljava/lang/Object;I)Landroid/media/audiofx/AudioEffect;

    move-result-object v0

    .line 198
    const-string v2, "enabled"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 199
    invoke-virtual {v0, v2}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffectsMap:Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->enqueuePlaybackEvent()V

    return-void
.end method

.method private setShuffleOrder(Ljava/lang/Object;)V
    .locals 3

    .line 564
    check-cast p1, Ljava/util/Map;

    .line 565
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSources:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "concatenating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "looping"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    const-string v0, "child"

    invoke-static {p1, v0}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ryanheise/just_audio/AudioPlayer;->setShuffleOrder(Ljava/lang/Object;)V

    goto :goto_1

    .line 570
    :cond_2
    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 571
    const-string v1, "shuffleOrder"

    invoke-static {p1, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->decodeShuffleOrder(Ljava/util/List;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 572
    const-string v0, "children"

    invoke-static {p1, v0}, Lcom/ryanheise/just_audio/AudioPlayer;->mapGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 573
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 574
    invoke-direct {p0, v0}, Lcom/ryanheise/just_audio/AudioPlayer;->setShuffleOrder(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static shuffle(ILjava/lang/Integer;)[I
    .locals 6

    .line 534
    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    .line 536
    sget-object v3, Lcom/ryanheise/just_audio/AudioPlayer;->random:Ljava/util/Random;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 537
    aget v5, v0, v3

    aput v5, v0, v2

    .line 538
    aput v2, v0, v3

    move v2, v4

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-ge v2, p0, :cond_2

    .line 542
    aget v3, v0, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 543
    aget p0, v0, v1

    .line 544
    aget p1, v0, v2

    aput p1, v0, v1

    .line 545
    aput p0, v0, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method private startWatchingBuffer()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->bufferWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->bufferWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateCurrentIndex()Z
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->currentIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->currentIndex:Ljava/lang/Integer;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updatePosition()V
    .locals 2

    .line 254
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition:J

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->updateTime:J

    return-void
.end method

.method private updatePositionIfChanged()Z
    .locals 4

    .line 247
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition:J

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->updateTime:J

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 1017
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->loading:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-ne v0, v1, :cond_0

    .line 1018
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->abortExistingConnection()V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1021
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1022
    iput-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1025
    iput-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 1026
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->clearAudioEffects()V

    .line 1027
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    .line 1028
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 1029
    iput-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 1030
    sget-object v0, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->none:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    .line 1031
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->eventChannel:Lcom/ryanheise/just_audio/BetterEventChannel;

    invoke-virtual {v0}, Lcom/ryanheise/just_audio/BetterEventChannel;->endOfStream()V

    .line 1034
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->dataEventChannel:Lcom/ryanheise/just_audio/BetterEventChannel;

    invoke-virtual {p0}, Lcom/ryanheise/just_audio/BetterEventChannel;->endOfStream()V

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/ryanheise/just_audio/AudioPlayer;->setAudioSessionId(I)V

    .line 211
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastPendingPlaybackEvent()V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    const/4 v0, 0x0

    .line 216
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 217
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 218
    instance-of v2, v1, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    if-eqz v2, :cond_0

    .line 219
    check-cast v1, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    iput-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyInfo:Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    .line 220
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    const-string v9, "Error: "

    const-string v10, "Illegal state: "

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/ryanheise/just_audio/AudioPlayer;->ensurePlayerInitialized()V

    const/4 v11, 0x0

    .line 416
    :try_start_0
    iget-object v2, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "audioEffectSetEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "setAutomaticallyWaitsToMinimizeStalling"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "androidEqualizerGetParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "setPreferredPeakBitRate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "setSpeed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "setPitch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "concatenatingMove"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "concatenatingRemoveRange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "setVolume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "seek"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "load"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "setLoopMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_e
    const-string v3, "setAndroidAudioAttributes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_f
    const-string v3, "androidLoudnessEnhancerSetTargetGain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto :goto_1

    :sswitch_10
    const-string v3, "setCanUseNetworkResourcesForLiveStreamingWhilePaused"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_11
    const-string v3, "setShuffleOrder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_12
    const-string v3, "concatenatingInsertAll"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_13
    const-string v3, "setSkipSilence"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_14
    const-string v3, "setShuffleMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_15
    const-string v3, "androidEqualizerBandSetGain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-wide/16 v12, 0x3e8

    const-string v3, "index"

    const-string v6, "audioSource"

    const-string v4, "enabled"

    const-string v14, "shuffleOrder"

    const-string v15, "id"

    packed-switch v2, :pswitch_data_0

    .line 511
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_5

    .line 507
    :pswitch_0
    const-string v2, "bandIndex"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "gain"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v7, v2, v3, v4}, Lcom/ryanheise/just_audio/AudioPlayer;->equalizerBandSetGain(ID)V

    .line 508
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 504
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/ryanheise/just_audio/AudioPlayer;->equalizerAudioEffectGetParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 500
    :pswitch_2
    const-string v2, "targetGain"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v7, v1, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->loudnessEnhancerSetTargetGain(D)V

    .line 501
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 496
    :pswitch_3
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v7, v2, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->audioEffectSetEnabled(Ljava/lang/String;Z)V

    .line 497
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 492
    :pswitch_4
    const-string v2, "contentType"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "flags"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "usage"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v7, v2, v3, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->setAudioAttributes(III)V

    .line 493
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 486
    :pswitch_5
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->concatenating(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    const-string v3, "currentIndex"

    .line 487
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "newIndex"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v7, Lcom/ryanheise/just_audio/AudioPlayer;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/ryanheise/just_audio/AudioPlayer$$ExternalSyntheticLambda2;

    invoke-direct {v6, v8}, Lcom/ryanheise/just_audio/AudioPlayer$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->moveMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 488
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->concatenating(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    .line 489
    invoke-virtual {v1, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->decodeShuffleOrder(Ljava/util/List;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_5

    .line 480
    :pswitch_6
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->concatenating(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    const-string v3, "startIndex"

    .line 481
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "endIndex"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v7, Lcom/ryanheise/just_audio/AudioPlayer;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/ryanheise/just_audio/AudioPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v6, v8}, Lcom/ryanheise/just_audio/AudioPlayer$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSourceRange(IILandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 482
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->concatenating(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    .line 483
    invoke-virtual {v1, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->decodeShuffleOrder(Ljava/util/List;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_5

    .line 474
    :pswitch_7
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->concatenating(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    .line 475
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "children"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/ryanheise/just_audio/AudioPlayer;->getAudioSources(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v7, Lcom/ryanheise/just_audio/AudioPlayer;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/ryanheise/just_audio/AudioPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v6, v8}, Lcom/ryanheise/just_audio/AudioPlayer$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 476
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/ryanheise/just_audio/AudioPlayer;->concatenating(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    .line 477
    invoke-virtual {v1, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->decodeShuffleOrder(Ljava/util/List;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_5

    .line 469
    :pswitch_8
    const-string v2, "position"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    .line 470
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v2, :cond_1

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 471
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long v14, v2, v12

    :goto_2
    invoke-virtual {v7, v14, v15, v1, v8}, Lcom/ryanheise/just_audio/AudioPlayer;->seek(JLjava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    .line 466
    :pswitch_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 463
    :pswitch_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 460
    :pswitch_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 456
    :pswitch_c
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->setShuffleOrder(Ljava/lang/Object;)V

    .line 457
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 452
    :pswitch_d
    const-string v2, "shuffleMode"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v4, v5

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v7, v4}, Lcom/ryanheise/just_audio/AudioPlayer;->setShuffleModeEnabled(Z)V

    .line 453
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 448
    :pswitch_e
    const-string v2, "loopMode"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->setLoopMode(I)V

    .line 449
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 444
    :pswitch_f
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->setSkipSilenceEnabled(Z)V

    .line 445
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 440
    :pswitch_10
    const-string v2, "pitch"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->setPitch(F)V

    .line 441
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 436
    :pswitch_11
    const-string v2, "speed"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->setSpeed(F)V

    .line 437
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_5

    .line 432
    :pswitch_12
    const-string v2, "volume"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->setVolume(F)V

    .line 433
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_5

    .line 428
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/ryanheise/just_audio/AudioPlayer;->pause()V

    .line 429
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_5

    .line 425
    :pswitch_14
    invoke-virtual {v7, v8}, Lcom/ryanheise/just_audio/AudioPlayer;->play(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_5

    .line 418
    :pswitch_15
    const-string v2, "initialPosition"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ryanheise/just_audio/AudioPlayer;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    .line 419
    const-string v3, "initialIndex"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    .line 420
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->getAudioSource(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    if-nez v2, :cond_3

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4

    .line 421
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, v12

    move-wide/from16 v16, v1

    :goto_4
    move-object/from16 v1, p0

    move-object v2, v3

    move-wide/from16 v3, v16

    move-object/from16 v6, p2

    .line 420
    invoke-direct/range {v1 .. v6}, Lcom/ryanheise/just_audio/AudioPlayer;->load(Lcom/google/android/exoplayer2/source/MediaSource;JLjava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastPendingPlaybackEvent()V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 518
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v11, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 515
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v11, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_6
    return-void

    .line 521
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastPendingPlaybackEvent()V

    .line 522
    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7aad3a17 -> :sswitch_15
        -0x76787586 -> :sswitch_14
        -0x6fccfba0 -> :sswitch_13
        -0x5bd749ea -> :sswitch_12
        -0x5878aea9 -> :sswitch_11
        -0x29f8037e -> :sswitch_10
        -0x1494f7ca -> :sswitch_f
        -0x64229a0 -> :sswitch_e
        -0x2e1df17 -> :sswitch_d
        0x32c4e6 -> :sswitch_c
        0x348b34 -> :sswitch_b
        0x35ce78 -> :sswitch_a
        0x65825f6 -> :sswitch_9
        0x27f73e1c -> :sswitch_8
        0x3264dd87 -> :sswitch_7
        0x3ad42123 -> :sswitch_6
        0x538783fe -> :sswitch_5
        0x53b4c105 -> :sswitch_4
        0x56b389ef -> :sswitch_3
        0x60da657d -> :sswitch_2
        0x613a0038 -> :sswitch_1
        0x7e381ce6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onPlaybackStateChanged(I)V
    .locals 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v0, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->completed:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-eq p1, v0, :cond_1

    .line 344
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition()V

    .line 345
    sget-object p1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->completed:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    .line 346
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_2

    .line 349
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 350
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 351
    iput-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 352
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->pendingAudioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    if-eqz p1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 354
    iput-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->pendingAudioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 357
    :cond_2
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_9

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 359
    iput-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_1

    .line 316
    :cond_3
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 317
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition()V

    .line 318
    :cond_4
    sget-object p1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->ready:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    .line 319
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    .line 320
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_6

    .line 321
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 322
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->getDuration()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_5
    const-wide/16 v3, 0x3e8

    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->getDuration()J

    move-result-wide v5

    mul-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    const-string v3, "duration"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 324
    iput-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->prepareResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 325
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->pendingAudioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    if-eqz p1, :cond_6

    .line 326
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 327
    iput-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->pendingAudioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 330
    :cond_6
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_9

    .line 331
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->completeSeek()V

    goto :goto_1

    .line 335
    :cond_7
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updatePositionIfChanged()Z

    .line 336
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v0, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->buffering:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v0, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->loading:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-eq p1, v0, :cond_8

    .line 337
    sget-object p1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->buffering:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    .line 338
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    .line 340
    :cond_8
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->startWatchingBuffer()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 5

    .line 367
    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const-string v1, "index"

    const/4 v2, 0x1

    const-string v3, "AudioPlayer"

    if-eqz v0, :cond_3

    .line 368
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 369
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "default ExoPlaybackException: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "TYPE_UNEXPECTED: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "TYPE_RENDERER: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "TYPE_SOURCE: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->currentIndex:Ljava/lang/Integer;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ryanheise/just_audio/AudioPlayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 388
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "default PlaybackException: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->currentIndex:Ljava/lang/Integer;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ryanheise/just_audio/AudioPlayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/ryanheise/just_audio/AudioPlayer;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    :goto_1
    iget p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->errorCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->errorCount:I

    .line 392
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->hasNextMediaItem()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->currentIndex:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->errorCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    .line 393
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    .line 394
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 398
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 399
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 400
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V

    :cond_4
    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition()V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updateCurrentIndex()Z

    .line 267
    :goto_0
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 5

    .line 272
    iget-wide p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialPos:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialIndex:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialIndex:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 274
    :goto_0
    iget-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-wide v3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialPos:J

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialIndex:Ljava/lang/Integer;

    .line 276
    iput-wide v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->initialPos:J

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updateCurrentIndex()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    .line 281
    :cond_3
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 283
    :try_start_0
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5

    .line 284
    iget p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->lastPlaylistLength:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getMediaItemCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 285
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V

    goto :goto_1

    .line 286
    :cond_4
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->hasNextMediaItem()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 287
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToNextMediaItem()V

    goto :goto_1

    .line 290
    :cond_5
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result p1

    iget-object p2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/ExoPlayer;->getMediaItemCount()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 291
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result p2

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getMediaItemCount()I

    move-result p1

    iput p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->lastPlaylistLength:I

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 227
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 228
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    move v3, v0

    .line 230
    :goto_1
    iget v4, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v4, :cond_2

    .line 231
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v4, :cond_1

    move v5, v0

    .line 234
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 235
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v6

    .line 236
    instance-of v7, v6, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v7, :cond_0

    .line 237
    check-cast v6, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    iput-object v6, p0, Lcom/ryanheise/just_audio/AudioPlayer;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 238
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->broadcastImmediatePlaybackEvent()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 959
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition()V

    .line 960
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_1

    .line 961
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 962
    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    :cond_1
    return-void
.end method

.method public play(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_1

    .line 945
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 947
    :cond_1
    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 948
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 949
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition()V

    .line 950
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v0, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->completed:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_2

    .line 951
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 952
    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->playResult:Lio/flutter/plugin/common/MethodChannel$Result;

    :cond_2
    return-void
.end method

.method public seek(JLjava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->none:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->processingState:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    sget-object v1, Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;->loading:Lcom/ryanheise/just_audio/AudioPlayer$ProcessingState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1003
    :cond_0
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->abortSeek()V

    .line 1004
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekPos:Ljava/lang/Long;

    .line 1005
    iput-object p4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p3, :cond_1

    .line 1007
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result p3

    .line 1008
    :goto_0
    iget-object p4, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p4, p3, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 1010
    iput-object p2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1011
    iput-object p2, p0, Lcom/ryanheise/just_audio/AudioPlayer;->seekPos:Ljava/lang/Long;

    .line 1012
    throw p1

    .line 1000
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public setLoopMode(I)V
    .locals 0

    .line 991
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setRepeatMode(I)V

    return-void
.end method

.method public setPitch(F)V
    .locals 3

    .line 980
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 981
    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 983
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->enqueuePlaybackEvent()V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0

    .line 995
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    .line 987
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    .line 971
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 972
    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-direct {v2, p1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 974
    iget-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 975
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->updatePosition()V

    .line 976
    :cond_1
    invoke-direct {p0}, Lcom/ryanheise/just_audio/AudioPlayer;->enqueuePlaybackEvent()V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 967
    iget-object p0, p0, Lcom/ryanheise/just_audio/AudioPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVolume(F)V

    return-void
.end method
