.class Landroidx/media2/session/MediaControllerStub$12;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$ControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onVideoSizeChanged(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$videoSize:Landroidx/versionedparcelable/ParcelImpl;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 229
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$12;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$12;->val$videoSize:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 0

    .line 232
    iget-object p0, p0, Landroidx/media2/session/MediaControllerStub$12;->val$videoSize:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {p0}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    check-cast p0, Landroidx/media2/common/VideoSize;

    if-nez p0, :cond_0

    .line 234
    const-string p0, "MediaControllerStub"

    const-string p1, "onVideoSizeChanged(): Ignoring null VideoSize"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/media2/session/MediaControllerImplBase;->notifyVideoSizeChanged(Landroidx/media2/common/VideoSize;)V

    return-void
.end method
