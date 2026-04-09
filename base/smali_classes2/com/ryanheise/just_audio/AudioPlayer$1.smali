.class Lcom/ryanheise/just_audio/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryanheise/just_audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryanheise/just_audio/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/ryanheise/just_audio/AudioPlayer;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->access$000(Lcom/ryanheise/just_audio/AudioPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->access$000(Lcom/ryanheise/just_audio/AudioPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 113
    iget-object v2, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v2}, Lcom/ryanheise/just_audio/AudioPlayer;->access$100(Lcom/ryanheise/just_audio/AudioPlayer;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->access$200(Lcom/ryanheise/just_audio/AudioPlayer;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->access$000(Lcom/ryanheise/just_audio/AudioPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->access$000(Lcom/ryanheise/just_audio/AudioPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->access$300(Lcom/ryanheise/just_audio/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->access$300(Lcom/ryanheise/just_audio/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/ryanheise/just_audio/AudioPlayer$1;->this$0:Lcom/ryanheise/just_audio/AudioPlayer;

    invoke-static {v0}, Lcom/ryanheise/just_audio/AudioPlayer;->access$300(Lcom/ryanheise/just_audio/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
