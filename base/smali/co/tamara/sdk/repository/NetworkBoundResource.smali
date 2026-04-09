.class public abstract Lco/tamara/sdk/repository/NetworkBoundResource;
.super Ljava/lang/Object;
.source "NetworkBoundResource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        "RequestType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u000f\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\t0\u000bJ\u0014\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\r0\u000bH%J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0002J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH%J\u0008\u0010\u0012\u001a\u00020\u000fH\u0014J\u001b\u0010\u0013\u001a\u00028\u00002\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0015H%\u00a2\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00028\u0000H\u0015\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010\u001a\u001a\u00020\u000f2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0003J\u0017\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00018\u0000H%\u00a2\u0006\u0002\u0010\u001fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lco/tamara/sdk/repository/NetworkBoundResource;",
        "ResultType",
        "RequestType",
        "",
        "appExecutors",
        "Lco/tamara/sdk/AppExecutors;",
        "(Lco/tamara/sdk/AppExecutors;)V",
        "result",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lco/tamara/sdk/vo/Resource;",
        "asLiveData",
        "Landroidx/lifecycle/LiveData;",
        "createCall",
        "Lco/tamara/sdk/api/ApiResponse;",
        "fetchFromNetwork",
        "",
        "dbSource",
        "loadFromDb",
        "onFetchFailed",
        "processResponse",
        "response",
        "Lco/tamara/sdk/api/ApiSuccessResponse;",
        "(Lco/tamara/sdk/api/ApiSuccessResponse;)Ljava/lang/Object;",
        "saveCallResult",
        "item",
        "(Ljava/lang/Object;)V",
        "setValue",
        "newValue",
        "shouldFetch",
        "",
        "data",
        "(Ljava/lang/Object;)Z",
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
.field private final appExecutors:Lco/tamara/sdk/AppExecutors;

.field private final result:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "TResultType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lco/tamara/sdk/AppExecutors;)V
    .locals 2

    const-string v0, "appExecutors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->appExecutors:Lco/tamara/sdk/AppExecutors;

    .line 42
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    .line 45
    sget-object v0, Lco/tamara/sdk/vo/Resource;->Companion:Lco/tamara/sdk/vo/Resource$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/tamara/sdk/vo/Resource$Companion;->loading(Ljava/lang/Object;)Lco/tamara/sdk/vo/Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lco/tamara/sdk/repository/NetworkBoundResource;->loadFromDb()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 48
    new-instance v1, Lco/tamara/sdk/repository/NetworkBoundResource$1;

    invoke-direct {v1, p0, v0}, Lco/tamara/sdk/repository/NetworkBoundResource$1;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p0, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v1}, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static final synthetic access$fetchFromNetwork(Lco/tamara/sdk/repository/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource;->fetchFromNetwork(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public static final synthetic access$getAppExecutors$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Lco/tamara/sdk/AppExecutors;
    .locals 0

    .line 39
    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->appExecutors:Lco/tamara/sdk/AppExecutors;

    return-object p0
.end method

.method public static final synthetic access$getResult$p(Lco/tamara/sdk/repository/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    .line 39
    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method public static final synthetic access$setValue(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource;->setValue(Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method private final fetchFromNetwork(Landroidx/lifecycle/LiveData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lco/tamara/sdk/repository/NetworkBoundResource;->createCall()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$1;

    invoke-direct {v2, p0}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$1;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 73
    iget-object v1, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;

    invoke-direct {v2, p0, v0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;-><init>(Lco/tamara/sdk/repository/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p0, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lco/tamara/sdk/repository/NetworkBoundResource$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v0, p0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final setValue(Lco/tamara/sdk/vo/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/vo/Resource<",
            "+TResultType;>;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final asLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "TResultType;>;>;"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    const-string v0, "null cannot be cast to non-null type androidx.lifecycle.LiveData<co.tamara.sdk.vo.Resource<ResultType of co.tamara.sdk.repository.NetworkBoundResource>>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method protected abstract createCall()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "TRequestType;>;>;"
        }
    .end annotation
.end method

.method protected abstract loadFromDb()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method protected onFetchFailed()V
    .locals 0

    return-void
.end method

.method protected abstract processResponse(Lco/tamara/sdk/api/ApiSuccessResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/api/ApiSuccessResponse<",
            "TRequestType;>;)TResultType;"
        }
    .end annotation
.end method

.method protected saveCallResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 117
    sget-object v0, Lco/tamara/sdk/vo/Resource;->Companion:Lco/tamara/sdk/vo/Resource$Companion;

    invoke-virtual {v0, p1}, Lco/tamara/sdk/vo/Resource$Companion;->success(Ljava/lang/Object;)Lco/tamara/sdk/vo/Resource;

    move-result-object p1

    invoke-direct {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource;->setValue(Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method protected abstract shouldFetch(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)Z"
        }
    .end annotation
.end method
