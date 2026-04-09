.class public final Lio/flutter/plugins/pay_android/GooglePayHandler;
.super Ljava/lang/Object;
.source "GooglePayHandler.kt"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGooglePayHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GooglePayHandler.kt\nio/flutter/plugins/pay_android/GooglePayHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1#2:241\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u0016\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J2\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u001a\u0010\u0013\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00150\u0014J\"\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lio/flutter/plugins/pay_android/GooglePayHandler;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "loadPaymentDataResult",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "handleError",
        "",
        "statusCode",
        "",
        "handlePaymentSuccess",
        "paymentData",
        "Lcom/google/android/gms/wallet/PaymentData;",
        "isReadyToPay",
        "result",
        "paymentProfileString",
        "",
        "loadPaymentData",
        "paymentItems",
        "",
        "",
        "",
        "onActivityResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "paymentClientForProfile",
        "Lcom/google/android/gms/wallet/PaymentsClient;",
        "paymentProfile",
        "Lorg/json/JSONObject;",
        "Companion",
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


# static fields
.field public static final Companion:Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private loadPaymentDataResult:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public static synthetic $r8$lambda$9olN_nIarK2YxB7KPZ0H1NGkm2Y(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lio/flutter/plugins/pay_android/GooglePayHandler;->isReadyToPay$lambda$0(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/flutter/plugins/pay_android/GooglePayHandler;->Companion:Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/pay_android/GooglePayHandler;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static final buildPaymentProfile(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/flutter/plugins/pay_android/GooglePayHandler;->Companion:Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;->buildPaymentProfile(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private final handleError(I)V
    .locals 2

    .line 238
    iget-object p0, p0, Lio/flutter/plugins/pay_android/GooglePayHandler;->loadPaymentDataResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final handlePaymentSuccess(Lcom/google/android/gms/wallet/PaymentData;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 216
    iget-object p0, p0, Lio/flutter/plugins/pay_android/GooglePayHandler;->loadPaymentDataResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wallet/PaymentData;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/pay_android/GooglePayHandler;->loadPaymentDataResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    const-string p1, "Unexpected empty result data."

    const/4 v0, 0x0

    .line 218
    const-string v1, "8"

    invoke-interface {p0, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final isReadyToPay$lambda$0(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completedTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    sget-object v0, Lio/flutter/plugins/pay_android/util/PaymentsUtil;->INSTANCE:Lio/flutter/plugins/pay_android/util/PaymentsUtil;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/pay_android/util/PaymentsUtil;->statusCodeForException(Ljava/lang/Exception;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 131
    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final paymentClientForProfile(Lorg/json/JSONObject;)Lcom/google/android/gms/wallet/PaymentsClient;
    .locals 2

    .line 97
    sget-object v0, Lio/flutter/plugins/pay_android/util/PaymentsUtil;->INSTANCE:Lio/flutter/plugins/pay_android/util/PaymentsUtil;

    .line 98
    const-string v1, "environment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/pay_android/util/PaymentsUtil;->environmentForString(Ljava/lang/String;)I

    move-result p1

    .line 101
    iget-object p0, p0, Lio/flutter/plugins/pay_android/GooglePayHandler;->activity:Landroid/app/Activity;

    .line 102
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    .line 103
    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object p1

    .line 100
    invoke-static {p0, p1}, Lcom/google/android/gms/wallet/Wallet;->getPaymentsClient(Landroid/app/Activity;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p0

    const-string p1, "getPaymentsClient(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final isReadyToPay(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentProfileString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lio/flutter/plugins/pay_android/GooglePayHandler;->Companion:Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p2, v1, v2, v1}, Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;->buildPaymentProfile$default(Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lio/flutter/plugins/pay_android/GooglePayHandler;->paymentClientForProfile(Lorg/json/JSONObject;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p0

    .line 125
    invoke-static {p2}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    move-result-object p2

    const-string v0, "fromJson(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/google/android/gms/wallet/PaymentsClient;->isReadyToPay(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    const-string p2, "isReadyToPay(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance p2, Lio/flutter/plugins/pay_android/GooglePayHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lio/flutter/plugins/pay_android/GooglePayHandler$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final loadPaymentData(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentProfileString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentItems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lio/flutter/plugins/pay_android/GooglePayHandler;->loadPaymentDataResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 160
    sget-object p1, Lio/flutter/plugins/pay_android/GooglePayHandler;->Companion:Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;

    invoke-virtual {p1, p2, p3}, Lio/flutter/plugins/pay_android/GooglePayHandler$Companion;->buildPaymentProfile(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Lio/flutter/plugins/pay_android/GooglePayHandler;->paymentClientForProfile(Lorg/json/JSONObject;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p2

    .line 162
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/wallet/PaymentDataRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentDataRequest;

    move-result-object p1

    const-string p3, "fromJson(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2, p1}, Lcom/google/android/gms/wallet/PaymentsClient;->loadPaymentData(Lcom/google/android/gms/wallet/PaymentDataRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 165
    iget-object p0, p0, Lio/flutter/plugins/pay_android/GooglePayHandler;->activity:Landroid/app/Activity;

    const/16 p2, 0x3df

    .line 163
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/wallet/AutoResolveHelper;->resolveTask(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    const/16 v0, 0x3df

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/wallet/AutoResolveHelper;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-direct {p0, p1}, Lio/flutter/plugins/pay_android/GooglePayHandler;->handleError(I)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object p0, p0, Lio/flutter/plugins/pay_android/GooglePayHandler;->loadPaymentDataResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 188
    const-string p1, "User canceled payment authorization"

    const/4 p2, 0x0

    .line 186
    const-string p3, "paymentCanceled"

    invoke-interface {p0, p3, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_2

    .line 180
    invoke-static {p3}, Lcom/google/android/gms/wallet/PaymentData;->getFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/wallet/PaymentData;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/plugins/pay_android/GooglePayHandler;->handlePaymentSuccess(Lcom/google/android/gms/wallet/PaymentData;)V

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method
