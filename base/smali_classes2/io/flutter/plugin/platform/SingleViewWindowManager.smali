.class abstract Lio/flutter/plugin/platform/SingleViewWindowManager;
.super Ljava/lang/Object;
.source "SingleViewWindowManager.java"

# interfaces
.implements Landroid/view/WindowManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformViewsController"


# instance fields
.field final delegate:Landroid/view/WindowManager;

.field fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->delegate:Landroid/view/WindowManager;

    .line 44
    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;

    return-void
.end method


# virtual methods
.method public addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->delegate:Landroid/view/WindowManager;

    invoke-static {p0, p1, p2}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->delegate:Landroid/view/WindowManager;

    invoke-static {p0, p1}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowManager;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;

    if-nez p0, :cond_0

    .line 66
    const-string p0, "PlatformViewsController"

    const-string p1, "Embedded view called addView while detached from presentation"

    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .locals 0

    .line 94
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->delegate:Landroid/view/WindowManager;

    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->delegate:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .locals 0

    .line 101
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->delegate:Landroid/view/WindowManager;

    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    return-object p0
.end method

.method public isCrossWindowBlurEnabled()Z
    .locals 0

    .line 107
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->delegate:Landroid/view/WindowManager;

    invoke-static {p0}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Z

    move-result p0

    return p0
.end method

.method public removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->delegate:Landroid/view/WindowManager;

    invoke-static {p0, p1}, Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;

    if-nez p0, :cond_0

    .line 84
    const-string p0, "PlatformViewsController"

    const-string p1, "Embedded view called removeView while detached from presentation"

    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;

    if-nez v0, :cond_0

    .line 56
    const-string p0, "PlatformViewsController"

    const-string p1, "Embedded view called removeViewImmediate while detached from presentation"

    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 60
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;

    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewWindowManager;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;

    if-nez p0, :cond_0

    .line 75
    const-string p0, "PlatformViewsController"

    const-string p1, "Embedded view called updateViewLayout while detached from presentation"

    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/platform/SingleViewFakeWindowViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
