.class public Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;
.super Ljava/lang/Object;
.source "SurfaceProducerPlatformViewRenderTarget.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewRenderTarget;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceProducerRenderTarget"


# instance fields
.field private producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;


# direct methods
.method public constructor <init>(Lio/flutter/view/TextureRegistry$SurfaceProducer;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 30
    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {p0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->getHeight()I

    move-result p0

    return p0
.end method

.method public getId()J
    .locals 2

    .line 35
    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {p0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 51
    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {p0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 25
    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {p0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->getWidth()I

    move-result p0

    return p0
.end method

.method public isReleased()Z
    .locals 0

    .line 46
    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 1

    .line 40
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->release()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    return-void
.end method

.method public resize(II)V
    .locals 0

    .line 20
    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {p0, p1, p2}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->setSize(II)V

    return-void
.end method

.method public scheduleFrame()V
    .locals 0

    .line 55
    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {p0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->scheduleFrame()V

    return-void
.end method
