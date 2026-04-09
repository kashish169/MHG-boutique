.class final Lio/flutter/plugins/googlemaps/GoogleMapInitializer;
.super Ljava/lang/Object;
.source "GoogleMapInitializer.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapsSdkInitializedCallback;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;


# instance fields
.field private final context:Landroid/content/Context;

.field private final methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private rendererInitialized:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->rendererInitialized:Z

    .line 25
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->context:Landroid/content/Context;

    .line 27
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "plugins.flutter.dev/google_maps_android_initializer"

    invoke-direct {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 29
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private initializeWithPreferredRenderer(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->rendererInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    sput-object p2, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "default"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "legacy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p2, "latest"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 70
    sget-object p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string p1, "Invalid renderer type"

    const-string p2, "Renderer initialization called with invalid renderer type"

    invoke-interface {p0, p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    sput-object v1, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_2

    .line 67
    :pswitch_0
    invoke-virtual {p0, v1}, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializeWithRendererRequest(Lcom/google/android/gms/maps/MapsInitializer$Renderer;)V

    goto :goto_2

    .line 64
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/maps/MapsInitializer$Renderer;->LEGACY:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializeWithRendererRequest(Lcom/google/android/gms/maps/MapsInitializer$Renderer;)V

    goto :goto_2

    .line 61
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/maps/MapsInitializer$Renderer;->LATEST:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializeWithRendererRequest(Lcom/google/android/gms/maps/MapsInitializer$Renderer;)V

    goto :goto_2

    .line 55
    :cond_4
    :goto_1
    const-string p0, "Renderer already initialized"

    const-string p1, "Renderer initialization called multiple times"

    invoke-interface {p2, p0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x42277079 -> :sswitch_2
        -0x41f50c37 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initializeWithRendererRequest(Lcom/google/android/gms/maps/MapsInitializer$Renderer;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->context:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;Lcom/google/android/gms/maps/MapsInitializer$Renderer;Lcom/google/android/gms/maps/OnMapsSdkInitializedCallback;)I

    return-void
.end method

.method public onMapsSdkInitialized(Lcom/google/android/gms/maps/MapsInitializer$Renderer;)V
    .locals 2

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->rendererInitialized:Z

    .line 94
    sget-object p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p0, :cond_2

    .line 95
    sget-object p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer$1;->$SwitchMap$com$google$android$gms$maps$MapsInitializer$Renderer:[I

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapsInitializer$Renderer;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 103
    sget-object p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "Unknown renderer type"

    const-string v1, "Initialized with unknown renderer type"

    invoke-interface {p0, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_0
    sget-object p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "legacy"

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_1
    sget-object p0, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "latest"

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 106
    :goto_0
    sput-object p1, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    :cond_2
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 34
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "initializer#preferRenderer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;->initializeWithPreferredRenderer(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_0
    return-void
.end method
