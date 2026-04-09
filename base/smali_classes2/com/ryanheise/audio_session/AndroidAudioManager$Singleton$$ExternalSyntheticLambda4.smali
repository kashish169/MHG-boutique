.class public final synthetic Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;


# direct methods
.method public synthetic constructor <init>(Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$$ExternalSyntheticLambda4;->f$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton$$ExternalSyntheticLambda4;->f$0:Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;

    invoke-virtual {p0, p1}, Lcom/ryanheise/audio_session/AndroidAudioManager$Singleton;->lambda$requestAudioFocus$0$com-ryanheise-audio_session-AndroidAudioManager$Singleton(I)V

    return-void
.end method
