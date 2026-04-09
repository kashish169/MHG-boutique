.class public final Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;
.super Ljava/lang/Object;
.source "TamaraFragmentWebViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/webkit/WebView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;->rootView:Landroid/widget/FrameLayout;

    .line 32
    iput-object p2, p0, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 33
    iput-object p3, p0, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;
    .locals 3

    .line 63
    sget v0, Lco/tamara/sdk/R$id;->progressBar:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 69
    sget v0, Lco/tamara/sdk/R$id;->webView:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2}, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/webkit/WebView;)V

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;
    .locals 2

    .line 50
    sget v0, Lco/tamara/sdk/R$layout;->tamara_fragment_web_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;->bind(Landroid/view/View;)Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lco/tamara/sdk/databinding/TamaraFragmentWebViewBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
