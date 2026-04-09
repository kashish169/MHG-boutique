.class public final Lcom/starttech/mhgboutique/MainActivity;
.super Lio/flutter/embedding/android/FlutterActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/starttech/mhgboutique/MainActivity;",
        "Lio/flutter/embedding/android/FlutterActivity;",
        "()V",
        "CHANNEL",
        "",
        "configureFlutterEngine",
        "",
        "flutterEngine",
        "Lio/flutter/embedding/engine/FlutterEngine;",
        "showNotification",
        "title",
        "body",
        "imageUrl",
        "app_release"
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
.field private final CHANNEL:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$tB8QCFloSqsPqgI3QcReH2WWTU4(Lcom/starttech/mhgboutique/MainActivity;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/starttech/mhgboutique/MainActivity;->configureFlutterEngine$lambda$0(Lcom/starttech/mhgboutique/MainActivity;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;-><init>()V

    .line 24
    const-string v0, "custom_notifications"

    iput-object v0, p0, Lcom/starttech/mhgboutique/MainActivity;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method private static final configureFlutterEngine$lambda$0(Lcom/starttech/mhgboutique/MainActivity;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "showCustomNotification"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 33
    :cond_0
    const-string v2, "body"

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    .line 34
    :cond_1
    const-string v3, "imageUrl"

    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 36
    :goto_0
    invoke-direct {p0, v0, v2, v1}, Lcom/starttech/mhgboutique/MainActivity;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 37
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    :cond_3
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_1
    return-void
.end method

.method private final showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 50
    new-instance v0, Landroid/app/NotificationChannel;

    .line 52
    const-string v1, "Custom Notifications"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x4

    .line 50
    const-string v3, "custom_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 55
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/starttech/mhgboutique/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/NotificationManager;

    .line 56
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 60
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/starttech/mhgboutique/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/starttech/mhgboutique/R$layout;->custom_notification:I

    invoke-direct {v0, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 61
    sget v2, Lcom/starttech/mhgboutique/R$id;->notification_title:I

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 62
    sget p1, Lcom/starttech/mhgboutique/R$id;->notification_body:I

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 65
    sget p1, Lcom/starttech/mhgboutique/R$id;->notification_image:I

    sget p2, Lcom/starttech/mhgboutique/R$drawable;->app_icon:I

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 67
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    sget p2, Lcom/starttech/mhgboutique/R$drawable;->app_icon:I

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 70
    new-instance p2, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    check-cast p2, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p0, v1}, Lcom/starttech/mhgboutique/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/NotificationManager;

    .line 75
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {p2, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 78
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const/16 p3, 0x320

    .line 81
    invoke-virtual {p0, p3, p3}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 82
    new-instance p3, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;

    invoke-direct {p3, v0, p2, v2, p1}, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;-><init>(Landroid/widget/RemoteViews;Landroid/app/NotificationManager;ILandroidx/core/app/NotificationCompat$Builder;)V

    check-cast p3, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method


# virtual methods
.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 2

    const-string v0, "flutterEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 29
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    iget-object v1, p0, Lcom/starttech/mhgboutique/MainActivity;->CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    new-instance p1, Lcom/starttech/mhgboutique/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/starttech/mhgboutique/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/starttech/mhgboutique/MainActivity;)V

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method
