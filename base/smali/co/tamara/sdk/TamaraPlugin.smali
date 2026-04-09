.class public final Lco/tamara/sdk/TamaraPlugin;
.super Ljava/lang/Object;
.source "TamaraPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lco/tamara/sdk/Tamara;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u00082\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u0016JH\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0008H\u0016J\u0018\u0010%\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J\u0010\u0010&\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J\u0008\u0010\'\u001a\u00020\u0016H\u0016J\u0018\u0010(\u001a\u00020\u00162\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u0008H\u0016J\u0010\u0010+\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0008H\u0016J8\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u000204H\u0016J\"\u00105\u001a\u0002042\u0006\u00106\u001a\u00020\"2\u0006\u00107\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u000109H\u0016J\u0010\u0010:\u001a\u00020\u00162\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020\u00162\u0006\u0010;\u001a\u00020>H\u0016J\u0008\u0010?\u001a\u00020\u0016H\u0016J\u0008\u0010@\u001a\u00020\u0016H\u0016J\u0010\u0010A\u001a\u00020\u00162\u0006\u0010;\u001a\u00020>H\u0016J\u0018\u0010B\u001a\u00020\u00162\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\nH\u0016J\u0010\u0010F\u001a\u00020\u00162\u0006\u0010;\u001a\u00020<H\u0016J(\u0010G\u001a\u00020\u00162\u0006\u0010H\u001a\u00020\u00082\u0006\u0010I\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u00082\u0006\u0010K\u001a\u00020\u0008H\u0016J\u0008\u0010L\u001a\u00020\u0016H\u0016J\u0018\u0010M\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J(\u0010N\u001a\u00020\u00162\u0006\u0010O\u001a\u00020\u00082\u0006\u0010P\u001a\u00020\u00082\u0006\u0010Q\u001a\u00020\u00082\u0006\u0010R\u001a\u00020\u001eH\u0016J(\u0010S\u001a\u00020\u00162\u0006\u0010O\u001a\u00020\u00082\u0006\u0010P\u001a\u00020\u00082\u0006\u0010Q\u001a\u00020\u00082\u0006\u0010R\u001a\u00020\u001eH\u0016J\u0010\u0010T\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u0016JH\u0010U\u001a\u00020\u00162\u0006\u0010V\u001a\u00020\u00082\u0006\u0010W\u001a\u00020\u00082\u0006\u0010X\u001a\u00020\u00082\u0006\u0010Y\u001a\u00020\u00082\u0006\u0010Z\u001a\u00020\u00082\u0006\u0010P\u001a\u00020\u00082\u0006\u0010[\u001a\u00020\u00082\u0006\u0010\\\u001a\u00020\u0008H\u0016J\u0018\u0010]\u001a\u00020\u00162\u0006\u0010^\u001a\u00020\u00082\u0006\u0010_\u001a\u00020\u0008H\u0016J\u0010\u0010`\u001a\u00020\u00162\u0006\u0010a\u001a\u00020\u0008H\u0016J0\u0010b\u001a\u00020\u00162\u0006\u0010V\u001a\u00020\u00082\u0006\u0010W\u001a\u00020\u00082\u0006\u0010X\u001a\u00020\u00082\u0006\u0010c\u001a\u00020\u00082\u0006\u0010d\u001a\u000204H\u0016J\u0018\u0010e\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u0008H\u0016J\u0010\u0010f\u001a\u00020\u00162\u0006\u0010g\u001a\u00020\"H\u0016J\u0010\u0010h\u001a\u00020\u00162\u0006\u0010i\u001a\u00020\"H\u0016J\u0010\u0010j\u001a\u00020\u00162\u0006\u0010k\u001a\u00020\u0008H\u0016J\u0010\u0010l\u001a\u00020\u00162\u0006\u0010m\u001a\u00020\u0008H\u0016J\u0010\u0010n\u001a\u00020\u00162\u0006\u0010o\u001a\u00020\u0008H\u0016J\u0010\u0010p\u001a\u00020\u00162\u0006\u0010q\u001a\u00020\u0008H\u0016J\u0010\u0010r\u001a\u0002042\u0006\u0010\u0017\u001a\u00020\u0008H\u0016JH\u0010s\u001a\u00020\u00162\u0006\u0010V\u001a\u00020\u00082\u0006\u0010W\u001a\u00020\u00082\u0006\u0010X\u001a\u00020\u00082\u0006\u0010Y\u001a\u00020\u00082\u0006\u0010Z\u001a\u00020\u00082\u0006\u0010P\u001a\u00020\u00082\u0006\u0010[\u001a\u00020\u00082\u0006\u0010\\\u001a\u00020\u0008H\u0016J\u0010\u0010t\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u001eH\u0016J\u0018\u0010u\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0008H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006v"
    }
    d2 = {
        "Lco/tamara/sdk/TamaraPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "Lco/tamara/sdk/Tamara;",
        "()V",
        "CHANNEL",
        "",
        "_result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "activity",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "setActivity",
        "(Landroid/app/Activity;)V",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "context",
        "Landroid/content/Context;",
        "addCustomFieldsAdditionalData",
        "",
        "jsonData",
        "addItem",
        "name",
        "referenceId",
        "sku",
        "type",
        "unitPrice",
        "",
        "tax",
        "discount",
        "quantity",
        "",
        "authoriseOrder",
        "orderId",
        "cancelOrder",
        "checkPaymentOptions",
        "clearItem",
        "createOrder",
        "orderReferenceId",
        "description",
        "getCapturePayment",
        "getOrderDetail",
        "init",
        "authToken",
        "apiUrl",
        "notificationWebHook",
        "publishKey",
        "notificationToken",
        "isSanbox",
        "",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAttachedToActivity",
        "binding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToEngine",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "onReattachedToActivityForConfigChanges",
        "paymentCheckout",
        "checkOutUrl",
        "successCallbackUrl",
        "failureCallbackUrl",
        "cancelCallbackUrl",
        "paymentOrder",
        "refunds",
        "renderCartPage",
        "language",
        "country",
        "publicKey",
        "amount",
        "renderProduct",
        "setAdditionalData",
        "setBillingAddress",
        "firstName",
        "lastName",
        "phoneNumber",
        "addressLine1",
        "addressLine2",
        "region",
        "city",
        "setCountry",
        "countryCode",
        "currency",
        "setCurrency",
        "newCurrency",
        "setCustomerInfo",
        "email",
        "isFirstOrder",
        "setDiscount",
        "setExpiresInMinutes",
        "expiresInMinutes",
        "setInstalments",
        "instalments",
        "setLocale",
        "locale",
        "setOrderNumber",
        "orderNumber",
        "setPaymentType",
        "paymentType",
        "setPlatform",
        "platform",
        "setRiskAssessment",
        "setShippingAddress",
        "setShippingAmount",
        "updateOrderReference",
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
.field private final CHANNEL:Ljava/lang/String;

.field private _result:Lio/flutter/plugin/common/MethodChannel$Result;

.field private activity:Landroid/app/Activity;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$rLC402gF1HESglF5Wtgadi2T090(Lco/tamara/sdk/TamaraPlugin;Lco/tamara/sdk/model/response/AuthoriseOrder;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/TamaraPlugin;->onActivityResult$lambda$0(Lco/tamara/sdk/TamaraPlugin;Lco/tamara/sdk/model/response/AuthoriseOrder;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "co.tamara.sdk"

    iput-object v0, p0, Lco/tamara/sdk/TamaraPlugin;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method private static final onActivityResult$lambda$0(Lco/tamara/sdk/TamaraPlugin;Lco/tamara/sdk/model/response/AuthoriseOrder;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_0

    const-string p0, "_result"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCustomFieldsAdditionalData(Ljava/lang/String;)V
    .locals 0

    const-string p0, "jsonData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->addCustomFieldsAdditionalData(Ljava/lang/String;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDI)V
    .locals 13

    const-string v0, "name"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v1, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lco/tamara/sdk/TamaraPayment$Companion;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDI)V

    return-void
.end method

.method public authoriseOrder(Ljava/lang/String;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->authoriseOrder(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public cancelOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, p2}, Lco/tamara/sdk/TamaraPayment$Companion;->cancelOrder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkPaymentOptions(Ljava/lang/String;)V
    .locals 1

    const-string v0, "jsonData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->checkPaymentOptions(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public clearItem()V
    .locals 0

    .line 394
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0}, Lco/tamara/sdk/TamaraPayment$Companion;->clearItem()V

    return-void
.end method

.method public createOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "orderReferenceId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "description"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/TamaraPayment$Companion;->createOrder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public getCapturePayment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "jsonData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->getCapturePayment(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public getOrderDetail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->getOrderDetail(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-string p0, "authToken"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "apiUrl"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "notificationWebHook"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "publishKey"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "notificationToken"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lco/tamara/sdk/TamaraPayment$Companion;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    const/16 v0, 0x65

    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 398
    const-string v3, "_result"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_24

    .line 540
    :pswitch_0
    sget-object v5, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 541
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v4

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 543
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 544
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Check payment availability error"

    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_24

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    goto/16 :goto_24

    .line 546
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 547
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getPaymentOptions(Landroid/content/Intent;)Lco/tamara/sdk/model/response/PaymentOptionsResponse;

    move-result-object p1

    .line 548
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v4, p0

    :goto_2
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 523
    :pswitch_1
    sget-object v3, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v3, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 524
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 525
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    goto :goto_3

    .line 526
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 527
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "Authorise order error"

    :cond_8
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_24

    :cond_9
    :goto_3
    if-nez v4, :cond_a

    goto/16 :goto_24

    .line 529
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 530
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getAuthoriseOrder(Landroid/content/Intent;)Lco/tamara/sdk/model/response/AuthoriseOrder;

    move-result-object p1

    .line 531
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lco/tamara/sdk/TamaraPlugin$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lco/tamara/sdk/TamaraPlugin$$ExternalSyntheticLambda0;-><init>(Lco/tamara/sdk/TamaraPlugin;Lco/tamara/sdk/model/response/AuthoriseOrder;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_24

    .line 509
    :pswitch_2
    sget-object v5, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 510
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 511
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :cond_b
    move-object p2, v4

    :goto_4
    if-nez p2, :cond_c

    goto :goto_5

    .line 512
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_e

    .line 513
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    const-string p1, "Cancel order error"

    :cond_d
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_24

    :cond_e
    :goto_5
    if-nez p2, :cond_f

    goto/16 :goto_24

    .line 515
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 516
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getCancelOrder(Landroid/content/Intent;)Lco/tamara/sdk/model/response/CancelOrderResponse;

    move-result-object p1

    .line 517
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    move-object v4, p0

    :goto_6
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 494
    :pswitch_3
    sget-object v5, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 495
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 496
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_7

    :cond_11
    move-object p2, v4

    :goto_7
    if-nez p2, :cond_12

    goto :goto_8

    .line 497
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_14

    .line 498
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    const-string p1, "Product error"

    :cond_13
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_24

    :cond_14
    :goto_8
    if-nez p2, :cond_15

    goto/16 :goto_24

    .line 500
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 501
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getProduct(Landroid/content/Intent;)Lco/tamara/sdk/model/response/Product;

    move-result-object p1

    .line 502
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    move-object v4, p0

    :goto_9
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 479
    :pswitch_4
    sget-object v5, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 480
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 481
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_a

    :cond_17
    move-object p2, v4

    :goto_a
    if-nez p2, :cond_18

    goto :goto_b

    .line 482
    :cond_18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_1a

    .line 483
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    const-string p1, "Cart page error"

    :cond_19
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_24

    :cond_1a
    :goto_b
    if-nez p2, :cond_1b

    goto/16 :goto_24

    .line 485
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 486
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getCartPage(Landroid/content/Intent;)Lco/tamara/sdk/model/response/CartPage;

    move-result-object p1

    .line 487
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_1c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_c

    :cond_1c
    move-object v4, p0

    :goto_c
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 464
    :pswitch_5
    sget-object v5, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 465
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 466
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_d

    :cond_1d
    move-object p2, v4

    :goto_d
    if-nez p2, :cond_1e

    goto :goto_e

    .line 467
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_20

    .line 468
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    const-string p1, "Order Reference error"

    :cond_1f
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_24

    :cond_20
    :goto_e
    if-nez p2, :cond_21

    goto/16 :goto_24

    .line 470
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 471
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getOrderReference(Landroid/content/Intent;)Lco/tamara/sdk/model/response/OrderReference;

    move-result-object p1

    .line 472
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_22

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_f

    :cond_22
    move-object v4, p0

    :goto_f
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 449
    :pswitch_6
    sget-object v5, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 450
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 451
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_10

    :cond_23
    move-object p2, v4

    :goto_10
    if-nez p2, :cond_24

    goto :goto_13

    .line 452
    :cond_24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_28

    .line 453
    iget-object p2, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Refunds error"

    if-nez p3, :cond_25

    move-object p3, v0

    :cond_25
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p2, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 454
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_26

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_11

    :cond_26
    move-object v4, p0

    :goto_11
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_27

    goto :goto_12

    :cond_27
    move-object v0, p0

    :goto_12
    invoke-interface {v4, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    :cond_28
    :goto_13
    if-nez p2, :cond_29

    goto/16 :goto_24

    .line 456
    :cond_29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 457
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getDataRefunds(Landroid/content/Intent;)Lco/tamara/sdk/model/response/RefundsResponse;

    move-result-object p1

    .line 458
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_2a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_14

    :cond_2a
    move-object v4, p0

    :goto_14
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 434
    :pswitch_7
    sget-object v5, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 435
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 436
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_15

    :cond_2b
    move-object p2, v4

    :goto_15
    if-nez p2, :cond_2c

    goto :goto_18

    .line 437
    :cond_2c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_30

    .line 438
    iget-object p2, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Capture Payment error"

    if-nez p3, :cond_2d

    move-object p3, v0

    :cond_2d
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p2, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 439
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_2e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_16

    :cond_2e
    move-object v4, p0

    :goto_16
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2f

    goto :goto_17

    :cond_2f
    move-object v0, p0

    :goto_17
    invoke-interface {v4, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    :cond_30
    :goto_18
    if-nez p2, :cond_31

    goto/16 :goto_24

    .line 441
    :cond_31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 442
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getDataCapturePayment(Landroid/content/Intent;)Lco/tamara/sdk/model/response/CapturePayment;

    move-result-object p1

    .line 443
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_32

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_19

    :cond_32
    move-object v4, p0

    :goto_19
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 419
    :pswitch_8
    sget-object v5, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 420
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/InformationResult;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 421
    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1a

    :cond_33
    move-object p2, v4

    :goto_1a
    if-nez p2, :cond_34

    goto :goto_1b

    .line 422
    :cond_34
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_36

    .line 423
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/InformationResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_35

    const-string p1, "Order Detail error"

    :cond_35
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_24

    :cond_36
    :goto_1b
    if-nez p2, :cond_37

    goto/16 :goto_24

    .line 425
    :cond_37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_44

    .line 426
    sget-object p1, Lco/tamara/sdk/TamaraInformationHelper;->Companion:Lco/tamara/sdk/TamaraInformationHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraInformationHelper$Companion;->getDataOrderDetail(Landroid/content/Intent;)Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    move-result-object p1

    .line 427
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_38

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1c

    :cond_38
    move-object v4, p0

    :goto_1c
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 400
    :pswitch_9
    sget-object v5, Lco/tamara/sdk/TamaraPaymentHelper;->Companion:Lco/tamara/sdk/TamaraPaymentHelper$Companion;

    invoke-virtual {v5, p1, p2, p3}, Lco/tamara/sdk/TamaraPaymentHelper$Companion;->shouldHandleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 401
    sget-object p1, Lco/tamara/sdk/TamaraPaymentHelper;->Companion:Lco/tamara/sdk/TamaraPaymentHelper$Companion;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraPaymentHelper$Companion;->getData(Landroid/content/Intent;)Lco/tamara/sdk/PaymentResult;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 402
    invoke-virtual {p1}, Lco/tamara/sdk/PaymentResult;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1d

    :cond_39
    move-object p2, v4

    :goto_1d
    if-nez p2, :cond_3a

    goto :goto_1f

    .line 403
    :cond_3a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_3c

    .line 404
    iget-object p1, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p1, :cond_3b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1e

    :cond_3b
    move-object v4, p1

    :goto_1e
    const-string p1, "Payment canceled"

    invoke-interface {v4, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 405
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_24

    :cond_3c
    :goto_1f
    if-nez p2, :cond_3d

    goto :goto_22

    .line 407
    :cond_3d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x66

    if-ne v1, v5, :cond_41

    .line 408
    iget-object p2, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p2, :cond_3e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_20

    :cond_3e
    move-object v4, p2

    :goto_20
    invoke-virtual {p1}, Lco/tamara/sdk/PaymentResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Payment error"

    if-nez p2, :cond_3f

    move-object p2, p3

    :cond_3f
    invoke-interface {v4, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 409
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1}, Lco/tamara/sdk/PaymentResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_40

    goto :goto_21

    :cond_40
    move-object p3, p1

    :goto_21
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p0, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_24

    :cond_41
    :goto_22
    if-nez p2, :cond_42

    goto :goto_24

    .line 411
    :cond_42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_44

    .line 412
    sget-object p1, Lco/tamara/sdk/TamaraPaymentHelper;->Companion:Lco/tamara/sdk/TamaraPaymentHelper$Companion;

    invoke-virtual {p1, p3}, Lco/tamara/sdk/TamaraPaymentHelper$Companion;->checkOutSession(Landroid/content/Intent;)Lco/tamara/sdk/model/response/CheckoutSession;

    move-result-object p1

    .line 413
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p0, :cond_43

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_23

    :cond_43
    move-object v4, p0

    :goto_23
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_44
    :goto_24
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5b12
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 560
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    iget-object v2, p0, Lco/tamara/sdk/TamaraPlugin;->CHANNEL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lco/tamara/sdk/TamaraPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 26
    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 27
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lco/tamara/sdk/TamaraPlugin;->context:Landroid/content/Context;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 572
    iput-object v0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "channel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "call"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "result"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v3, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "city"

    const-string v6, "region"

    const-string v7, "addressLine2"

    const-string v8, "addressLine1"

    const-string v9, "publicKey"

    const-string v10, "language"

    const-string v11, "orderReferenceId"

    const-string v12, "name"

    const-string v13, "phoneNumber"

    const-string v14, "lastName"

    const-string v15, "firstName"

    move-object/from16 v16, v9

    const-string v9, "jsonData"

    move-object/from16 v17, v10

    const-string v10, "country"

    move-object/from16 v18, v12

    const-string v12, "amount"

    move-object/from16 v19, v11

    const-string v11, "orderId"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "setAdditionalData"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 103
    :cond_0
    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setAdditionalData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_1
    const-string v2, "initSdk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 37
    :cond_1
    const-string v2, "authToken"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    const-string v3, "apiUrl"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 39
    const-string v4, "notificationWebHook"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 40
    const-string v5, "publishKey"

    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 41
    const-string v6, "notificationToken"

    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 42
    const-string v7, "isSandbox"

    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 43
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Lco/tamara/sdk/TamaraPlugin;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 35
    :sswitch_2
    const-string v2, "setShippingAmount"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 156
    :cond_2
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 157
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lco/tamara/sdk/TamaraPlugin;->setShippingAmount(D)V

    goto/16 :goto_0

    .line 35
    :sswitch_3
    const-string v4, "capturePayment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 59
    :cond_3
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 60
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->getCapturePayment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_4
    const-string v2, "setShippingAddress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    .line 130
    :cond_4
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    invoke-virtual {v1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 134
    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 135
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 136
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 138
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v8

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lco/tamara/sdk/TamaraPlugin;->setShippingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_5
    const-string v4, "orderDetail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    .line 54
    :cond_5
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 55
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->getOrderDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_6
    const-string v4, "refunds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 174
    :cond_6
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 175
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lco/tamara/sdk/TamaraPlugin;->refunds(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_7
    const-string v4, "checkPaymentOptions"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 169
    :cond_7
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 170
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->checkPaymentOptions(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_8
    const-string v2, "setLocale"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 86
    :cond_8
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setLocale(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_9
    const-string v2, "setPaymentType"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    .line 74
    :cond_9
    const-string v2, "paymentType"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setPaymentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_a
    const-string v2, "setInstalments"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    .line 82
    :cond_a
    const-string v2, "instalments"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 83
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setInstalments(I)V

    goto/16 :goto_0

    .line 35
    :sswitch_b
    const-string v2, "setCountry"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 69
    :cond_b
    const-string v2, "countryCode"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    const-string v3, "currency"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lco/tamara/sdk/TamaraPlugin;->setCountry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_c
    const-string v2, "setPlatform"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    .line 78
    :cond_c
    const-string v2, "platfm"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setPlatform(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_d
    const-string v2, "setBillingAddress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    .line 141
    :cond_d
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-virtual {v1, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    invoke-virtual {v1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 145
    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 149
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v8

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lco/tamara/sdk/TamaraPlugin;->setBillingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_e
    const-string v2, "createOrder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    move-object/from16 v4, v19

    .line 64
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    const-string v3, "description"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lco/tamara/sdk/TamaraPlugin;->createOrder(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_f
    const-string v1, "paymentOrder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    .line 165
    :cond_f
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 166
    invoke-virtual/range {p0 .. p0}, Lco/tamara/sdk/TamaraPlugin;->paymentOrder()V

    goto/16 :goto_0

    .line 35
    :sswitch_10
    const-string v2, "addCustomFieldsAdditionalData"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    .line 107
    :cond_10
    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->addCustomFieldsAdditionalData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_11
    const-string v2, "setCustomerInfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 111
    :cond_11
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 114
    const-string v5, "email"

    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 115
    const-string v6, "isFirstOrder"

    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 116
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lco/tamara/sdk/TamaraPlugin;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 35
    :sswitch_12
    const-string v2, "startPayment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    .line 47
    :cond_12
    const-string v2, "checkoutUrl"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    const-string v3, "successCallbackUrl"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    const-string v4, "failureCallbackUrl"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    const-string v5, "cancelCallbackUrl"

    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3, v4, v1}, Lco/tamara/sdk/TamaraPlugin;->paymentCheckout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_13
    const-string v2, "setOrderNumber"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    .line 90
    :cond_13
    const-string v2, "orderNumber"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setOrderNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_14
    const-string v4, "setRiskAssessment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    .line 98
    :cond_14
    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setRiskAssessment(Ljava/lang/String;)Z

    move-result v0

    .line 100
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 35
    :sswitch_15
    const-string v2, "addItem"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    move-object/from16 v2, v18

    .line 119
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    const-string v3, "referenceId"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    const-string v4, "sku"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    const-string/jumbo v5, "type"

    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    const-string/jumbo v6, "unitPrice"

    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 124
    const-string/jumbo v7, "tax"

    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    .line 125
    const-string v8, "discount"

    invoke-virtual {v1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 126
    const-string v9, "quantity"

    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 127
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v9

    move-wide v7, v11

    move-wide v9, v13

    move v11, v15

    invoke-virtual/range {v0 .. v11}, Lco/tamara/sdk/TamaraPlugin;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDI)V

    goto/16 :goto_0

    .line 35
    :sswitch_16
    const-string v4, "renderProduct"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    .line 200
    :cond_16
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    move-object/from16 v4, v17

    .line 201
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v5, v16

    .line 203
    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 204
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 205
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lco/tamara/sdk/TamaraPlugin;->renderProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 35
    :sswitch_17
    const-string v1, "clearItem"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    .line 213
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lco/tamara/sdk/TamaraPlugin;->clearItem()V

    goto/16 :goto_0

    .line 35
    :sswitch_18
    const-string v4, "cancelOrder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_0

    .line 180
    :cond_18
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 181
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lco/tamara/sdk/TamaraPlugin;->cancelOrder(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_19
    const-string v2, "setCurrency"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    .line 152
    :cond_19
    const-string v2, "newCurrency"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setCurrency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :sswitch_1a
    const-string v4, "authoriseOrder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_0

    .line 208
    :cond_1a
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 209
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->authoriseOrder(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v5, v16

    move-object/from16 v4, v17

    .line 35
    const-string v6, "renderCartPage"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_0

    .line 192
    :cond_1b
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 193
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 196
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 197
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lco/tamara/sdk/TamaraPlugin;->renderCartPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0

    :sswitch_1c
    move-object/from16 v4, v19

    .line 35
    const-string/jumbo v5, "updateOrderReference"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_0

    .line 186
    :cond_1c
    iput-object v2, v0, Lco/tamara/sdk/TamaraPlugin;->_result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 187
    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lco/tamara/sdk/TamaraPlugin;->updateOrderReference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1d
    move-object/from16 v2, v18

    .line 35
    const-string v4, "setDiscount"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_0

    .line 160
    :cond_1d
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 161
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3, v1}, Lco/tamara/sdk/TamaraPlugin;->setDiscount(DLjava/lang/String;)V

    goto :goto_0

    .line 35
    :sswitch_1e
    const-string v2, "setExpiresInMinutes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_0

    .line 94
    :cond_1e
    const-string v2, "expiresInMinutes"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 95
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lco/tamara/sdk/TamaraPlugin;->setExpiresInMinutes(I)V

    :cond_1f
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cb42c58 -> :sswitch_1e
        -0x7924ec3d -> :sswitch_1d
        -0x73105f3a -> :sswitch_1c
        -0x6e308e7b -> :sswitch_1b
        -0x6dab85e2 -> :sswitch_1a
        -0x6721716d -> :sswitch_19
        -0x5e8f9b0c -> :sswitch_18
        -0x4bc54900 -> :sswitch_17
        -0x478fb187 -> :sswitch_16
        -0x447ad0ac -> :sswitch_15
        -0x3b67440d -> :sswitch_14
        -0x3710298b -> :sswitch_13
        -0x36e74cbc -> :sswitch_12
        -0x331f38d2 -> :sswitch_11
        -0x2e1441e4 -> :sswitch_10
        -0x1e814718 -> :sswitch_f
        -0x1e4dcc4e -> :sswitch_e
        -0x1d6f6a05 -> :sswitch_d
        -0x19aff90b -> :sswitch_c
        -0x15aa1f2c -> :sswitch_b
        -0xfeab93e -> :sswitch_a
        0x146b7c9e -> :sswitch_9
        0x16e2655c -> :sswitch_8
        0x3fbefce0 -> :sswitch_7
        0x40b40ffb -> :sswitch_6
        0x46c5593f -> :sswitch_5
        0x6257a1a4 -> :sswitch_4
        0x69f967e0 -> :sswitch_3
        0x6f0ad4a8 -> :sswitch_2
        0x7421050a -> :sswitch_1
        0x7c792573 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method public paymentCheckout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "checkOutUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCallbackUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failureCallbackUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelCallbackUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget-object v1, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object v2, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lco/tamara/sdk/TamaraPayment$Companion;->startPayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public paymentOrder()V
    .locals 1

    .line 352
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lco/tamara/sdk/TamaraPayment$Companion;->startPayment(Landroid/app/Activity;)V

    return-void
.end method

.method public refunds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, p2}, Lco/tamara/sdk/TamaraPayment$Companion;->refunds(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renderCartPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 8

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    sget-object v1, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object v2, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lco/tamara/sdk/TamaraPayment$Companion;->renderWidgetCartPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public renderProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 8

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    sget-object v1, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object v2, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lco/tamara/sdk/TamaraPayment$Companion;->renderWidgetProduct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setAdditionalData(Ljava/lang/String;)V
    .locals 0

    const-string p0, "jsonData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->setAdditionalData(Ljava/lang/String;)V

    return-void
.end method

.method public setBillingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "firstName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressLine1"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressLine2"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    sget-object v1, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual/range {v1 .. v9}, Lco/tamara/sdk/TamaraPayment$Companion;->setBillingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCountry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "countryCode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "currency"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/TamaraPayment$Companion;->setCountry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    const-string p0, "newCurrency"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->setCurrency(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-string p0, "firstName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lastName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "phoneNumber"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "email"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lco/tamara/sdk/TamaraPayment$Companion;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setDiscount(DLjava/lang/String;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1, p2, p3}, Lco/tamara/sdk/TamaraPayment$Companion;->setDiscount(DLjava/lang/String;)V

    return-void
.end method

.method public setExpiresInMinutes(I)V
    .locals 0

    .line 275
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->setExpiresInMinutes(I)V

    return-void
.end method

.method public setInstalments(I)V
    .locals 0

    .line 263
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->setInstalments(I)V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    const-string p0, "locale"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->setLocale(Ljava/lang/String;)V

    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0

    const-string p0, "orderNumber"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->setOrderNumber(Ljava/lang/String;)V

    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .locals 0

    const-string p0, "paymentType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->setPaymentType(Ljava/lang/String;)V

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    const-string p0, "platform"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPayment$Companion;->setPlatform(Ljava/lang/String;)V

    return-void
.end method

.method public setRiskAssessment(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "jsonData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p0}, Lco/tamara/sdk/TamaraPayment$Companion;->setRiskAssessment(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public setShippingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "firstName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressLine1"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressLine2"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    sget-object v1, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual/range {v1 .. v9}, Lco/tamara/sdk/TamaraPayment$Companion;->setShippingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShippingAmount(D)V
    .locals 0

    .line 344
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/TamaraPayment$Companion;->setShippingAmount(D)V

    return-void
.end method

.method public updateOrderReference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderReferenceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    iget-object p0, p0, Lco/tamara/sdk/TamaraPlugin;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, p2}, Lco/tamara/sdk/TamaraPayment$Companion;->updateOrderReference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
