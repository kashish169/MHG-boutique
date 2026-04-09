.class final Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;
.super Ljava/lang/Object;
.source "GoogleMapsPlugin.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lio/flutter/plugins/googlemaps/LifecycleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyLifecycleProvider"
.end annotation


# instance fields
.field private final lifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final registrarActivityHashCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->registrarActivityHashCode:I

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 187
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->registrarActivityHashCode:I

    if-eq p1, p2, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->registrarActivityHashCode:I

    if-eq v0, v1, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 181
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->registrarActivityHashCode:I

    if-eq p1, v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->registrarActivityHashCode:I

    if-eq p1, v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->registrarActivityHashCode:I

    if-eq p1, v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->registrarActivityHashCode:I

    if-eq p1, v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
