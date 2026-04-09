.class public final Landroidx/media2/session/MediaController$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

.field mControlType:I

.field mCurrentVolume:I

.field mMaxVolume:I

.field mPlaybackType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/media/AudioAttributesCompat;III)V
    .locals 0

    .line 2159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2160
    iput p1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    .line 2161
    iput-object p2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    .line 2162
    iput p3, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    .line 2163
    iput p4, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    .line 2164
    iput p5, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    return-void
.end method

.method static createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 7

    .line 2250
    new-instance v6, Landroidx/media2/session/MediaController$PlaybackInfo;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaController$PlaybackInfo;-><init>(ILandroidx/media/AudioAttributesCompat;III)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 2237
    instance-of v0, p1, Landroidx/media2/session/MediaController$PlaybackInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2240
    :cond_0
    check-cast p1, Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 2241
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    iget-object p1, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    .line 2245
    invoke-static {p0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .locals 0

    .line 2190
    iget-object p0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    return-object p0
.end method

.method public getControlType()I
    .locals 0

    .line 2204
    iget p0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    return p0
.end method

.method public getCurrentVolume()I
    .locals 0

    .line 2226
    iget p0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    return p0
.end method

.method public getMaxVolume()I
    .locals 0

    .line 2215
    iget p0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    return p0
.end method

.method public getPlaybackType()I
    .locals 0

    .line 2177
    iget p0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 2231
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    .line 2232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2231
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
