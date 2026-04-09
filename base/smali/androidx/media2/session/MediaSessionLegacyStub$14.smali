.class Landroidx/media2/session/MediaSessionLegacyStub$14;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->onRewind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;)V
    .locals 0

    .line 376
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$14;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$14;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v0

    iget-object p0, p0, Landroidx/media2/session/MediaSessionLegacyStub$14;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {p0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/media2/session/MediaSession$SessionCallback;->onRewind(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I

    return-void
.end method
