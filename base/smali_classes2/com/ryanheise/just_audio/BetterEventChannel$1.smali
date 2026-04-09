.class Lcom/ryanheise/just_audio/BetterEventChannel$1;
.super Ljava/lang/Object;
.source "BetterEventChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ryanheise/just_audio/BetterEventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryanheise/just_audio/BetterEventChannel;


# direct methods
.method constructor <init>(Lcom/ryanheise/just_audio/BetterEventChannel;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/ryanheise/just_audio/BetterEventChannel$1;->this$0:Lcom/ryanheise/just_audio/BetterEventChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ryanheise/just_audio/BetterEventChannel$1;->this$0:Lcom/ryanheise/just_audio/BetterEventChannel;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ryanheise/just_audio/BetterEventChannel;->access$002(Lcom/ryanheise/just_audio/BetterEventChannel;Lio/flutter/plugin/common/EventChannel$EventSink;)Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ryanheise/just_audio/BetterEventChannel$1;->this$0:Lcom/ryanheise/just_audio/BetterEventChannel;

    invoke-static {p0, p2}, Lcom/ryanheise/just_audio/BetterEventChannel;->access$002(Lcom/ryanheise/just_audio/BetterEventChannel;Lio/flutter/plugin/common/EventChannel$EventSink;)Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method
