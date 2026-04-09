.class Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$1;
.super Landroid/media/AudioDeviceCallback;
.source "AndroidAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->initAudioDeviceCallback()V
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

    .line 295
    iput-object p1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$1;->this$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 298
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$1;->this$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$4300([Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onAudioDevicesAdded"

    invoke-static {p0, v0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$4400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$1;->this$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-static {p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$4300([Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onAudioDevicesRemoved"

    invoke-static {p0, v0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->access$4400(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
