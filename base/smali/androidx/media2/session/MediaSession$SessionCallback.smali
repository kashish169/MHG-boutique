.class public abstract Landroidx/media2/session/MediaSession$SessionCallback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;
    }
.end annotation


# instance fields
.field mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandRequest(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConnect(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SessionCommandGroup;
    .locals 0

    .line 501
    new-instance p0, Landroidx/media2/session/SessionCommandGroup$Builder;

    invoke-direct {p0}, Landroidx/media2/session/SessionCommandGroup$Builder;-><init>()V

    const/4 p1, 0x2

    .line 502
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPredefinedCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    move-result-object p0

    .line 503
    invoke-virtual {p0}, Landroidx/media2/session/SessionCommandGroup$Builder;->build()Landroidx/media2/session/SessionCommandGroup;

    move-result-object p0

    return-object p0
.end method

.method public onCreateMediaItem(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/common/MediaItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method final onCurrentMediaItemChanged(Landroidx/media2/session/MediaSession;)V
    .locals 0

    .line 791
    iget-object p0, p0, Landroidx/media2/session/MediaSession$SessionCallback;->mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;

    if-eqz p0, :cond_0

    .line 792
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;->onNotificationUpdateNeeded(Landroidx/media2/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onCustomCommand(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Landroidx/media2/session/SessionResult;
    .locals 0

    .line 712
    new-instance p0, Landroidx/media2/session/SessionResult;

    const/4 p1, -0x6

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    return-object p0
.end method

.method public onDisconnected(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 0

    return-void
.end method

.method public onFastForward(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method final onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V
    .locals 0

    .line 785
    iget-object p0, p0, Landroidx/media2/session/MediaSession$SessionCallback;->mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;

    if-eqz p0, :cond_0

    .line 786
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;->onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V

    :cond_0
    return-void
.end method

.method public onPostConnect(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 0

    return-void
.end method

.method public onRewind(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method final onSessionClosed(Landroidx/media2/session/MediaSession;)V
    .locals 0

    .line 797
    iget-object p0, p0, Landroidx/media2/session/MediaSession$SessionCallback;->mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;

    if-eqz p0, :cond_0

    .line 798
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;->onSessionClosed(Landroidx/media2/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onSetMediaUri(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public onSetRating(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/common/Rating;)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public onSkipBackward(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public onSkipForward(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method setForegroundServiceEventCallback(Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;)V
    .locals 0

    .line 803
    iput-object p1, p0, Landroidx/media2/session/MediaSession$SessionCallback;->mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;

    return-void
.end method
