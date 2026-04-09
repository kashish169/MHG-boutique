.class public final Lio/flutter/plugins/pay_android/PayMethodCallHandler;
.super Ljava/lang/Object;
.source "PayMethodCallHandler.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB!\u0008\u0002\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000eJ\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0006\u0010\u0019\u001a\u00020\u0014R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/flutter/plugins/pay_android/PayMethodCallHandler;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "registrar",
        "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
        "(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V",
        "flutterBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "activityBinding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "activity",
        "Landroid/app/Activity;",
        "(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "googlePayHandler",
        "Lio/flutter/plugins/pay_android/GooglePayHandler;",
        "onMethodCall",
        "",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "stopListening",
        "pay_android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private final channel:Lio/flutter/plugin/common/MethodChannel;

.field private final googlePayHandler:Lio/flutter/plugins/pay_android/GooglePayHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    const-string v0, "flutterBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v0, "getBinaryMessenger(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lio/flutter/plugins/pay_android/PayMethodCallHandler;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 58
    iget-object p0, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->googlePayHandler:Lio/flutter/plugins/pay_android/GooglePayHandler;

    check-cast p0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p2, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method private constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 43
    new-instance p3, Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "plugins.flutter.io/pay_channel"

    invoke-direct {p3, p1, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p3, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 44
    new-instance p1, Lio/flutter/plugins/pay_android/GooglePayHandler;

    invoke-direct {p1, p2}, Lio/flutter/plugins/pay_android/GooglePayHandler;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->googlePayHandler:Lio/flutter/plugins/pay_android/GooglePayHandler;

    .line 47
    check-cast p0, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {p3, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 3

    const-string v0, "registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    const-string v1, "messenger(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/flutter/plugins/pay_android/PayMethodCallHandler;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 51
    iget-object p0, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->googlePayHandler:Lio/flutter/plugins/pay_android/GooglePayHandler;

    check-cast p0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 72
    const-string v1, "userCanPay"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->googlePayHandler:Lio/flutter/plugins/pay_android/GooglePayHandler;

    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lio/flutter/plugins/pay_android/GooglePayHandler;->isReadyToPay(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    const-string v1, "showPaymentSelector"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Map;

    .line 75
    iget-object p0, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->googlePayHandler:Lio/flutter/plugins/pay_android/GooglePayHandler;

    .line 77
    const-string v0, "payment_profile"

    invoke-static {p1, v0}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 78
    const-string v1, "payment_items"

    invoke-static {p1, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.collections.Map<kotlin.String, kotlin.Any?>>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 75
    invoke-virtual {p0, p2, v0, p1}, Lio/flutter/plugins/pay_android/GooglePayHandler;->loadPaymentData(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_0
    return-void
.end method

.method public final stopListening()V
    .locals 2

    .line 65
    iget-object v0, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 66
    iget-object v0, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/plugins/pay_android/PayMethodCallHandler;->googlePayHandler:Lio/flutter/plugins/pay_android/GooglePayHandler;

    check-cast p0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    :cond_0
    return-void
.end method
