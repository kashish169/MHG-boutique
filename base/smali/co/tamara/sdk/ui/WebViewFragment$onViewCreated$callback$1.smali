.class public final Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$callback$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "WebViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/ui/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "co/tamara/sdk/ui/WebViewFragment$onViewCreated$callback$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
        "",
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
.field final synthetic this$0:Lco/tamara/sdk/ui/WebViewFragment;


# direct methods
.method constructor <init>(Lco/tamara/sdk/ui/WebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$callback$1;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    const/4 p1, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    const/4 v0, 0x1

    .line 67
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "payment_status"

    const-string v2, "STATUS_CANCEL"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$callback$1;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v1, Lco/tamara/sdk/R$id;->tamaraPaymentFragment:I

    invoke-virtual {p0, v1, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    return-void
.end method
