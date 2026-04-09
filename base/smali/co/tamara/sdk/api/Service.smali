.class public interface abstract Lco/tamara/sdk/api/Service;
.super Ljava/lang/Object;
.source "Service.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\'J*\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00040\u00032\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\nH\'J\u001e\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00040\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u000eH\'J\u001e\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00040\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0012H\'J \u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00040\u00032\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\'J\u001e\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00040\u00032\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0017H\'J<\u0010\u0018\u001a\u001e\u0012\u001a\u0012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001a0\u0019j\u0008\u0012\u0004\u0012\u00020\u001a`\u001b0\u00040\u00032\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\'J*\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u00040\u00032\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0001\u0010 \u001a\u00020!H\'J*\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u00040\u00032\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0001\u0010$\u001a\u00020%H\'\u00a8\u0006&"
    }
    d2 = {
        "Lco/tamara/sdk/api/Service;",
        "",
        "authoriseOrder",
        "Landroidx/lifecycle/LiveData;",
        "Lco/tamara/sdk/api/ApiResponse;",
        "Lco/tamara/sdk/model/response/AuthoriseOrder;",
        "orderId",
        "",
        "cancelOrder",
        "Lco/tamara/sdk/model/response/CancelOrderResponse;",
        "Lco/tamara/sdk/model/request/CancelOrder;",
        "createOrder",
        "Lco/tamara/sdk/model/response/CheckoutSession;",
        "order",
        "Lco/tamara/sdk/model/Order;",
        "getCapturePayment",
        "Lco/tamara/sdk/model/response/CapturePayment;",
        "capturePayment",
        "Lco/tamara/sdk/model/request/CapturePaymentRequest;",
        "getOrderDetail",
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


# virtual methods
.method public abstract authoriseOrder(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "orderId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/AuthoriseOrder;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "orders/{orderId}/authorise"
    .end annotation
.end method

.method public abstract cancelOrder(Ljava/lang/String;Lco/tamara/sdk/model/request/CancelOrder;)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "orderId"
        .end annotation
    .end param
    .param p2    # Lco/tamara/sdk/model/request/CancelOrder;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/request/CancelOrder;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/CancelOrderResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "orders/{orderId}/cancel"
    .end annotation
.end method

.method public abstract createOrder(Lco/tamara/sdk/model/Order;)Landroidx/lifecycle/LiveData;
    .param p1    # Lco/tamara/sdk/model/Order;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/Order;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/CheckoutSession;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "checkout"
    .end annotation
.end method

.method public abstract getCapturePayment(Lco/tamara/sdk/model/request/CapturePaymentRequest;)Landroidx/lifecycle/LiveData;
    .param p1    # Lco/tamara/sdk/model/request/CapturePaymentRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/request/CapturePaymentRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/CapturePayment;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "payments/capture"
    .end annotation
.end method

.method public abstract getOrderDetail(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "order_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/orderdetail/OrderDetail;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "orders/{order_id}"
    .end annotation
.end method

.method public abstract paymentOptions(Lco/tamara/sdk/model/request/PaymentOptions;)Landroidx/lifecycle/LiveData;
    .param p1    # Lco/tamara/sdk/model/request/PaymentOptions;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/request/PaymentOptions;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/PaymentOptionsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "checkout/payment-options-pre-check"
    .end annotation
.end method

.method public abstract paymentType(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "country"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "currency"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/PaymentType;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "checkout/payment-types"
    .end annotation
.end method

.method public abstract refunds(Ljava/lang/String;Lco/tamara/sdk/model/request/PaymentRefund;)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "orderId"
        .end annotation
    .end param
    .param p2    # Lco/tamara/sdk/model/request/PaymentRefund;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/request/PaymentRefund;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/RefundsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "payments/simplified-refund/{orderId}"
    .end annotation
.end method

.method public abstract updateOrderReference(Ljava/lang/String;Lco/tamara/sdk/model/request/OrderReference;)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "orderId"
        .end annotation
    .end param
    .param p2    # Lco/tamara/sdk/model/request/OrderReference;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/request/OrderReference;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/OrderReference;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "orders/{orderId}/reference-id"
    .end annotation
.end method
