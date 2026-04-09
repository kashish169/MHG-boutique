.class public final synthetic Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/baseflow/geolocator/location/PositionChangedCallback;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method


# virtual methods
.method public final onPositionChanged(Landroid/location/Location;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-static {p0, p1}, Lcom/baseflow/geolocator/StreamHandlerImpl;->lambda$onListen$0(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/location/Location;)V

    return-void
.end method
