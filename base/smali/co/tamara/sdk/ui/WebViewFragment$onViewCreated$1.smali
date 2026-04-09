.class public final Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$1;
.super Landroid/webkit/WebViewClient;
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
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J0\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "co/tamara/sdk/ui/WebViewFragment$onViewCreated$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onReceivedHttpAuthRequest",
        "handler",
        "Landroid/webkit/HttpAuthHandler;",
        "host",
        "realm",
        "shouldOverrideUrlLoading",
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

    iput-object p1, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$1;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    .line 74
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$1;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-virtual {p1}, Lco/tamara/sdk/ui/WebViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$1;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    .line 113
    invoke-static {p0}, Lco/tamara/sdk/ui/WebViewFragment;->access$getBinding$p(Lco/tamara/sdk/ui/WebViewFragment;)Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 81
    const-string/jumbo p0, "tamara"

    const-string/jumbo p1, "tamarapay@2020"

    invoke-virtual {p2, p0, p1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tamara"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$1;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-static {v0}, Lco/tamara/sdk/ui/WebViewFragment;->access$getMerchantUrl$p(Lco/tamara/sdk/ui/WebViewFragment;)Lco/tamara/sdk/model/MerchantUrl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$1;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 91
    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lco/tamara/sdk/model/MerchantUrl;->getSuccess()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v1, :cond_0

    .line 92
    invoke-static {p0}, Lco/tamara/sdk/ui/WebViewFragment;->access$returnSuccess(Lco/tamara/sdk/ui/WebViewFragment;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 94
    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lco/tamara/sdk/model/MerchantUrl;->getCancel()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v1, :cond_1

    .line 95
    invoke-static {p0}, Lco/tamara/sdk/ui/WebViewFragment;->access$returnCancel(Lco/tamara/sdk/ui/WebViewFragment;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 97
    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lco/tamara/sdk/model/MerchantUrl;->getFailure()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v5, v0, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 98
    invoke-static {p0}, Lco/tamara/sdk/ui/WebViewFragment;->access$returnFailure(Lco/tamara/sdk/ui/WebViewFragment;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 102
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method
