.class Lio/flutter/embedding/engine/renderer/FlutterRenderer$2;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$2;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 109
    const-string p1, "FlutterRenderer"

    const-string v0, "onResume called; notifying SurfaceProducers"

    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$2;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$100(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    .line 111
    invoke-static {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->access$200(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;)Lio/flutter/view/TextureRegistry$SurfaceProducer$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->access$200(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;)Lio/flutter/view/TextureRegistry$SurfaceProducer$Callback;

    move-result-object p1

    invoke-interface {p1}, Lio/flutter/view/TextureRegistry$SurfaceProducer$Callback;->onSurfaceCreated()V

    goto :goto_0

    :cond_1
    return-void
.end method
