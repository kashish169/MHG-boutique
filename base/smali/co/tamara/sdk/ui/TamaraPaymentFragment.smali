.class public final Lco/tamara/sdk/ui/TamaraPaymentFragment;
.super Landroidx/fragment/app/Fragment;
.source "TamaraPaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/ui/TamaraPaymentFragment$Companion;,
        Lco/tamara/sdk/ui/TamaraPaymentFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0002J\u0008\u0010\u0017\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lco/tamara/sdk/ui/TamaraPaymentFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "binding",
        "Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;",
        "checkoutSession",
        "Lco/tamara/sdk/model/response/CheckoutSession;",
        "order",
        "Lco/tamara/sdk/model/Order;",
        "viewModel",
        "Lco/tamara/sdk/ui/TamaraPaymentViewModel;",
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
        "processCheckout",
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
.field public static final ARG_CHECKOUT_SESSION:Ljava/lang/String; = "checkout_session"

.field public static final ARG_ORDER:Ljava/lang/String; = "order"

.field public static final ARG_PAYMENT_STATUS:Ljava/lang/String; = "payment_status"

.field public static final Companion:Lco/tamara/sdk/ui/TamaraPaymentFragment$Companion;


# instance fields
.field private binding:Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;

.field private checkoutSession:Lco/tamara/sdk/model/response/CheckoutSession;

.field private order:Lco/tamara/sdk/model/Order;

.field private viewModel:Lco/tamara/sdk/ui/TamaraPaymentViewModel;


# direct methods
.method public static synthetic $r8$lambda$P2QK3fVmYceAocaLdud6Som_9hY(Lco/tamara/sdk/ui/TamaraPaymentFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->onActivityCreated$lambda$5(Lco/tamara/sdk/ui/TamaraPaymentFragment;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/ui/TamaraPaymentFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/ui/TamaraPaymentFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->Companion:Lco/tamara/sdk/ui/TamaraPaymentFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final hideLoading()V
    .locals 1

    .line 135
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->binding:Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private static final onActivityCreated$lambda$5(Lco/tamara/sdk/ui/TamaraPaymentFragment;Lco/tamara/sdk/vo/Resource;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getStatus()Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sget-object v1, Lco/tamara/sdk/ui/TamaraPaymentFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    const-string v2, "API"

    const/4 v3, -0x1

    const-string v4, "payment_result"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 107
    :cond_0
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->hideLoading()V

    .line 108
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lco/tamara/sdk/PaymentResult;->Companion:Lco/tamara/sdk/PaymentResult$Companion;

    new-instance v5, Lco/tamara/sdk/error/PaymentError;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v5}, Lco/tamara/sdk/PaymentResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 110
    :cond_2
    sget-object p0, Lco/tamara/sdk/log/Logging;->Companion:Lco/tamara/sdk/log/Logging$Companion;

    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lco/tamara/sdk/log/Logging$Companion;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_3
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->hideLoading()V

    .line 95
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/tamara/sdk/model/response/CheckoutSession;

    iput-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->checkoutSession:Lco/tamara/sdk/model/response/CheckoutSession;

    .line 96
    sget-object v0, Lco/tamara/sdk/PaymentResult;->Companion:Lco/tamara/sdk/PaymentResult$Companion;

    invoke-virtual {v0, v4}, Lco/tamara/sdk/PaymentResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lco/tamara/sdk/vo/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string v1, "CHECK_OUT_SESSION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    :cond_4
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 102
    :cond_5
    sget-object p1, Lco/tamara/sdk/log/Logging;->Companion:Lco/tamara/sdk/log/Logging$Companion;

    iget-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->checkoutSession:Lco/tamara/sdk/model/response/CheckoutSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lco/tamara/sdk/model/response/CheckoutSession;->getCheckout_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->checkoutSession:Lco/tamara/sdk/model/response/CheckoutSession;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lco/tamara/sdk/model/response/CheckoutSession;->getOrder_id()Ljava/lang/String;

    move-result-object v1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "checkout session: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lco/tamara/sdk/log/Logging$Companion;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_8
    invoke-direct {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->showLoading()V

    :goto_1
    return-void
.end method

.method private final processCheckout()V
    .locals 7

    .line 117
    iget-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->checkoutSession:Lco/tamara/sdk/model/response/CheckoutSession;

    if-eqz v0, :cond_3

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string/jumbo v2, "url"

    invoke-virtual {v0}, Lco/tamara/sdk/model/response/CheckoutSession;->getCheckout_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->order:Lco/tamara/sdk/model/Order;

    const-string v2, "merchant_url"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lco/tamara/sdk/model/Order;->getMerchantUrl()Lco/tamara/sdk/model/MerchantUrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->order:Lco/tamara/sdk/model/Order;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/tamara/sdk/model/Order;->getMerchantUrl()Lco/tamara/sdk/model/MerchantUrl;

    move-result-object v3

    :cond_0
    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    if-nez v3, :cond_2

    .line 122
    move-object v0, p0

    check-cast v0, Lco/tamara/sdk/ui/TamaraPaymentFragment;

    .line 123
    new-instance v0, Lco/tamara/sdk/model/MerchantUrl;

    sget-object v3, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {v3}, Lco/tamara/sdk/TamaraPayment$Companion;->getInstance$tamara_flutter_sdk_release()Lco/tamara/sdk/TamaraPayment;

    move-result-object v3

    invoke-virtual {v3}, Lco/tamara/sdk/TamaraPayment;->getPushUrl$tamara_flutter_sdk_release()Ljava/lang/String;

    move-result-object v3

    .line 124
    sget-object v4, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {v4}, Lco/tamara/sdk/TamaraPayment$Companion;->getInstance$tamara_flutter_sdk_release()Lco/tamara/sdk/TamaraPayment;

    move-result-object v4

    invoke-virtual {v4}, Lco/tamara/sdk/TamaraPayment;->getCancelUrl$tamara_flutter_sdk_release()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {v5}, Lco/tamara/sdk/TamaraPayment$Companion;->getInstance$tamara_flutter_sdk_release()Lco/tamara/sdk/TamaraPayment;

    move-result-object v5

    invoke-virtual {v5}, Lco/tamara/sdk/TamaraPayment;->getFailureUrl$tamara_flutter_sdk_release()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {v6}, Lco/tamara/sdk/TamaraPayment$Companion;->getInstance$tamara_flutter_sdk_release()Lco/tamara/sdk/TamaraPayment;

    move-result-object v6

    invoke-virtual {v6}, Lco/tamara/sdk/TamaraPayment;->getSuccessUrl$tamara_flutter_sdk_release()Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-direct {v0, v3, v4, v5, v6}, Lco/tamara/sdk/model/MerchantUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    :cond_2
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lco/tamara/sdk/R$id;->webViewFragment:I

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method private final showLoading()V
    .locals 1

    .line 131
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->binding:Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lco/tamara/sdk/ui/TamaraPaymentViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lco/tamara/sdk/ui/TamaraPaymentViewModel;

    iput-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->viewModel:Lco/tamara/sdk/ui/TamaraPaymentViewModel;

    .line 50
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "viewModel"

    if-eqz v0, :cond_9

    .line 51
    const-string v3, "payment_status"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 54
    invoke-static {v4}, Lco/tamara/sdk/const/PaymentStatus;->valueOf(Ljava/lang/String;)Lco/tamara/sdk/const/PaymentStatus;

    move-result-object v3

    sget-object v4, Lco/tamara/sdk/ui/TamaraPaymentFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lco/tamara/sdk/const/PaymentStatus;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    const-string v5, "payment_result"

    const/4 v6, -0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto/16 :goto_0

    .line 69
    :cond_0
    const-string v3, "order"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lco/tamara/sdk/model/Order;

    iput-object v3, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->order:Lco/tamara/sdk/model/Order;

    .line 70
    const-string v3, "checkout_session"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/tamara/sdk/model/response/CheckoutSession;

    iput-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->checkoutSession:Lco/tamara/sdk/model/response/CheckoutSession;

    .line 71
    iget-object v0, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->order:Lco/tamara/sdk/model/Order;

    if-eqz v0, :cond_2

    if-nez p1, :cond_9

    .line 73
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->viewModel:Lco/tamara/sdk/ui/TamaraPaymentViewModel;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1, v0}, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->updateOrder(Lco/tamara/sdk/model/Order;)V

    goto :goto_0

    .line 75
    :cond_2
    move-object p1, p0

    check-cast p1, Lco/tamara/sdk/ui/TamaraPaymentFragment;

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lco/tamara/sdk/PaymentResult;->Companion:Lco/tamara/sdk/PaymentResult$Companion;

    new-instance v3, Lco/tamara/sdk/error/PaymentError;

    const-string v4, "Something went wrong!"

    invoke-direct {v3, v4}, Lco/tamara/sdk/error/PaymentError;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v3}, Lco/tamara/sdk/PaymentResult$Companion;->failIntent$tamara_flutter_sdk_release(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    :cond_4
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 61
    :cond_5
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v0, Lco/tamara/sdk/PaymentResult;->Companion:Lco/tamara/sdk/PaymentResult$Companion;

    invoke-virtual {v0, v5}, Lco/tamara/sdk/PaymentResult$Companion;->cancelIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 62
    :cond_6
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 56
    :cond_7
    sget-object p1, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p1}, Lco/tamara/sdk/TamaraPayment$Companion;->endSession()V

    .line 57
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object v0, Lco/tamara/sdk/PaymentResult;->Companion:Lco/tamara/sdk/PaymentResult$Companion;

    invoke-virtual {v0, v5}, Lco/tamara/sdk/PaymentResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 58
    :cond_8
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 88
    :cond_9
    :goto_0
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->viewModel:Lco/tamara/sdk/ui/TamaraPaymentViewModel;

    if-nez p1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v1, p1

    :goto_1
    invoke-virtual {v1}, Lco/tamara/sdk/ui/TamaraPaymentViewModel;->getOrderInfoLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lco/tamara/sdk/ui/TamaraPaymentFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lco/tamara/sdk/ui/TamaraPaymentFragment$$ExternalSyntheticLambda0;-><init>(Lco/tamara/sdk/ui/TamaraPaymentFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 42
    invoke-static {p1, p2, p3}, Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lco/tamara/sdk/ui/TamaraPaymentFragment;->binding:Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;

    if-nez p1, :cond_0

    .line 43
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lco/tamara/sdk/databinding/TamaraFragmentPaymentBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
