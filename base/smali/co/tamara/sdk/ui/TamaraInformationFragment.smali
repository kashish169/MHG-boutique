.class public final Lco/tamara/sdk/ui/TamaraInformationFragment;
.super Landroidx/fragment/app/Fragment;
.source "TamaraInformationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/ui/TamaraInformationFragment$Companion;,
        Lco/tamara/sdk/ui/TamaraInformationFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J$\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u001c\u001a\u00020\u0012H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lco/tamara/sdk/ui/TamaraInformationFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "binding",
        "Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;",
        "cancelOrder",
        "Lco/tamara/sdk/model/request/CancelOrder;",
        "capturePayment",
        "Lco/tamara/sdk/model/request/CapturePaymentRequest;",
        "orderReference",
        "Lco/tamara/sdk/model/request/OrderReference;",
        "paymentOptions",
        "Lco/tamara/sdk/model/request/PaymentOptions;",
        "paymentRefund",
        "Lco/tamara/sdk/model/request/PaymentRefund;",
        "viewModel",
        "Lco/tamara/sdk/ui/TamaraInformationViewModel;",
        "hideLoading",
        "",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "showLoading",
        "Companion",
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


# static fields
.field public static final ARG_CANCEL:Ljava/lang/String; = "cancel_order"

.field public static final ARG_CAPTURE:Ljava/lang/String; = "capture_payment"

.field public static final ARG_ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final ARG_PAYMENT_OPTIONS:Ljava/lang/String; = "payment_options"

.field public static final ARG_REFERENCE:Ljava/lang/String; = "reference"

.field public static final ARG_REFUNDS:Ljava/lang/String; = "refunds"

.field public static final ARG_TYPE:Ljava/lang/String; = "type"

.field public static final Companion:Lco/tamara/sdk/ui/TamaraInformationFragment$Companion;


# instance fields
.field private binding:Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;

.field private cancelOrder:Lco/tamara/sdk/model/request/CancelOrder;

.field private capturePayment:Lco/tamara/sdk/model/request/CapturePaymentRequest;

.field private orderReference:Lco/tamara/sdk/model/request/OrderReference;

.field private paymentOptions:Lco/tamara/sdk/model/request/PaymentOptions;

.field private paymentRefund:Lco/tamara/sdk/model/request/PaymentRefund;

.field private viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;


# direct methods
.method public static synthetic $r8$lambda$0wTnOpyk8Jp5zl4WjuaWGgjnCqc(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/ui/TamaraInformationFragment;->onActivityCreated$lambda$13$lambda$0(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$91zFKVPBY42PKOSlKZROSuikKR4(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/ui/TamaraInformationFragment;->onActivityCreated$lambda$13$lambda$4$lambda$3(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bzn369MFMhgTWrvjNQTcfhD9tzM(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/ui/TamaraInformationFragment;->onActivityCreated$lambda$13$lambda$2$lambda$1(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y7OCDzKd1QBCTm_4CaHeBGhfZTc(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/ui/TamaraInformationFragment;->onActivityCreated$lambda$13$lambda$12$lambda$11(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jZwR6Os2aJpNn25-sHYpCp7oAmE(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/ui/TamaraInformationFragment;->onActivityCreated$lambda$13$lambda$8$lambda$7(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$saLYne7NwbDO9OIPC5ZfiFmsJ8A(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/ui/TamaraInformationFragment;->onActivityCreated$lambda$13$lambda$10$lambda$9(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vwJ92eELDFBG-CPQt5JW7-ufDX0(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/ui/TamaraInformationFragment;->onActivityCreated$lambda$13$lambda$6$lambda$5(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/ui/TamaraInformationFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/ui/TamaraInformationFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/ui/TamaraInformationFragment;->Companion:Lco/tamara/sdk/ui/TamaraInformationFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final hideLoading()V
    .locals 1

    .line 273
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->binding:Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private static final onActivityCreated$lambda$13$lambda$0(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getStatus()Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sget-object v1, Lco/tamara/sdk/ui/TamaraInformationFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "INFORMATION_RESULT"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 93
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    new-instance v1, Lco/tamara/sdk/error/PaymentError;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1}, Lco/tamara/sdk/InformationResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 83
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    .line 85
    sget-object v1, Lco/tamara/sdk/const/Information;->ORDER_DETAIL:Lco/tamara/sdk/const/Information;

    invoke-virtual {v1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 88
    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 79
    :cond_4
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->showLoading()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final onActivityCreated$lambda$13$lambda$10$lambda$9(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getStatus()Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sget-object v1, Lco/tamara/sdk/ui/TamaraInformationFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "INFORMATION_RESULT"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 226
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    new-instance v1, Lco/tamara/sdk/error/PaymentError;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1}, Lco/tamara/sdk/InformationResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object p1

    .line 227
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 228
    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 215
    :cond_2
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 216
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/model/response/AuthoriseOrder;

    .line 218
    sget-object v1, Lco/tamara/sdk/const/Information;->AUTHORISE:Lco/tamara/sdk/const/Information;

    invoke-virtual {v1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 221
    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 212
    :cond_4
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->showLoading()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final onActivityCreated$lambda$13$lambda$12$lambda$11(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getStatus()Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sget-object v1, Lco/tamara/sdk/ui/TamaraInformationFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "INFORMATION_RESULT"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 253
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    new-instance v1, Lco/tamara/sdk/error/PaymentError;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1}, Lco/tamara/sdk/InformationResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object p1

    .line 254
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 255
    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 242
    :cond_2
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 243
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/model/response/PaymentOptionsResponse;

    .line 245
    sget-object v1, Lco/tamara/sdk/const/Information;->PAYMENT_OPTIONS:Lco/tamara/sdk/const/Information;

    invoke-virtual {v1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 239
    :cond_4
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->showLoading()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final onActivityCreated$lambda$13$lambda$2$lambda$1(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getStatus()Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sget-object v1, Lco/tamara/sdk/ui/TamaraInformationFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "INFORMATION_RESULT"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 118
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    new-instance v1, Lco/tamara/sdk/error/PaymentError;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1}, Lco/tamara/sdk/InformationResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 109
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    sget-object v1, Lco/tamara/sdk/const/Information;->CAPTURE_PAYMENT:Lco/tamara/sdk/const/Information;

    invoke-virtual {v1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 113
    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 105
    :cond_4
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->showLoading()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final onActivityCreated$lambda$13$lambda$4$lambda$3(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getStatus()Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sget-object v1, Lco/tamara/sdk/ui/TamaraInformationFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "INFORMATION_RESULT"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 145
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    new-instance v1, Lco/tamara/sdk/error/PaymentError;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1}, Lco/tamara/sdk/InformationResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object p1

    .line 146
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 134
    :cond_2
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 135
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/model/response/RefundsResponse;

    .line 137
    sget-object v1, Lco/tamara/sdk/const/Information;->REFUNDS:Lco/tamara/sdk/const/Information;

    invoke-virtual {v1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 131
    :cond_4
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->showLoading()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final onActivityCreated$lambda$13$lambda$6$lambda$5(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getStatus()Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sget-object v1, Lco/tamara/sdk/ui/TamaraInformationFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "INFORMATION_RESULT"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 172
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    new-instance v1, Lco/tamara/sdk/error/PaymentError;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1}, Lco/tamara/sdk/InformationResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object p1

    .line 173
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 162
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/model/response/OrderReference;

    .line 164
    sget-object v1, Lco/tamara/sdk/const/Information;->REFERENCE:Lco/tamara/sdk/const/Information;

    invoke-virtual {v1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 167
    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 158
    :cond_4
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->showLoading()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final onActivityCreated$lambda$13$lambda$8$lambda$7(Lco/tamara/sdk/ui/TamaraInformationFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getStatus()Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sget-object v1, Lco/tamara/sdk/ui/TamaraInformationFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "INFORMATION_RESULT"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 199
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    new-instance v1, Lco/tamara/sdk/error/PaymentError;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1}, Lco/tamara/sdk/InformationResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object p1

    .line 200
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 201
    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->hideLoading()V

    .line 189
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/model/response/CancelOrderResponse;

    .line 191
    sget-object v1, Lco/tamara/sdk/const/Information;->CANCEL:Lco/tamara/sdk/const/Information;

    invoke-virtual {v1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 194
    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 185
    :cond_4
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->showLoading()V

    :cond_5
    :goto_0
    return-void
.end method

.method private final showLoading()V
    .locals 1

    .line 269
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->binding:Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lco/tamara/sdk/ui/TamaraInformationViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/ui/TamaraInformationViewModel;

    iput-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;

    .line 59
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 60
    const-string v0, "order_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    const-string v4, "capture_payment"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lco/tamara/sdk/model/request/CapturePaymentRequest;

    iput-object v5, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->capturePayment:Lco/tamara/sdk/model/request/CapturePaymentRequest;

    .line 63
    const-string v5, "refunds"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lco/tamara/sdk/model/request/PaymentRefund;

    iput-object v6, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->paymentRefund:Lco/tamara/sdk/model/request/PaymentRefund;

    .line 64
    const-string v6, "reference"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lco/tamara/sdk/model/request/OrderReference;

    iput-object v7, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->orderReference:Lco/tamara/sdk/model/request/OrderReference;

    .line 65
    const-string v7, "cancel_order"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lco/tamara/sdk/model/request/CancelOrder;

    iput-object v8, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->cancelOrder:Lco/tamara/sdk/model/request/CancelOrder;

    .line 66
    const-string v8, "payment_options"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lco/tamara/sdk/model/request/PaymentOptions;

    iput-object v9, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->paymentOptions:Lco/tamara/sdk/model/request/PaymentOptions;

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 75
    sget-object p1, Lco/tamara/sdk/const/Information;->ORDER_DETAIL:Lco/tamara/sdk/const/Information;

    invoke-virtual {p1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-string/jumbo v2, "viewModel"

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v0, v1}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->orderDetail(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda0;-><init>(Lco/tamara/sdk/ui/TamaraInformationFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto/16 :goto_7

    .line 100
    :cond_1
    sget-object p1, Lco/tamara/sdk/const/Information;->CAPTURE_PAYMENT:Lco/tamara/sdk/const/Information;

    invoke-virtual {p1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->capturePayment:Lco/tamara/sdk/model/request/CapturePaymentRequest;

    if-eqz p1, :cond_d

    .line 102
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->capturePayment:Lco/tamara/sdk/model/request/CapturePaymentRequest;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->getCapturePayment(Lco/tamara/sdk/model/request/CapturePaymentRequest;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda1;-><init>(Lco/tamara/sdk/ui/TamaraInformationFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto/16 :goto_7

    .line 126
    :cond_3
    sget-object p1, Lco/tamara/sdk/const/Information;->REFUNDS:Lco/tamara/sdk/const/Information;

    invoke-virtual {p1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 127
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->paymentRefund:Lco/tamara/sdk/model/request/PaymentRefund;

    if-eqz p1, :cond_d

    .line 128
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, p1

    :goto_2
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->paymentRefund:Lco/tamara/sdk/model/request/PaymentRefund;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->refunds(Ljava/lang/String;Lco/tamara/sdk/model/request/PaymentRefund;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda2;-><init>(Lco/tamara/sdk/ui/TamaraInformationFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto/16 :goto_7

    .line 153
    :cond_5
    sget-object p1, Lco/tamara/sdk/const/Information;->REFERENCE:Lco/tamara/sdk/const/Information;

    invoke-virtual {p1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 154
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->orderReference:Lco/tamara/sdk/model/request/OrderReference;

    if-eqz p1, :cond_d

    .line 155
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;

    if-nez p1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v0, p1

    :goto_3
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->orderReference:Lco/tamara/sdk/model/request/OrderReference;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->updateOrderReference(Ljava/lang/String;Lco/tamara/sdk/model/request/OrderReference;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda3;-><init>(Lco/tamara/sdk/ui/TamaraInformationFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto/16 :goto_7

    .line 180
    :cond_7
    sget-object p1, Lco/tamara/sdk/const/Information;->CANCEL:Lco/tamara/sdk/const/Information;

    invoke-virtual {p1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 181
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->cancelOrder:Lco/tamara/sdk/model/request/CancelOrder;

    if-eqz p1, :cond_d

    .line 182
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;

    if-nez p1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v0, p1

    :goto_4
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->cancelOrder:Lco/tamara/sdk/model/request/CancelOrder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->cancelOrder(Ljava/lang/String;Lco/tamara/sdk/model/request/CancelOrder;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda4;-><init>(Lco/tamara/sdk/ui/TamaraInformationFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_7

    .line 207
    :cond_9
    sget-object p1, Lco/tamara/sdk/const/Information;->AUTHORISE:Lco/tamara/sdk/const/Information;

    invoke-virtual {p1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz v1, :cond_d

    .line 209
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;

    if-nez p1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object v0, p1

    :goto_5
    invoke-virtual {v0, v1}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->authoriseOrder(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda5;-><init>(Lco/tamara/sdk/ui/TamaraInformationFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_7

    .line 234
    :cond_b
    sget-object p1, Lco/tamara/sdk/const/Information;->PAYMENT_OPTIONS:Lco/tamara/sdk/const/Information;

    invoke-virtual {p1}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 235
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->paymentOptions:Lco/tamara/sdk/model/request/PaymentOptions;

    if-eqz p1, :cond_d

    .line 236
    iget-object v1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->viewModel:Lco/tamara/sdk/ui/TamaraInformationViewModel;

    if-nez v1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    move-object v0, v1

    :goto_6
    invoke-virtual {v0, p1}, Lco/tamara/sdk/ui/TamaraInformationViewModel;->paymentOptions(Lco/tamara/sdk/model/request/PaymentOptions;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraInformationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraInformationFragment$$ExternalSyntheticLambda6;-><init>(Lco/tamara/sdk/ui/TamaraInformationFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 52
    invoke-static {p1, p2, p3}, Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationFragment;->binding:Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;

    if-nez p1, :cond_0

    .line 53
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lco/tamara/sdk/databinding/TamaraInformationFragmentBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
