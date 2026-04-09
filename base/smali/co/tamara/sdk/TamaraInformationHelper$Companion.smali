.class public final Lco/tamara/sdk/TamaraInformationHelper$Companion;
.super Ljava/lang/Object;
.source "TamaraInformationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/TamaraInformationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u001e"
    }
    d2 = {
        "Lco/tamara/sdk/TamaraInformationHelper$Companion;",
        "",
        "()V",
        "getAuthoriseOrder",
        "Lco/tamara/sdk/model/response/AuthoriseOrder;",
        "data",
        "Landroid/content/Intent;",
        "getCancelOrder",
        "Lco/tamara/sdk/model/response/CancelOrderResponse;",
        "getCartPage",
        "Lco/tamara/sdk/model/response/CartPage;",
        "getData",
        "Lco/tamara/sdk/InformationResult;",
        "getDataCapturePayment",
        "Lco/tamara/sdk/model/response/CapturePayment;",
        "getDataOrderDetail",
        "Lco/tamara/sdk/model/response/orderdetail/OrderDetail;",
        "getDataRefunds",
        "Lco/tamara/sdk/model/response/RefundsResponse;",
        "getOrderReference",
        "Lco/tamara/sdk/model/response/OrderReference;",
        "getPaymentOptions",
        "Lco/tamara/sdk/model/response/PaymentOptionsResponse;",
        "getProduct",
        "Lco/tamara/sdk/model/response/Product;",
        "shouldHandleActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lco/tamara/sdk/TamaraInformationHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuthoriseOrder(Landroid/content/Intent;)Lco/tamara/sdk/model/response/AuthoriseOrder;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string p0, "AUTHORISE"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/AuthoriseOrder;

    return-object p0
.end method

.method public final getCancelOrder(Landroid/content/Intent;)Lco/tamara/sdk/model/response/CancelOrderResponse;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string p0, "CANCEL"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/CancelOrderResponse;

    return-object p0
.end method

.method public final getCartPage(Landroid/content/Intent;)Lco/tamara/sdk/model/response/CartPage;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-string p0, "CART"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/CartPage;

    return-object p0
.end method

.method public final getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string p0, "INFORMATION_RESULT"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/InformationResult;

    return-object p0
.end method

.method public final getDataCapturePayment(Landroid/content/Intent;)Lco/tamara/sdk/model/response/CapturePayment;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string p0, "CAPTURE_PAYMENT"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/CapturePayment;

    return-object p0
.end method

.method public final getDataOrderDetail(Landroid/content/Intent;)Lco/tamara/sdk/model/response/orderdetail/OrderDetail;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string p0, "ORDER_DETAIL"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    return-object p0
.end method

.method public final getDataRefunds(Landroid/content/Intent;)Lco/tamara/sdk/model/response/RefundsResponse;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-string p0, "REFUNDS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/RefundsResponse;

    return-object p0
.end method

.method public final getOrderReference(Landroid/content/Intent;)Lco/tamara/sdk/model/response/OrderReference;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string p0, "REFERENCE"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/OrderReference;

    return-object p0
.end method

.method public final getPaymentOptions(Landroid/content/Intent;)Lco/tamara/sdk/model/response/PaymentOptionsResponse;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string p0, "PAYMENT_OPTIONS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/PaymentOptionsResponse;

    return-object p0
.end method

.method public final getProduct(Landroid/content/Intent;)Lco/tamara/sdk/model/response/Product;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const-string p0, "PRODUCT"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/Product;

    return-object p0
.end method

.method public final shouldHandleActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p0, -0x1

    if-ne p0, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
