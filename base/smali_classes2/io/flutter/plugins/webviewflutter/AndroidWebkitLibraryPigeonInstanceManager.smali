.class public final Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;
.super Ljava/lang/Object;
.source "AndroidWebkitLibrary.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$Companion;,
        Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidWebkitLibrary.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,4798:1\n1#2:4799\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0018\u0000 ,2\u00020\u0001:\u0002,-B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0006J\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0001J\u0018\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0006H\u0002J\u0006\u0010!\u001a\u00020\u001cJ\u0010\u0010\"\u001a\u00020\u000f2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001J\u0017\u0010#\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010$J\u001b\u0010%\u001a\u0004\u0018\u0001H&\"\u0004\u0008\u0000\u0010&2\u0006\u0010\u001e\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\'J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010(\u001a\u00020\u001cH\u0002J\u0008\u0010)\u001a\u00020\u001cH\u0002J\u001b\u0010*\u001a\u0004\u0018\u0001H&\"\u0004\u0008\u0000\u0010&2\u0006\u0010\u001e\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\'J\u0006\u0010+\u001a\u00020\u001cR$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0016j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u0018\u001a*\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00190\u0016j\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0019`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u001a\u001a*\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0019\u0012\u0004\u0012\u00020\u00060\u0016j\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0019\u0012\u0004\u0012\u00020\u0006`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;",
        "",
        "finalizationListener",
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;",
        "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;)V",
        "value",
        "",
        "clearFinalizedWeakReferencesInterval",
        "getClearFinalizedWeakReferencesInterval",
        "()J",
        "setClearFinalizedWeakReferencesInterval",
        "(J)V",
        "handler",
        "Landroid/os/Handler;",
        "hasFinalizationListenerStopped",
        "",
        "identifiers",
        "Ljava/util/WeakHashMap;",
        "nextIdentifier",
        "referenceQueue",
        "Ljava/lang/ref/ReferenceQueue;",
        "strongInstances",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "weakInstances",
        "Ljava/lang/ref/WeakReference;",
        "weakReferencesToIdentifiers",
        "addDartCreatedInstance",
        "",
        "instance",
        "identifier",
        "addHostCreatedInstance",
        "addInstance",
        "clear",
        "containsInstance",
        "getIdentifierForStrongReference",
        "(Ljava/lang/Object;)Ljava/lang/Long;",
        "getInstance",
        "T",
        "(J)Ljava/lang/Object;",
        "logWarningIfFinalizationListenerHasStopped",
        "releaseAllFinalizedInstances",
        "remove",
        "stopFinalizationListener",
        "Companion",
        "PigeonFinalizationListener",
        "webview_flutter_android_release"
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
.field public static final Companion:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$Companion;

.field private static final minHostCreatedIdentifier:J = 0x10000L

.field private static final tag:Ljava/lang/String; = "PigeonInstanceManager"


# instance fields
.field private clearFinalizedWeakReferencesInterval:J

.field private final finalizationListener:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;

.field private final handler:Landroid/os/Handler;

.field private hasFinalizationListenerStopped:Z

.field private final identifiers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private nextIdentifier:J

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final strongInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final weakInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final weakReferencesToIdentifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-aBCJxbxvZFXEN3OBZ9vnwTC3UU(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->stopFinalizationListener$lambda$3(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4zLfzzVmzB0hGoQzdq-IIK68WNY(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->releaseAllFinalizedInstances$lambda$5(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pf4joBhnyT2BNFBwHmqy_uhkDBE(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->_init_$lambda$1(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mcX3KU-B05LWsGnbsS6a5e5lEUo(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->_set_clearFinalizedWeakReferencesInterval_$lambda$0(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->Companion:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$Companion;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;)V
    .locals 3

    const-string v0, "finalizationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->finalizationListener:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;

    .line 74
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->identifiers:Ljava/util/WeakHashMap;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakInstances:Ljava/util/HashMap;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->strongInstances:Ljava/util/HashMap;

    .line 77
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakReferencesToIdentifiers:Ljava/util/HashMap;

    .line 79
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->handler:Landroid/os/Handler;

    const-wide/32 v0, 0x10000

    .line 80
    iput-wide v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->nextIdentifier:J

    const-wide/16 v0, 0xbb8

    .line 87
    iput-wide v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->clearFinalizedWeakReferencesInterval:J

    .line 95
    new-instance v0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    iget-wide v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->clearFinalizedWeakReferencesInterval:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final _init_$lambda$1(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->releaseAllFinalizedInstances()V

    return-void
.end method

.method private static final _set_clearFinalizedWeakReferencesInterval_$lambda$0(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->releaseAllFinalizedInstances()V

    return-void
.end method

.method private final addInstance(Ljava/lang/Object;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 246
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakInstances:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->identifiers:Ljava/util/WeakHashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakInstances:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakReferencesToIdentifiers:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 253
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->strongInstances:Ljava/util/HashMap;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 247
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Identifier has already been added: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 246
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Identifier must be >= 0: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final logWarningIfFinalizationListenerHasStopped()V
    .locals 1

    .line 257
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->hasFinalizationListenerStopped()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 259
    const-string p0, "PigeonInstanceManager"

    .line 260
    const-string v0, "The manager was used after calls to the PigeonFinalizationListener has been stopped."

    .line 258
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final releaseAllFinalizedInstances()V
    .locals 4

    .line 228
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->hasFinalizationListenerStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 234
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakReferencesToIdentifiers:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakInstances:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->strongInstances:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->finalizationListener:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;->onFinalize(J)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->handler:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    iget-wide v2, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->clearFinalizedWeakReferencesInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final releaseAllFinalizedInstances$lambda$5(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->releaseAllFinalizedInstances()V

    return-void
.end method

.method private static final stopFinalizationListener$lambda$3(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->releaseAllFinalizedInstances()V

    return-void
.end method


# virtual methods
.method public final addDartCreatedInstance(Ljava/lang/Object;J)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->addInstance(Ljava/lang/Object;J)V

    return-void
.end method

.method public final addHostCreatedInstance(Ljava/lang/Object;)J
    .locals 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 172
    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->containsInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-wide v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->nextIdentifier:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->nextIdentifier:J

    .line 176
    invoke-direct {p0, p1, v0, v1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->addInstance(Ljava/lang/Object;J)V

    return-wide v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Instance of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has already been added."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 172
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 211
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->identifiers:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 212
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 213
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->strongInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 214
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakReferencesToIdentifiers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final containsInstance(Ljava/lang/Object;)Z
    .locals 0

    .line 189
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 190
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->identifiers:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getClearFinalizedWeakReferencesInterval()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->clearFinalizedWeakReferencesInterval:J

    return-wide v0
.end method

.method public final getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1

    .line 143
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 144
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->identifiers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->strongInstances:Ljava/util/HashMap;

    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final getInstance(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 183
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->weakInstances:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final hasFinalizationListenerStopped()Z
    .locals 0

    .line 224
    iget-boolean p0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->hasFinalizationListenerStopped:Z

    return p0
.end method

.method public final remove(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 124
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->getInstance(J)Ljava/lang/Object;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->destroy()V

    .line 128
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->strongInstances:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setClearFinalizedWeakReferencesInterval(J)V
    .locals 2

    .line 89
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->handler:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    iput-wide p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->clearFinalizedWeakReferencesInterval:J

    .line 91
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->releaseAllFinalizedInstances()V

    return-void
.end method

.method public final stopFinalizationListener()V
    .locals 2

    .line 201
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->handler:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->hasFinalizationListenerStopped:Z

    return-void
.end method
