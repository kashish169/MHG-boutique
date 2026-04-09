.class public Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;
.super Ljava/lang/Object;
.source "FlutterFirebaseDynamicLinksPlugin.java"

# interfaces
.implements Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;


# static fields
.field private static final METHOD_CHANNEL_NAME:Ljava/lang/String; = "plugins.flutter.io/firebase_dynamic_links"

.field private static final TAG:Ljava/lang/String; = "FLTFirebaseDynamicLinks"


# instance fields
.field private final activity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDynamicLinkData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDynamicLinkException:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private channel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public static synthetic $r8$lambda$4CqCMv846bc1Z4Rp-p3bPXdyVh4(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;Ljava/util/Map;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->lambda$buildShortLink$3(Ljava/util/Map;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SgFE-mkpQp0vDpxpAUMA9KlpoZ0(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;Ljava/lang/String;Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->lambda$getDynamicLink$4(Ljava/lang/String;Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e6mPdEDMng7F1A-uWC9SBD0dFyY(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->lambda$onNewIntent$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0NlfSfV-rNkj1d33AunQuHhQjQ(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->lambda$onNewIntent$0(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private buildLink(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->setupParameters(Ljava/util/Map;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->buildDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildShortLink(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 197
    sget-object v1, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;Ljava/util/Map;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private checkForCachedData()V
    .locals 4

    .line 178
    iget-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedDynamicLinkData:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 179
    iget-object v2, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v3, "FirebaseDynamicLink#onLinkSuccess"

    invoke-virtual {v2, v3, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iput-object v1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedDynamicLinkData:Ljava/util/Map;

    .line 182
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedDynamicLinkException:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 183
    iget-object v2, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v3, "FirebaseDynamicLink#onLinkError"

    invoke-virtual {v2, v3, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    iput-object v1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedDynamicLinkException:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private detachToActivity()V
    .locals 1

    .line 90
    iget-object p0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private getDynamicLink(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 250
    sget-object v1, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p2, p1, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;Ljava/lang/String;Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 278
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static getDynamicLinkInstance(Ljava/util/Map;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 100
    const-string v0, "appName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 102
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    .line 103
    invoke-static {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    return-object p0
.end method

.method private initInstance(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 55
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "plugins.flutter.io/firebase_dynamic_links"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 56
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 57
    invoke-static {v1, p0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->registerPlugin(Ljava/lang/String;Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;)V

    .line 58
    invoke-direct {p0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->checkForCachedData()V

    return-void
.end method

.method private synthetic lambda$buildShortLink$3(Ljava/util/Map;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    .line 200
    :try_start_0
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->setupParameters(Ljava/util/Map;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    .line 201
    const-string v0, "longDynamicLink"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setLongLink(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    :cond_0
    const/4 v0, 0x1

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 208
    const-string v2, "shortLinkType"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 210
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 222
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 225
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->buildShortDynamicLink(I)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getWarnings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/dynamiclinks/ShortDynamicLink$Warning;

    .line 230
    invoke-interface {v2}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink$Warning;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_4
    const-string v1, "url"

    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getShortLink()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "warnings"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "previewLink"

    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getPreviewLink()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method static synthetic lambda$didReinitializeFirebaseCore$6(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getDynamicLink$4(Ljava/lang/String;Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    .line 255
    const-string v0, "flutterfire-used-link"

    if-eqz p1, :cond_0

    .line 256
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getDynamicLink(Landroid/net/Uri;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 260
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 261
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 266
    :cond_1
    iget-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    iget-object p0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 268
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getDynamicLink(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    .line 272
    :goto_0
    invoke-static {p0}, Lio/flutter/plugins/firebase/dynamiclinks/Utils;->getMapFromPendingDynamicLinkData(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Ljava/util/Map;

    move-result-object p0

    .line 271
    invoke-virtual {p3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 262
    invoke-virtual {p3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 274
    invoke-virtual {p3, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method static synthetic lambda$getPluginConstantsForFirebaseApp$5(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMethodCall$2(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 172
    :goto_0
    invoke-static {p1}, Lio/flutter/plugins/firebase/dynamiclinks/Utils;->getExceptionDetails(Ljava/lang/Exception;)Ljava/util/Map;

    move-result-object p1

    .line 169
    const-string v1, "firebase_dynamic_links"

    invoke-interface {p0, v1, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onNewIntent$0(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V
    .locals 1

    .line 117
    invoke-static {p1}, Lio/flutter/plugins/firebase/dynamiclinks/Utils;->getMapFromPendingDynamicLinkData(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_0

    .line 120
    const-string p0, "FirebaseDynamicLink#onLinkSuccess"

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_0
    iput-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedDynamicLinkData:Ljava/util/Map;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onNewIntent$1(Ljava/lang/Exception;)V
    .locals 1

    .line 131
    invoke-static {p1}, Lio/flutter/plugins/firebase/dynamiclinks/Utils;->getExceptionDetails(Ljava/lang/Exception;)Ljava/util/Map;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_0

    .line 133
    const-string p0, "FirebaseDynamicLink#onLinkError"

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_0
    iput-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedDynamicLinkException:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method private setupParameters(Ljava/util/Map;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;"
        }
    .end annotation

    .line 282
    invoke-static {p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->getDynamicLinkInstance(Ljava/util/Map;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->createDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    .line 284
    const-string v0, "uriPrefix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    const-string v1, "link"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setDomainUriPrefix(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    .line 288
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setLink(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    .line 290
    const-string v0, "androidParameters"

    .line 291
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 292
    const-string v1, "minimumVersion"

    const-string v2, "fallbackUrl"

    if-eqz v0, :cond_2

    .line 293
    const-string v3, "packageName"

    invoke-static {v3, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 294
    invoke-static {v2, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 295
    invoke-static {v1, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 297
    new-instance v5, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;

    invoke-direct {v5, v3}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 300
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->setFallbackUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;

    :cond_0
    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->setMinimumVersion(I)Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;

    .line 303
    :cond_1
    invoke-virtual {v5}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setAndroidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    .line 306
    :cond_2
    const-string v0, "googleAnalyticsParameters"

    .line 307
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 309
    const-string v3, "campaign"

    invoke-static {v3, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 310
    const-string v4, "content"

    invoke-static {v4, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 311
    const-string v5, "medium"

    invoke-static {v5, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 312
    const-string v6, "source"

    invoke-static {v6, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 313
    const-string v7, "term"

    invoke-static {v7, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    new-instance v7, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    invoke-direct {v7}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;-><init>()V

    if-eqz v3, :cond_3

    .line 318
    invoke-virtual {v7, v3}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->setCampaign(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    :cond_3
    if-eqz v4, :cond_4

    .line 319
    invoke-virtual {v7, v4}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->setContent(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    :cond_4
    if-eqz v5, :cond_5

    .line 320
    invoke-virtual {v7, v5}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->setMedium(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    :cond_5
    if-eqz v6, :cond_6

    .line 321
    invoke-virtual {v7, v6}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->setSource(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    :cond_6
    if-eqz v0, :cond_7

    .line 322
    invoke-virtual {v7, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->setTerm(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    .line 324
    :cond_7
    invoke-virtual {v7}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setGoogleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    .line 327
    :cond_8
    const-string v0, "iosParameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 329
    const-string v3, "bundleId"

    invoke-static {v3, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 330
    const-string v4, "appStoreId"

    invoke-static {v4, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 331
    const-string v5, "customScheme"

    invoke-static {v5, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 332
    invoke-static {v2, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    const-string v6, "ipadBundleId"

    invoke-static {v6, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 334
    const-string v7, "ipadFallbackUrl"

    invoke-static {v7, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 335
    invoke-static {v1, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    new-instance v1, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    invoke-direct {v1, v3}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 339
    invoke-virtual {v1, v4}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->setAppStoreId(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    :cond_9
    if-eqz v5, :cond_a

    .line 340
    invoke-virtual {v1, v5}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->setCustomScheme(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    :cond_a
    if-eqz v2, :cond_b

    .line 341
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->setFallbackUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    :cond_b
    if-eqz v6, :cond_c

    .line 342
    invoke-virtual {v1, v6}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->setIpadBundleId(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    :cond_c
    if-eqz v7, :cond_d

    .line 343
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->setIpadFallbackUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    :cond_d
    if-eqz v0, :cond_e

    .line 344
    invoke-virtual {v1, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->setMinimumVersion(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    .line 346
    :cond_e
    invoke-virtual {v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setIosParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    .line 349
    :cond_f
    const-string v0, "itunesConnectAnalyticsParameters"

    .line 350
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_13

    .line 352
    const-string v1, "affiliateToken"

    invoke-static {v1, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    const-string v2, "campaignToken"

    invoke-static {v2, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 354
    const-string v3, "providerToken"

    invoke-static {v3, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    new-instance v3, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;

    invoke-direct {v3}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;-><init>()V

    if-eqz v1, :cond_10

    .line 359
    invoke-virtual {v3, v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->setAffiliateToken(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;

    :cond_10
    if-eqz v2, :cond_11

    .line 360
    invoke-virtual {v3, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->setCampaignToken(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;

    :cond_11
    if-eqz v0, :cond_12

    .line 361
    invoke-virtual {v3, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->setProviderToken(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;

    .line 363
    :cond_12
    invoke-virtual {v3}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setItunesConnectAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    .line 366
    :cond_13
    const-string v0, "navigationInfoParameters"

    .line 367
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_15

    .line 369
    const-string v1, "forcedRedirectEnabled"

    invoke-static {v1, v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 371
    new-instance v1, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;

    invoke-direct {v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;-><init>()V

    if-eqz v0, :cond_14

    .line 374
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->setForcedRedirectEnabled(Z)Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;

    .line 376
    :cond_14
    invoke-virtual {v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setNavigationInfoParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    .line 379
    :cond_15
    const-string v0, "socialMetaTagParameters"

    .line 380
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_19

    .line 382
    const-string v0, "description"

    invoke-static {v0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    const-string v1, "imageUrl"

    invoke-static {v1, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    const-string v2, "title"

    invoke-static {v2, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 386
    new-instance v2, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    invoke-direct {v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;-><init>()V

    if-eqz v0, :cond_16

    .line 389
    invoke-virtual {v2, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->setDescription(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    :cond_16
    if-eqz v1, :cond_17

    .line 390
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    :cond_17
    if-eqz p1, :cond_18

    .line 391
    invoke-virtual {v2, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->setTitle(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    .line 393
    :cond_18
    invoke-virtual {v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setSocialMetaTagParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    :cond_19
    return-object p0
.end method

.method private static valueFor(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 401
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public didReinitializeFirebaseCore()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 416
    sget-object v0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public getPluginConstantsForFirebaseApp(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 407
    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 408
    sget-object p1, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->initInstance(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->detachToActivity()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->detachToActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 69
    iput-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 144
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->getDynamicLinkInstance(Ljava/util/Map;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object v0

    .line 146
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "FirebaseDynamicLinks#buildLink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "FirebaseDynamicLinks#getInitialLink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "FirebaseDynamicLinks#buildShortLink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "FirebaseDynamicLinks#getDynamicLink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 159
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    return-void

    .line 148
    :pswitch_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->buildLink(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 152
    :pswitch_1
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->buildShortLink(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    goto :goto_1

    .line 156
    :pswitch_2
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->getDynamicLink(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 163
    :goto_1
    new-instance p1, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b71ce1b -> :sswitch_3
        -0x697aa1f6 -> :sswitch_2
        -0x2282e196 -> :sswitch_1
        0x62d70406 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-static {v0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->getDynamicLinkInstance(Ljava/util/Map;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getDynamicLink(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;)V

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;)V

    .line 129
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p0, 0x0

    return p0
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->activity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 86
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    return-void
.end method
