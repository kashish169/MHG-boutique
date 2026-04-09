.class public Lco/tamara/sdk/AppExecutors;
.super Ljava/lang/Object;
.source "AppExecutors.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/AppExecutors$MainThreadExecutor;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0011\u0018\u00002\u00020\u0001:\u0001\u0008B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lco/tamara/sdk/AppExecutors;",
        "",
        "()V",
        "diskIO",
        "Ljava/util/concurrent/Executor;",
        "networkIO",
        "mainThread",
        "(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V",
        "MainThreadExecutor",
        "tamara_flutter_sdk_release"
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
.field private final diskIO:Ljava/util/concurrent/Executor;

.field private final mainThread:Ljava/util/concurrent/Executor;

.field private final networkIO:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/Executor;

    const/4 v1, 0x3

    .line 44
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "newFixedThreadPool(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 45
    new-instance v2, Lco/tamara/sdk/AppExecutors$MainThreadExecutor;

    invoke-direct {v2}, Lco/tamara/sdk/AppExecutors$MainThreadExecutor;-><init>()V

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 42
    invoke-direct {p0, v0, v1, v2}, Lco/tamara/sdk/AppExecutors;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "diskIO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkIO"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThread"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lco/tamara/sdk/AppExecutors;->diskIO:Ljava/util/concurrent/Executor;

    .line 37
    iput-object p2, p0, Lco/tamara/sdk/AppExecutors;->networkIO:Ljava/util/concurrent/Executor;

    .line 38
    iput-object p3, p0, Lco/tamara/sdk/AppExecutors;->mainThread:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final diskIO()Ljava/util/concurrent/Executor;
    .locals 0

    .line 49
    iget-object p0, p0, Lco/tamara/sdk/AppExecutors;->diskIO:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final mainThread()Ljava/util/concurrent/Executor;
    .locals 0

    .line 57
    iget-object p0, p0, Lco/tamara/sdk/AppExecutors;->mainThread:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final networkIO()Ljava/util/concurrent/Executor;
    .locals 0

    .line 53
    iget-object p0, p0, Lco/tamara/sdk/AppExecutors;->networkIO:Ljava/util/concurrent/Executor;

    return-object p0
.end method
