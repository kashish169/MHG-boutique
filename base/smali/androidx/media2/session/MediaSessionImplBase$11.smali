.class Landroidx/media2/session/MediaSessionImplBase$11;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$PlayerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase;->getCurrentPosition()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/MediaSessionImplBase$PlayerTask<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;)V
    .locals 0

    .line 492
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$11;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 495
    iget-object p0, p0, Landroidx/media2/session/MediaSessionImplBase$11;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase;->isInPlaybackState(Landroidx/media2/common/SessionPlayer;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 496
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getCurrentPosition()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 492
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase$11;->run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
