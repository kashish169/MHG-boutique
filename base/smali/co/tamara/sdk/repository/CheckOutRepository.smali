.class public final Lco/tamara/sdk/repository/CheckOutRepository;
.super Ljava/lang/Object;
.source "CheckOutRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lco/tamara/sdk/repository/CheckOutRepository;",
        "",
        "appExecutors",
        "Lco/tamara/sdk/AppExecutors;",
        "service",
        "Lco/tamara/sdk/api/Service;",
        "(Lco/tamara/sdk/AppExecutors;Lco/tamara/sdk/api/Service;)V",
        "createOrder",
        "Landroidx/lifecycle/LiveData;",
        "Lco/tamara/sdk/vo/Resource;",
        "Lco/tamara/sdk/model/response/CheckoutSession;",
        "order",
        "Lco/tamara/sdk/model/Order;",
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

.field private final service:Lco/tamara/sdk/api/Service;


# direct methods
.method public constructor <init>(Lco/tamara/sdk/AppExecutors;Lco/tamara/sdk/api/Service;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "appExecutors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lco/tamara/sdk/repository/CheckOutRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    .line 18
    iput-object p2, p0, Lco/tamara/sdk/repository/CheckOutRepository;->service:Lco/tamara/sdk/api/Service;

    return-void
.end method

.method public static final synthetic access$getService$p(Lco/tamara/sdk/repository/CheckOutRepository;)Lco/tamara/sdk/api/Service;
    .locals 0

    .line 15
    iget-object p0, p0, Lco/tamara/sdk/repository/CheckOutRepository;->service:Lco/tamara/sdk/api/Service;

    return-object p0
.end method


# virtual methods
.method public final createOrder(Lco/tamara/sdk/model/Order;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/Order;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/CheckoutSession;",
            ">;>;"
        }
    .end annotation

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lco/tamara/sdk/repository/CheckOutRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/CheckOutRepository$createOrder$1;

    invoke-direct {v1, p0, p1, v0}, Lco/tamara/sdk/repository/CheckOutRepository$createOrder$1;-><init>(Lco/tamara/sdk/repository/CheckOutRepository;Lco/tamara/sdk/model/Order;Lco/tamara/sdk/AppExecutors;)V

    .line 39
    invoke-virtual {v1}, Lco/tamara/sdk/repository/CheckOutRepository$createOrder$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
