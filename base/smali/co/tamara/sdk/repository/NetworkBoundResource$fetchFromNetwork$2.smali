.class final Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NetworkBoundResource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/repository/NetworkBoundResource;->fetchFromNetwork(Landroidx/lifecycle/LiveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lco/tamara/sdk/api/ApiResponse<",
        "TRequestType;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u0002H\u0003 \u0006*\n\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "ResultType",
        "RequestType",
        "response",
        "Lco/tamara/sdk/api/ApiResponse;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $apiResponse:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "TRequestType;>;>;"
        }
    .end annotation
.end field

.field final synthetic $dbSource:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lco/tamara/sdk/repository/NetworkBoundResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/tamara/sdk/repository/NetworkBoundResource<",
            "TResultType;TRequestType;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$32v6X40nteOqWIo7uU8CBCiszSk(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/api/ApiResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->invoke$lambda$1(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/api/ApiResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3X9iR7q9g5y_-DlV8g9-J7qA_9I(Lco/tamara/sdk/repository/NetworkBoundResource;)V
    .locals 0

    invoke-static {p0}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->invoke$lambda$1$lambda$0(Lco/tamara/sdk/repository/NetworkBoundResource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiSQWcRaCS4m_iP0278iS9aEwqM(Lco/tamara/sdk/repository/NetworkBoundResource;)V
    .locals 0

    invoke-static {p0}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->invoke$lambda$2(Lco/tamara/sdk/repository/NetworkBoundResource;)V

    return-void
.end method

.method constructor <init>(Lco/tamara/sdk/repository/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/repository/NetworkBoundResource<",
            "TResultType;TRequestType;>;",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "TRequestType;>;>;",
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    iput-object p2, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->$apiResponse:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->$dbSource:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/api/ApiResponse;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lco/tamara/sdk/api/ApiSuccessResponse;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource;->processResponse(Lco/tamara/sdk/api/ApiSuccessResponse;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource;->saveCallResult(Ljava/lang/Object;)V

    .line 80
    invoke-static {p0}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$getAppExecutors$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Lco/tamara/sdk/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lco/tamara/sdk/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda0;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lco/tamara/sdk/repository/NetworkBoundResource;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$getResult$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lco/tamara/sdk/repository/NetworkBoundResource;->loadFromDb()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$1$1$1;

    invoke-direct {v2, p0}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$1$1$1;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p0, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final invoke$lambda$2(Lco/tamara/sdk/repository/NetworkBoundResource;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$getResult$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lco/tamara/sdk/repository/NetworkBoundResource;->loadFromDb()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$2$1;

    invoke-direct {v2, p0}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$2$1;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p0, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lco/tamara/sdk/api/ApiResponse;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->invoke(Lco/tamara/sdk/api/ApiResponse;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lco/tamara/sdk/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/api/ApiResponse<",
            "TRequestType;>;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    invoke-static {v0}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$getResult$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->$apiResponse:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 75
    iget-object v0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    invoke-static {v0}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$getResult$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->$dbSource:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 77
    instance-of v0, p1, Lco/tamara/sdk/api/ApiSuccessResponse;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    invoke-static {v0}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$getAppExecutors$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Lco/tamara/sdk/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lco/tamara/sdk/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    new-instance v1, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda1;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/api/ApiResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 90
    :cond_0
    instance-of v0, p1, Lco/tamara/sdk/api/ApiEmptyResponse;

    if-eqz v0, :cond_1

    .line 91
    iget-object p1, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    invoke-static {p1}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$getAppExecutors$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Lco/tamara/sdk/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lco/tamara/sdk/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    new-instance v0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda2;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    :cond_1
    instance-of v0, p1, Lco/tamara/sdk/api/ApiErrorResponse;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    invoke-virtual {v0}, Lco/tamara/sdk/repository/NetworkBoundResource;->onFetchFailed()V

    .line 100
    iget-object v0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    invoke-static {v0}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$getResult$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->$dbSource:Landroidx/lifecycle/LiveData;

    new-instance v2, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$3;

    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    invoke-direct {v2, p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$3;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/api/ApiResponse;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p0, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    :goto_0
    return-void
.end method
