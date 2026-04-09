.class public Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;
.super Ljava/lang/Object;
.source "ForwardingAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# instance fields
.field private final sink:Lcom/google/android/exoplayer2/audio/AudioSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplayer2/Format;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->configure(Lcom/google/android/exoplayer2/Format;I[I)V

    return-void
.end method

.method public disableTunneling()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    return-void
.end method

.method public enableTunnelingV21()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21()V

    return-void
.end method

.method public experimentalFlushWithoutAudioTrackRelease()V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    return-void
.end method

.method public flush()V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    return-void
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public getFormatSupport(Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result p0

    return p0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getSkipSilenceEnabled()Z

    move-result p0

    return p0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result p0

    return p0
.end method

.method public handleDiscontinuity()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    return-void
.end method

.method public hasPendingData()Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result p0

    return p0
.end method

.method public isEnded()Z
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    return-void
.end method

.method public playToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    return-void
.end method

.method public setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    return-void
.end method

.method public setOutputStreamOffsetUs(J)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setOutputStreamOffsetUs(J)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public setPlayerId(Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlayerId(Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    return p0
.end method
