.class final Lco/tamara/sdk/ui/TamaraPaymentViewModel$orderInfoLiveData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TamaraPaymentViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/ui/TamaraPaymentViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lco/tamara/sdk/model/Order;",
        "Landroidx/lifecycle/LiveData<",
        "Lco/tamara/sdk/vo/Resource<",
        "Lco/tamara/sdk/model/response/CheckoutSession;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001\u00a2\u0006\u0002\u0008\u00042\u0018\u0010\u0005\u001a\u0014 \u0007*\t\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u00040\u0006\u00a2\u0006\u0002\u0008\u0004H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/LiveData;",
        "Lco/tamara/sdk/vo/Resource;",
        "Lco/tamara/sdk/model/response/CheckoutSession;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "order",
        "Lco/tamara/sdk/model/Order;",
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
.field final synthetic this$0:Lco/tamara/sdk/ui/TamaraPaymentViewModel;


# direct methods
.method constructor <init>(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)V
    .locals 0

    iput-object p1, p0, Lco/tamara/sdk/ui/TamaraPaymentViewModel$orderInfoLiveData$1;->this$0:Lco/tamara/sdk/ui/TamaraPaymentViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lco/tamara/sdk/model/Order;)Landroidx/lifecycle/LiveData;
    .locals 0
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

    .line 26
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraPaymentViewModel$orderInfoLiveData$1;->this$0:Lco/tamara/sdk/ui/TamaraPaymentViewModel;

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->getRepository()Lco/tamara/sdk/repository/CheckOutRepository;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/CheckOutRepository;->createOrder(Lco/tamara/sdk/model/Order;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lco/tamara/sdk/model/Order;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/ui/TamaraPaymentViewModel$orderInfoLiveData$1;->invoke(Lco/tamara/sdk/model/Order;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
