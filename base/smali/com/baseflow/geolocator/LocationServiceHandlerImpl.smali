.class public Lcom/baseflow/geolocator/LocationServiceHandlerImpl;
.super Ljava/lang/Object;
.source "LocationServiceHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationServiceHandler"


# instance fields
.field private channel:Lio/flutter/plugin/common/EventChannel;

.field private context:Landroid/content/Context;

.field private receiver:Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private disposeListeners()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->receiver:Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->disposeListeners()V

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->context:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v0, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;

    invoke-direct {v0, p2}, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->receiver:Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;

    .line 58
    iget-object p0, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->context:Landroid/content/Context;

    const/4 p2, 0x2

    invoke-static {p0, v0, p1, p2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->context:Landroid/content/Context;

    return-void
.end method

.method startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "LocationServiceHandler"

    const-string v1, "Setting a event call handler before the last was disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->stopListening()V

    .line 30
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    const-string v1, "flutter.baseflow.com/geolocator_service_updates_android"

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    .line 31
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 32
    iput-object p1, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->context:Landroid/content/Context;

    return-void
.end method

.method stopListening()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->disposeListeners()V

    .line 41
    iget-object v0, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 42
    iput-object v1, p0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    return-void
.end method
