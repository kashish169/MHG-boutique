.class public final Lco/tamara/sdk/ui/TamaraInformationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "TamaraInformationViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ$\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000b0\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0011J\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u000b0\n2\u0006\u0010\u0014\u001a\u00020\u0015J\u001c\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u000b0\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u000b0\n2\u0006\u0010\u0018\u001a\u00020\u001aJ6\u0010\u001b\u001a\u001e\u0012\u001a\u0012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001d0\u001cj\u0008\u0012\u0004\u0012\u00020\u001d`\u001e0\u000b0\n2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010\u000eJ$\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u000b0\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010#\u001a\u00020$J$\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u000b0\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\'\u001a\u00020(R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006)"
    }
    d2 = {
        "Lco/tamara/sdk/ui/TamaraInformationViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "repository",
        "Lco/tamara/sdk/repository/InformationRepository;",
        "getRepository",
        "()Lco/tamara/sdk/repository/InformationRepository;",
        "setRepository",
        "(Lco/tamara/sdk/repository/InformationRepository;)V",
        "authoriseOrder",
        "Landroidx/lifecycle/LiveData;",
        "Lco/tamara/sdk/vo/Resource;",
        "Lco/tamara/sdk/model/response/AuthoriseOrder;",
        "orderId",
        "",
        "cancelOrder",
        "Lco/tamara/sdk/model/response/CancelOrderResponse;",
        "Lco/tamara/sdk/model/request/CancelOrder;",
        "getCapturePayment",
        "Lco/tamara/sdk/model/response/CapturePayment;",
        "capturePayment",
        "Lco/tamara/sdk/model/request/CapturePaymentRequest;",
        "orderDetail",
        "Lco/tamara/sdk/model/response/orderdetail/OrderDetail;",
        "paymentOptions",
        "Lco/tamara/sdk/model/response/PaymentOptionsResponse;",
        "Lco/tamara/sdk/model/request/PaymentOptions;",
        "paymentTypeInfo",
        "Ljava/util/ArrayList;",
        "Lco/tamara/sdk/model/response/PaymentType;",
        "Lkotlin/collections/ArrayList;",
        "country",
        "currency",
        "refunds",
        "Lco/tamara/sdk/model/response/RefundsResponse;",
        "paymentRefund",
        "Lco/tamara/sdk/model/request/PaymentRefund;",
        "updateOrderReference",
        "Lco/tamara/sdk/model/response/OrderReference;",
        "orderReference",
        "Lco/tamara/sdk/model/request/OrderReference;",
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
.field public repository:Lco/tamara/sdk/repository/InformationRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    sget-object v0, Lco/tamara/sdk/DIHelper;->INSTANCE:Lco/tamara/sdk/DIHelper;

    invoke-virtual {v0, p0}, Lco/tamara/sdk/DIHelper;->inject(Lco/tamara/sdk/ui/TamaraInformationViewModel;)V

    return-void
.end method


# virtual methods
.method public final authoriseOrder(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/AuthoriseOrder;",
            ">;>;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getRepository()Lco/tamara/sdk/repository/InformationRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/InformationRepository;->authoriseOrder(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final cancelOrder(Ljava/lang/String;Lco/tamara/sdk/model/request/CancelOrder;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/request/CancelOrder;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/CancelOrderResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "cancelOrder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getRepository()Lco/tamara/sdk/repository/InformationRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/repository/InformationRepository;->cancelOrder(Ljava/lang/String;Lco/tamara/sdk/model/request/CancelOrder;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final getCapturePayment(Lco/tamara/sdk/model/request/CapturePaymentRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/request/CapturePaymentRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/CapturePayment;",
            ">;>;"
        }
    .end annotation

    const-string v0, "capturePayment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getRepository()Lco/tamara/sdk/repository/InformationRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/InformationRepository;->getCapturePayment(Lco/tamara/sdk/model/request/CapturePaymentRequest;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final getRepository()Lco/tamara/sdk/repository/InformationRepository;
    .locals 0

    .line 24
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraInformationViewModel;->repository:Lco/tamara/sdk/repository/InformationRepository;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "repository"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final orderDetail(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/orderdetail/OrderDetail;",
            ">;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getRepository()Lco/tamara/sdk/repository/InformationRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/InformationRepository;->orderDetail(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final paymentOptions(Lco/tamara/sdk/model/request/PaymentOptions;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/request/PaymentOptions;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/PaymentOptionsResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "paymentOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getRepository()Lco/tamara/sdk/repository/InformationRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/InformationRepository;->paymentOptions(Lco/tamara/sdk/model/request/PaymentOptions;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final paymentTypeInfo(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/PaymentType;",
            ">;>;>;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getRepository()Lco/tamara/sdk/repository/InformationRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/repository/InformationRepository;->paymentType(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final refunds(Ljava/lang/String;Lco/tamara/sdk/model/request/PaymentRefund;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/request/PaymentRefund;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/RefundsResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "paymentRefund"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getRepository()Lco/tamara/sdk/repository/InformationRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/repository/InformationRepository;->refunds(Ljava/lang/String;Lco/tamara/sdk/model/request/PaymentRefund;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final setRepository(Lco/tamara/sdk/repository/InformationRepository;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationViewModel;->repository:Lco/tamara/sdk/repository/InformationRepository;

    return-void
.end method

.method public final updateOrderReference(Ljava/lang/String;Lco/tamara/sdk/model/request/OrderReference;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/request/OrderReference;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/vo/Resource<",
            "Lco/tamara/sdk/model/response/OrderReference;",
            ">;>;"
        }
    .end annotation

    const-string v0, "orderReference"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getRepository()Lco/tamara/sdk/repository/InformationRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/repository/InformationRepository;->updateOrderReference(Ljava/lang/String;Lco/tamara/sdk/model/request/OrderReference;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
