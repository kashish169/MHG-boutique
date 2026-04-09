.class public Lio/flutter/embedding/android/FlutterFragment;
.super Landroidx/fragment/app/Fragment;
.source "FlutterFragment.java"

# interfaces
.implements Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;
.implements Landroid/content/ComponentCallbacks2;
.implements Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;,
        Lio/flutter/embedding/android/FlutterFragment$ActivityCallThrough;
    }
.end annotation


# static fields
.field protected static final ARG_APP_BUNDLE_PATH:Ljava/lang/String; = "app_bundle_path"

.field protected static final ARG_CACHED_ENGINE_GROUP_ID:Ljava/lang/String; = "cached_engine_group_id"

.field protected static final ARG_CACHED_ENGINE_ID:Ljava/lang/String; = "cached_engine_id"

.field protected static final ARG_DART_ENTRYPOINT:Ljava/lang/String; = "dart_entrypoint"

.field protected static final ARG_DART_ENTRYPOINT_ARGS:Ljava/lang/String; = "dart_entrypoint_args"

.field protected static final ARG_DART_ENTRYPOINT_URI:Ljava/lang/String; = "dart_entrypoint_uri"

.field protected static final ARG_DESTROY_ENGINE_WITH_FRAGMENT:Ljava/lang/String; = "destroy_engine_with_fragment"

.field protected static final ARG_ENABLE_STATE_RESTORATION:Ljava/lang/String; = "enable_state_restoration"

.field protected static final ARG_FLUTTERVIEW_RENDER_MODE:Ljava/lang/String; = "flutterview_render_mode"

.field protected static final ARG_FLUTTERVIEW_TRANSPARENCY_MODE:Ljava/lang/String; = "flutterview_transparency_mode"

.field protected static final ARG_FLUTTER_INITIALIZATION_ARGS:Ljava/lang/String; = "initialization_args"

.field protected static final ARG_HANDLE_DEEPLINKING:Ljava/lang/String; = "handle_deeplinking"

.field protected static final ARG_INITIAL_ROUTE:Ljava/lang/String; = "initial_route"

.field protected static final ARG_SHOULD_ATTACH_ENGINE_TO_ACTIVITY:Ljava/lang/String; = "should_attach_engine_to_activity"

.field protected static final ARG_SHOULD_AUTOMATICALLY_HANDLE_ON_BACK_PRESSED:Ljava/lang/String; = "should_automatically_handle_on_back_pressed"

.field protected static final ARG_SHOULD_DELAY_FIRST_ANDROID_VIEW_DRAW:Ljava/lang/String; = "should_delay_first_android_view_draw"

.field public static final FLUTTER_VIEW_ID:I

.field private static final TAG:Ljava/lang/String; = "FlutterFragment"


# instance fields
.field delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

.field private delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

.field private final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private final onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lio/flutter/embedding/android/FlutterFragment;->FLUTTER_VIEW_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1020
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 170
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterFragment$1;-><init>(Lio/flutter/embedding/android/FlutterFragment;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 1004
    iput-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    .line 1012
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterFragment$2;-><init>(Lio/flutter/embedding/android/FlutterFragment;Z)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 1023
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/FlutterFragment;Ljava/lang/String;)Z
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static createDefault()Lio/flutter/embedding/android/FlutterFragment;
    .locals 1

    .line 202
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;-><init>()V

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->build()Lio/flutter/embedding/android/FlutterFragment;

    move-result-object v0

    return-object v0
.end method

.method private stillAttachedForEvent(Ljava/lang/String;)Z
    .locals 5

    .line 1704
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "FlutterFragment "

    const-string v4, "FlutterFragment"

    if-nez v0, :cond_0

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " called after release."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1708
    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " called after detach."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static withCachedEngine(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 2

    .line 515
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;-><init>(Ljava/lang/String;Lio/flutter/embedding/android/FlutterFragment$1;)V

    return-object v0
.end method

.method public static withNewEngine()Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 1

    .line 211
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;

    invoke-direct {v0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;-><init>()V

    return-object v0
.end method

.method public static withNewEngineInGroup(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;
    .locals 1

    .line 759
    new-instance v0, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineInGroupFragmentBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public attachToEngineAutomatically()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 1

    .line 1540
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1541
    instance-of v0, p0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    if-eqz v0, :cond_0

    .line 1542
    check-cast p0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    invoke-interface {p0, p1}, Lio/flutter/embedding/android/FlutterEngineConfigurator;->cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    :cond_0
    return-void
.end method

.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 1

    .line 1526
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1527
    instance-of v0, p0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    if-eqz v0, :cond_0

    .line 1528
    check-cast p0, Lio/flutter/embedding/android/FlutterEngineConfigurator;

    invoke-interface {p0, p1}, Lio/flutter/embedding/android/FlutterEngineConfigurator;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    :cond_0
    return-void
.end method

.method public createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;
    .locals 0

    .line 1009
    new-instance p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)V

    return-object p0
.end method

.method public detachFromFlutterEngine()V
    .locals 2

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlutterFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " connection to the engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " evicted by another attaching activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    const-string v1, "FlutterFragment"

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDestroyView()V

    .line 1167
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDetach()V

    :cond_0
    return-void
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 0

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method public getAppBundlePath()Ljava/lang/String;
    .locals 1

    .line 1398
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "app_bundle_path"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCachedEngineGroupId()Ljava/lang/String;
    .locals 2

    .line 1313
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "cached_engine_group_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCachedEngineId()Ljava/lang/String;
    .locals 2

    .line 1302
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "cached_engine_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDartEntrypointArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1369
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "dart_entrypoint_args"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getDartEntrypointFunctionName()Ljava/lang/String;
    .locals 2

    .line 1356
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "dart_entrypoint"

    const-string v1, "main"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDartEntrypointLibraryUri()Ljava/lang/String;
    .locals 1

    .line 1383
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "dart_entrypoint_uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExclusiveAppComponent()Lio/flutter/embedding/android/ExclusiveAppComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/embedding/android/ExclusiveAppComponent<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1049
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    return-object p0
.end method

.method public getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 0

    .line 1490
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p0

    return-object p0
.end method

.method public getFlutterShellArgs()Lio/flutter/embedding/engine/FlutterShellArgs;
    .locals 1

    .line 1289
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "initialization_args"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1290
    new-instance v0, Lio/flutter/embedding/engine/FlutterShellArgs;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1291
    new-array p0, p0, [Ljava/lang/String;

    :goto_0
    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/FlutterShellArgs;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public getInitialRoute()Ljava/lang/String;
    .locals 1

    .line 1411
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "initial_route"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRenderMode()Lio/flutter/embedding/android/RenderMode;
    .locals 2

    .line 1426
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    invoke-virtual {v0}, Lio/flutter/embedding/android/RenderMode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flutterview_render_mode"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1427
    invoke-static {p0}, Lio/flutter/embedding/android/RenderMode;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/RenderMode;

    move-result-object p0

    return-object p0
.end method

.method public getTransparencyMode()Lio/flutter/embedding/android/TransparencyMode;
    .locals 2

    .line 1442
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    .line 1443
    invoke-virtual {v0}, Lio/flutter/embedding/android/TransparencyMode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flutterview_transparency_mode"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1444
    invoke-static {p0}, Lio/flutter/embedding/android/TransparencyMode;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/TransparencyMode;

    move-result-object p0

    return-object p0
.end method

.method isFlutterEngineInjected()Z
    .locals 0

    .line 1321
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost()Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1247
    const-string v0, "onActivityResult"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 1054
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1055
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    invoke-interface {v0, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;->createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 1056
    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onAttach(Landroid/content/Context;)V

    .line 1057
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 1066
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1068
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1230
    const-string v0, "onBackPressed"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1073
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1074
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1081
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    sget v4, Lio/flutter/embedding/android/FlutterFragment;->FLUTTER_VIEW_ID:I

    .line 1086
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->shouldDelayFirstAndroidViewDraw()Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1081
    invoke-virtual/range {v0 .. v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 1138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 1139
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 1140
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 1141
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1142
    const-string v0, "onDestroyView"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1173
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1174
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 1175
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDetach()V

    .line 1177
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->release()V

    const/4 v0, 0x0

    .line 1178
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    goto :goto_0

    .line 1180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlutterFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " onDetach called after release."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlutterFragment"

    invoke-static {v0, p0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFlutterSurfaceViewCreated(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    return-void
.end method

.method public onFlutterTextureViewCreated(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    return-void
.end method

.method public onFlutterUiDisplayed()V
    .locals 1

    .line 1589
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1590
    instance-of v0, p0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    if-eqz v0, :cond_0

    .line 1591
    check-cast p0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {p0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    :cond_0
    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 1

    .line 1608
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1609
    instance-of v0, p0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    if-eqz v0, :cond_0

    .line 1610
    check-cast p0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {p0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiNoLongerDisplayed()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1215
    const-string v0, "onNewIntent"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1116
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 1117
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onPause()V

    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 1109
    const-string v0, "onPostResume"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onPostResume()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1198
    const-string v0, "onRequestPermissionsResult"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1099
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 1100
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1149
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1150
    const-string v0, "onSaveInstanceState"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1091
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 1092
    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1124
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 1125
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onStop()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1276
    const-string v0, "onTrimMemory"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 1260
    const-string v0, "onUserLeaveHint"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterFragment;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1132
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->onWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public popSystemNavigator()Z
    .locals 4

    .line 1668
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1669
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1674
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1676
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v3, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 1678
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 1680
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 2

    .line 1473
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1474
    instance-of v0, p1, Lio/flutter/embedding/android/FlutterEngineProvider;

    if-eqz v0, :cond_0

    .line 1476
    const-string v0, "FlutterFragment"

    const-string v1, "Deferring to attached Activity to provide a FlutterEngine."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    check-cast p1, Lio/flutter/embedding/android/FlutterEngineProvider;

    .line 1478
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/embedding/android/FlutterEngineProvider;->provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public providePlatformPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformPlugin;
    .locals 1

    if-eqz p1, :cond_0

    .line 1498
    new-instance p1, Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformChannel()Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method setDelegateFactory(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment;->delegateFactory:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;

    .line 1040
    invoke-interface {p1, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$DelegateFactory;->createDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    return-void
.end method

.method public setFrameworkHandlesBack(Z)V
    .locals 3

    .line 1691
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "should_automatically_handle_on_back_pressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1694
    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return-void
.end method

.method public shouldAttachEngineToActivity()Z
    .locals 1

    .line 1554
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "should_attach_engine_to_activity"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method shouldDelayFirstAndroidViewDraw()Z
    .locals 1

    .line 1700
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "should_delay_first_android_view_draw"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldDestroyEngineWithHost()Z
    .locals 3

    .line 1334
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "destroy_engine_with_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1335
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getCachedEngineId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public shouldDispatchAppLifecycleState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldHandleDeeplinking()Z
    .locals 1

    .line 1563
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "handle_deeplinking"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldRestoreAndSaveState()Z
    .locals 2

    .line 1616
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enable_state_restoration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1619
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->getCachedEngineId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateSystemUiOverlays()V
    .locals 0

    .line 1627
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz p0, :cond_0

    .line 1628
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->updateSystemUiOverlays()V

    :cond_0
    return-void
.end method
