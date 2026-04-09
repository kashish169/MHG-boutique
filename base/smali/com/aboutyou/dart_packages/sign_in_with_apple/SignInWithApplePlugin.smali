.class public final Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;
.super Ljava/lang/Object;
.source "SignInWithApplePlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 $2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0005J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0012\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0017H\u0016J\u0008\u0010\u001c\u001a\u00020\u0017H\u0016J\u0012\u0010\u001d\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u001aH\u0016J\u001c\u0010\u001e\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u001f\u001a\u00020 2\u0008\u0008\u0001\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "()V",
        "CUSTOM_TABS_REQUEST_CODE",
        "",
        "binding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "getBinding",
        "()Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "setBinding",
        "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "onActivityResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAttachedToActivity",
        "",
        "onAttachedToEngine",
        "flutterPluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "onReattachedToActivityForConfigChanges",
        "Companion",
        "sign_in_with_apple_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;

.field private static lastAuthorizationRequestResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private static triggerMainActivityToHideChromeCustomTab:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CUSTOM_TABS_REQUEST_CODE:I

.field private binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private channel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->Companion:Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    .line 23
    iput v0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->CUSTOM_TABS_REQUEST_CODE:I

    return-void
.end method

.method public static final synthetic access$getLastAuthorizationRequestResult$cp()Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 1

    .line 22
    sget-object v0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->lastAuthorizationRequestResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object v0
.end method

.method public static final synthetic access$getTriggerMainActivityToHideChromeCustomTab$cp()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 22
    sget-object v0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->triggerMainActivityToHideChromeCustomTab:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$setLastAuthorizationRequestResult$cp(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->lastAuthorizationRequestResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method public static final synthetic access$setTriggerMainActivityToHideChromeCustomTab$cp(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->triggerMainActivityToHideChromeCustomTab:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getBinding()Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 111
    iget p0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->CUSTOM_TABS_REQUEST_CODE:I

    if-ne p1, p0, :cond_0

    .line 112
    sget-object p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->lastAuthorizationRequestResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p0, :cond_0

    .line 115
    const-string p1, "authorization-error/canceled"

    const-string p2, "The user closed the Custom Tab"

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    sput-object p3, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->lastAuthorizationRequestResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 118
    sput-object p3, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->triggerMainActivityToHideChromeCustomTab:Lkotlin/jvm/functions/Function0;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 94
    check-cast p0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "com.aboutyou.dart_packages.sign_in_with_apple"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 31
    check-cast p0, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 36
    :cond_0
    iput-object v0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 46
    const-string v1, "isAvailable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 47
    :cond_0
    const-string v1, "performAuthorizationRequest"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 51
    const-string p0, "Plugin is not attached to an activity"

    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    const-string v0, "MISSING_ACTIVITY"

    invoke-interface {p2, v0, p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_2
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 58
    const-string p0, "Missing \'url\' argument"

    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    const-string v0, "MISSING_ARG"

    invoke-interface {p2, v0, p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 62
    :cond_3
    sget-object p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->lastAuthorizationRequestResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_4

    const-string v3, "NEW_REQUEST"

    const-string v4, "A new request came in while this was still pending. The previous request (this one) was then cancelled."

    invoke-interface {p1, v3, v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_4
    sget-object p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->triggerMainActivityToHideChromeCustomTab:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_5

    .line 64
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 67
    :cond_5
    sput-object p2, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->lastAuthorizationRequestResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 68
    new-instance p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$onMethodCall$1;

    invoke-direct {p1, v0}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$onMethodCall$1;-><init>(Landroid/app/Activity;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    sput-object p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->triggerMainActivityToHideChromeCustomTab:Lkotlin/jvm/functions/Function0;

    .line 76
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p2, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    iget-object p2, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 82
    iget p0, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->CUSTOM_TABS_REQUEST_CODE:I

    .line 83
    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    .line 80
    invoke-virtual {v0, p2, p0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 87
    :cond_6
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_1
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method public final setBinding(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method
