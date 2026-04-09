.class Landroidx/media2/session/MediaControllerStub$10;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$ControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onPlaybackInfoChanged(ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$playbackInfo:Landroidx/versionedparcelable/ParcelImpl;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 200
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$10;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$10;->val$playbackInfo:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 0

    .line 203
    iget-object p0, p0, Landroidx/media2/session/MediaControllerStub$10;->val$playbackInfo:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {p0}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    check-cast p0, Landroidx/media2/session/MediaController$PlaybackInfo;

    if-nez p0, :cond_0

    .line 205
    const-string p0, "MediaControllerStub"

    const-string p1, "onPlaybackInfoChanged(): Ignoring null playbackInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/media2/session/MediaControllerImplBase;->notifyPlaybackInfoChanges(Landroidx/media2/session/MediaController$PlaybackInfo;)V

    return-void
.end method
