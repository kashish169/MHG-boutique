.class public final Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/ui/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewFragment.kt\nco/tamara/sdk/ui/WebViewFragment$onViewCreated$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,282:1\n1#2:283\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "co/tamara/sdk/ui/WebViewFragment$onViewCreated$2",
        "Landroid/webkit/WebChromeClient;",
        "onShowFileChooser",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "filePathCallback",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
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

    iput-object p1, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    .line 126
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "filePathCallback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileChooserParams"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-static {p1}, Lco/tamara/sdk/ui/WebViewFragment;->access$getValuesCallback$p(Lco/tamara/sdk/ui/WebViewFragment;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-static {p1}, Lco/tamara/sdk/ui/WebViewFragment;->access$getValuesCallback$p(Lco/tamara/sdk/ui/WebViewFragment;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 135
    :cond_0
    iget-object p1, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-static {p1, p2}, Lco/tamara/sdk/ui/WebViewFragment;->access$setValuesCallback$p(Lco/tamara/sdk/ui/WebViewFragment;Landroid/webkit/ValueCallback;)V

    .line 136
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-virtual {p2}, Lco/tamara/sdk/ui/WebViewFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 140
    :try_start_0
    iget-object p2, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-static {p2}, Lco/tamara/sdk/ui/WebViewFragment;->access$createImageFile(Lco/tamara/sdk/ui/WebViewFragment;)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :try_start_1
    const-string v0, "PhotoPath"

    iget-object v1, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-static {v1}, Lco/tamara/sdk/ui/WebViewFragment;->access$getPhotoPath$p(Lco/tamara/sdk/ui/WebViewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p2, p3

    .line 143
    :goto_0
    const-string v1, "Image file creation failed"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "Webview"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz p2, :cond_2

    .line 146
    iget-object p3, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lco/tamara/sdk/ui/WebViewFragment;->access$setPhotoPath$p(Lco/tamara/sdk/ui/WebViewFragment;Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    .line 147
    const-string p3, "output"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    move-object p3, p1

    .line 155
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 159
    new-array v1, v0, [Landroid/content/Intent;

    aput-object p3, v1, p2

    goto :goto_2

    :cond_3
    new-array v1, p2, [Landroid/content/Intent;

    .line 160
    :goto_2
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.CHOOSER"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string p3, "android.intent.extra.INTENT"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const-string p1, "android.intent.extra.TITLE"

    const-string p3, "Image Chooser"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string p1, "android.intent.extra.INITIAL_INTENTS"

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    iget-object p0, p0, Lco/tamara/sdk/ui/WebViewFragment$onViewCreated$2;->this$0:Lco/tamara/sdk/ui/WebViewFragment;

    invoke-virtual {p0, p2, v0}, Lco/tamara/sdk/ui/WebViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0
.end method
