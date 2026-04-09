.class public final Lco/tamara/sdk/ui/TamaraPaymentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "TamaraPaymentViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bR\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lco/tamara/sdk/ui/TamaraPaymentViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "orderInfoLiveData",
        "Landroidx/lifecycle/LiveData;",
        "Lco/tamara/sdk/vo/Resource;",
        "Lco/tamara/sdk/model/response/CheckoutSession;",
        "getOrderInfoLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "orderLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lco/tamara/sdk/model/Order;",
        "repository",
        "Lco/tamara/sdk/repository/CheckOutRepository;",
        "getRepository",
        "()Lco/tamara/sdk/repository/CheckOutRepository;",
        "setRepository",
        "(Lco/tamara/sdk/repository/CheckOutRepository;)V",
        "updateOrder",
        "",
        "order",
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
.field private final orderInfoLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/CheckoutSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private final orderLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lco/tamara/sdk/model/Order;",
            ">;"
        }
    .end annotation
.end field

.field public repository:Lco/tamara/sdk/repository/CheckOutRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 16
    sget-object v0, Lco/tamara/sdk/DIHelper;->INSTANCE:Lco/tamara/sdk/DIHelper;

    invoke-virtual {v0, p0}, Lco/tamara/sdk/DIHelper;->inject(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)V

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->orderLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v1, Lco/tamara/sdk/ui/TamaraPaymentViewModel$orderInfoLiveData$1;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraPaymentViewModel$orderInfoLiveData$1;-><init>(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->orderInfoLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final getOrderInfoLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/CheckoutSession;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->orderInfoLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getRepository()Lco/tamara/sdk/repository/CheckOutRepository;
    .locals 0

    .line 20
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->repository:Lco/tamara/sdk/repository/CheckOutRepository;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "repository"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setRepository(Lco/tamara/sdk/repository/CheckOutRepository;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->repository:Lco/tamara/sdk/repository/CheckOutRepository;

    return-void
.end method

.method public final updateOrder(Lco/tamara/sdk/model/Order;)V
    .locals 1

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->orderLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
