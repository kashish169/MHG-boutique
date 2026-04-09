.class Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$2;
.super Ljava/lang/Object;
.source "GoogleMapsPlugin.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/LifecycleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;->onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$2;->this$0:Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 85
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$2;->this$0:Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;

    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method
