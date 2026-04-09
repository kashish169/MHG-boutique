.class public final Lco/tamara/sdk/repository/InformationRepository;
.super Ljava/lang/Object;
.source "InformationRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ$\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\t0\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000fJ\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\t0\u00082\u0006\u0010\u0012\u001a\u00020\u0013J\u001c\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\t0\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\t0\u00082\u0006\u0010\u0016\u001a\u00020\u0018J6\u0010\u0019\u001a\u001e\u0012\u001a\u0012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001b0\u001aj\u0008\u0012\u0004\u0012\u00020\u001b`\u001c0\t0\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000cJ$\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\t0\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010!\u001a\u00020\"J$\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\t0\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010%\u001a\u00020&R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lco/tamara/sdk/repository/InformationRepository;",
        "",
        "appExecutors",
        "Lco/tamara/sdk/AppExecutors;",
        "service",
        "Lco/tamara/sdk/api/Service;",
        "(Lco/tamara/sdk/AppExecutors;Lco/tamara/sdk/api/Service;)V",
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
        "paymentType",
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    .line 24
    iput-object p2, p0, Lco/tamara/sdk/repository/InformationRepository;->service:Lco/tamara/sdk/api/Service;

    return-void
.end method

.method public static final synthetic access$getService$p(Lco/tamara/sdk/repository/InformationRepository;)Lco/tamara/sdk/api/Service;
    .locals 0

    .line 21
    iget-object p0, p0, Lco/tamara/sdk/repository/InformationRepository;->service:Lco/tamara/sdk/api/Service;

    return-object p0
.end method


# virtual methods
.method public final authoriseOrder(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
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

    .line 155
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;

    invoke-direct {v1, p0, p1, v0}, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;-><init>(Lco/tamara/sdk/repository/InformationRepository;Ljava/lang/String;Lco/tamara/sdk/AppExecutors;)V

    .line 172
    invoke-virtual {v1}, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final cancelOrder(Ljava/lang/String;Lco/tamara/sdk/model/request/CancelOrder;)Landroidx/lifecycle/LiveData;
    .locals 2
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

    .line 112
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/InformationRepository$cancelOrder$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lco/tamara/sdk/repository/InformationRepository$cancelOrder$1;-><init>(Lco/tamara/sdk/repository/InformationRepository;Ljava/lang/String;Lco/tamara/sdk/model/request/CancelOrder;Lco/tamara/sdk/AppExecutors;)V

    .line 130
    invoke-virtual {v1}, Lco/tamara/sdk/repository/InformationRepository$cancelOrder$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final getCapturePayment(Lco/tamara/sdk/model/request/CapturePaymentRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
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

    .line 69
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/InformationRepository$getCapturePayment$1;

    invoke-direct {v1, p0, p1, v0}, Lco/tamara/sdk/repository/InformationRepository$getCapturePayment$1;-><init>(Lco/tamara/sdk/repository/InformationRepository;Lco/tamara/sdk/model/request/CapturePaymentRequest;Lco/tamara/sdk/AppExecutors;)V

    .line 86
    invoke-virtual {v1}, Lco/tamara/sdk/repository/InformationRepository$getCapturePayment$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final orderDetail(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
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

    .line 48
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/InformationRepository$orderDetail$1;

    invoke-direct {v1, p0, p1, v0}, Lco/tamara/sdk/repository/InformationRepository$orderDetail$1;-><init>(Lco/tamara/sdk/repository/InformationRepository;Ljava/lang/String;Lco/tamara/sdk/AppExecutors;)V

    .line 65
    invoke-virtual {v1}, Lco/tamara/sdk/repository/InformationRepository$orderDetail$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final paymentOptions(Lco/tamara/sdk/model/request/PaymentOptions;)Landroidx/lifecycle/LiveData;
    .locals 2
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

    .line 176
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/InformationRepository$paymentOptions$1;

    invoke-direct {v1, p0, p1, v0}, Lco/tamara/sdk/repository/InformationRepository$paymentOptions$1;-><init>(Lco/tamara/sdk/repository/InformationRepository;Lco/tamara/sdk/model/request/PaymentOptions;Lco/tamara/sdk/AppExecutors;)V

    .line 194
    invoke-virtual {v1}, Lco/tamara/sdk/repository/InformationRepository$paymentOptions$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final paymentType(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
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
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;-><init>(Lco/tamara/sdk/repository/InformationRepository;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/AppExecutors;)V

    .line 44
    invoke-virtual {v1}, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final refunds(Ljava/lang/String;Lco/tamara/sdk/model/request/PaymentRefund;)Landroidx/lifecycle/LiveData;
    .locals 2
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

    .line 90
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/InformationRepository$refunds$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lco/tamara/sdk/repository/InformationRepository$refunds$1;-><init>(Lco/tamara/sdk/repository/InformationRepository;Ljava/lang/String;Lco/tamara/sdk/model/request/PaymentRefund;Lco/tamara/sdk/AppExecutors;)V

    .line 108
    invoke-virtual {v1}, Lco/tamara/sdk/repository/InformationRepository$refunds$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public final updateOrderReference(Ljava/lang/String;Lco/tamara/sdk/model/request/OrderReference;)Landroidx/lifecycle/LiveData;
    .locals 2
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

    .line 134
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository;->appExecutors:Lco/tamara/sdk/AppExecutors;

    new-instance v1, Lco/tamara/sdk/repository/InformationRepository$updateOrderReference$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lco/tamara/sdk/repository/InformationRepository$updateOrderReference$1;-><init>(Lco/tamara/sdk/repository/InformationRepository;Ljava/lang/String;Lco/tamara/sdk/model/request/OrderReference;Lco/tamara/sdk/AppExecutors;)V

    .line 151
    invoke-virtual {v1}, Lco/tamara/sdk/repository/InformationRepository$updateOrderReference$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
