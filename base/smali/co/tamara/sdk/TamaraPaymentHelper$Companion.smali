.class public final Lco/tamara/sdk/TamaraPaymentHelper$Companion;
.super Ljava/lang/Object;
.source "TamaraPaymentHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/TamaraPaymentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lco/tamara/sdk/TamaraPaymentHelper$Companion;",
        "",
        "()V",
        "checkOutSession",
        "Lco/tamara/sdk/model/response/CheckoutSession;",
        "data",
        "Landroid/content/Intent;",
        "getData",
        "Lco/tamara/sdk/PaymentResult;",
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lco/tamara/sdk/TamaraPaymentHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkOutSession(Landroid/content/Intent;)Lco/tamara/sdk/model/response/CheckoutSession;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string p0, "CHECK_OUT_SESSION"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/CheckoutSession;

    return-object p0
.end method

.method public final getData(Landroid/content/Intent;)Lco/tamara/sdk/PaymentResult;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string p0, "payment_result"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/PaymentResult;

    return-object p0
.end method

.method public final shouldHandleActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p0, -0x1

    if-ne p0, p2, :cond_0

    const/16 p0, 0x5b12

    if-ne p0, p1, :cond_0

    if-eqz p3, :cond_0

    .line 23
    const-string p0, "payment_result"

    .line 22
    invoke-virtual {p3, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
