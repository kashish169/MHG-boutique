.class public Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;
.super Ljava/lang/Object;
.source "BackGestureChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackGestureChannel"


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field private final defaultHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->defaultHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 41
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "flutter/backgesture"

    sget-object v3, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v1, p1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 43
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private backEventToJsonMap(Landroid/window/BackEvent;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/BackEvent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 122
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/BackEvent;)F

    move-result v0

    .line 123
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/window/BackEvent;)F

    move-result v1

    .line 124
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 125
    :goto_1
    const-string v1, "touchOffset"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/window/BackEvent;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "progress"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/BackEvent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "swipeEdge"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public cancelBackGesture()V
    .locals 2

    .line 105
    const-string v0, "BackGestureChannel"

    const-string v1, "Sending message to cancel back gesture"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "cancelBackGesture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public commitBackGesture()V
    .locals 2

    .line 93
    const-string v0, "BackGestureChannel"

    const-string v1, "Sending message to commit back gesture"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "commitBackGesture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public startBackGesture(Landroid/window/BackEvent;)V
    .locals 2

    .line 66
    const-string v0, "BackGestureChannel"

    const-string v1, "Sending message to start back gesture"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "startBackGesture"

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->backEventToJsonMap(Landroid/window/BackEvent;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBackGestureProgress(Landroid/window/BackEvent;)V
    .locals 2

    .line 80
    const-string v0, "BackGestureChannel"

    const-string v1, "Sending message to update back gesture progress"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "updateBackGestureProgress"

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/systemchannels/BackGestureChannel;->backEventToJsonMap(Landroid/window/BackEvent;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
