.class public final Lio/flutter/plugins/pay_android/view/PayButtonView;
.super Ljava/lang/Object;
.source "PayButtonView.kt"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0002J\u0008\u0010\u0016\u001a\u00020\u000fH\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/flutter/plugins/pay_android/view/PayButtonView;",
        "Lio/flutter/plugin/platform/PlatformView;",
        "context",
        "Landroid/content/Context;",
        "id",
        "",
        "creationParams",
        "",
        "",
        "",
        "(Landroid/content/Context;ILjava/util/Map;)V",
        "allowedCardAuthMethods",
        "Lorg/json/JSONArray;",
        "allowedCardNetworks",
        "payButton",
        "Landroid/widget/Button;",
        "baseCardPaymentMethod",
        "Lorg/json/JSONObject;",
        "cardPaymentMethod",
        "dispose",
        "",
        "gatewayTokenizationSpecification",
        "getView",
        "pay_android_release"
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
.field private final allowedCardAuthMethods:Lorg/json/JSONArray;

.field private final allowedCardNetworks:Lorg/json/JSONArray;

.field private final payButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0}, Lio/flutter/plugins/pay_android/view/PayButtonView;->cardPaymentMethod()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/plugins/pay_android/view/PayButtonView;->payButton:Landroid/widget/Button;

    .line 38
    const-string p1, "RAFIF!"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    new-instance p1, Lorg/json/JSONArray;

    .line 52
    const-string p2, "MASTERCARD"

    .line 53
    const-string p3, "VISA"

    const-string v0, "AMEX"

    const-string v1, "DISCOVER"

    const-string v2, "JCB"

    filled-new-array {v0, v1, v2, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/flutter/plugins/pay_android/view/PayButtonView;->allowedCardNetworks:Lorg/json/JSONArray;

    .line 55
    new-instance p1, Lorg/json/JSONArray;

    .line 56
    const-string p2, "PAN_ONLY"

    .line 57
    const-string p3, "CRYPTOGRAM_3DS"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/flutter/plugins/pay_android/view/PayButtonView;->allowedCardAuthMethods:Lorg/json/JSONArray;

    return-void
.end method

.method private final baseCardPaymentMethod()Lorg/json/JSONObject;
    .locals 4

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    const-string v2, "allowedAuthMethods"

    iget-object v3, p0, Lio/flutter/plugins/pay_android/view/PayButtonView;->allowedCardAuthMethods:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "allowedCardNetworks"

    iget-object p0, p0, Lio/flutter/plugins/pay_android/view/PayButtonView;->allowedCardNetworks:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string p0, "billingAddressRequired"

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 66
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    const-string v2, "format"

    const-string v3, "FULL"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    const-string v2, "billingAddressParameters"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string p0, "type"

    const-string v2, "CARD"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string p0, "parameters"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final cardPaymentMethod()Lorg/json/JSONObject;
    .locals 2

    .line 87
    invoke-direct {p0}, Lio/flutter/plugins/pay_android/view/PayButtonView;->baseCardPaymentMethod()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    const-string v1, "tokenizationSpecification"

    invoke-direct {p0}, Lio/flutter/plugins/pay_android/view/PayButtonView;->gatewayTokenizationSpecification()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final gatewayTokenizationSpecification()Lorg/json/JSONObject;
    .locals 4

    .line 77
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    const-string v0, "type"

    const-string v1, "PAYMENT_GATEWAY"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x2

    .line 80
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "gateway"

    const-string v3, "example"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 81
    const-string v2, "gatewayMerchantId"

    const-string v3, "exampleGatewayMerchantId"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 79
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "parameters"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lio/flutter/plugins/pay_android/view/PayButtonView;->getView()Landroid/widget/Button;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getView()Landroid/widget/Button;
    .locals 0

    .line 44
    iget-object p0, p0, Lio/flutter/plugins/pay_android/view/PayButtonView;->payButton:Landroid/widget/Button;

    return-object p0
.end method
