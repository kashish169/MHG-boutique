.class public final Lco/tamara/sdk/databinding/TwInfoDialogBinding;
.super Ljava/lang/Object;
.source "TwInfoDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final twCloseBtn:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final twFooterLearnMoreTxt:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->rootView:Landroid/widget/FrameLayout;

    .line 32
    iput-object p2, p0, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->twCloseBtn:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 33
    iput-object p3, p0, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->twFooterLearnMoreTxt:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lco/tamara/sdk/databinding/TwInfoDialogBinding;
    .locals 3

    .line 63
    sget v0, Lco/tamara/sdk/R$id;->twCloseBtn:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v1, :cond_0

    .line 69
    sget v0, Lco/tamara/sdk/R$id;->twFooterLearnMoreTxt:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lco/tamara/sdk/databinding/TwInfoDialogBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2}, Lco/tamara/sdk/databinding/TwInfoDialogBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lco/tamara/sdk/databinding/TwInfoDialogBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TwInfoDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TwInfoDialogBinding;
    .locals 2

    .line 50
    sget v0, Lco/tamara/sdk/R$layout;->tw_info_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->bind(Landroid/view/View;)Lco/tamara/sdk/databinding/TwInfoDialogBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
