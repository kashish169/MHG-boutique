.class Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$1;
.super Ljava/lang/Object;
.source "GoogleMapsPlugin.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/LifecycleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;->registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$1;->val$activity:Landroid/app/Activity;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    return-object p0
.end method
