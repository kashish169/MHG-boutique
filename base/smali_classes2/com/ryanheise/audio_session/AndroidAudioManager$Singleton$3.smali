.class Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$3;
.super Landroid/content/BroadcastReceiver;
.source "AndroidAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->registerScoReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;


# direct methods
.method constructor <init>(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$3;->this$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 624
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$3;->this$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    .line 626
    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    .line 627
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 624
    const-string p2, "onScoAudioStateUpdated"

    invoke-static {p0, p2, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$4400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
