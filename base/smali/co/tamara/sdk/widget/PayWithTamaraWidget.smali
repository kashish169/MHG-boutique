.class public final Lco/tamara/sdk/widget/PayWithTamaraWidget;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "PayWithTamaraWidget.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lco/tamara/sdk/widget/PayWithTamaraWidget;",
        "Landroidx/appcompat/widget/AppCompatImageButton;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "openLearnMore",
        "",
        "showInfoDialog",
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


# direct methods
.method public static synthetic $r8$lambda$G9EIMTKEY2t4AfghXiOx_sWobxU(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->showInfoDialog$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$do14vMT4EK1TnsuX04pHY0IgT9M(Lco/tamara/sdk/widget/PayWithTamaraWidget;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->_init_$lambda$0(Lco/tamara/sdk/widget/PayWithTamaraWidget;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGXAOOzCxHvxy6kJkmnpvsyu6xo(Lco/tamara/sdk/widget/PayWithTamaraWidget;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->showInfoDialog$lambda$2(Lco/tamara/sdk/widget/PayWithTamaraWidget;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lco/tamara/sdk/widget/PayWithTamaraWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget p1, Lco/tamara/sdk/R$drawable;->tw_ic_cart:I

    invoke-virtual {p0, p1}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->setImageResource(I)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->setBackgroundColor(I)V

    .line 21
    new-instance p1, Lco/tamara/sdk/widget/PayWithTamaraWidget$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lco/tamara/sdk/widget/PayWithTamaraWidget$$ExternalSyntheticLambda0;-><init>(Lco/tamara/sdk/widget/PayWithTamaraWidget;)V

    invoke-virtual {p0, p1}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lco/tamara/sdk/widget/PayWithTamaraWidget;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->showInfoDialog()V

    return-void
.end method

.method private final openLearnMore()V
    .locals 3

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://tamara.co/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 28
    invoke-virtual {p0}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showInfoDialog()V
    .locals 4

    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TwInfoDialogBinding;

    move-result-object v1

    const-string v2, "inflate(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 35
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 36
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v3, Lco/tamara/sdk/R$drawable;->tw_dialog_bg:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 37
    :cond_0
    iget-object v0, v1, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->twCloseBtn:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v3, Lco/tamara/sdk/widget/PayWithTamaraWidget$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lco/tamara/sdk/widget/PayWithTamaraWidget$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, v1, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->twFooterLearnMoreTxt:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lco/tamara/sdk/R$string;->tw_info_footer_subtitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, v1, Lco/tamara/sdk/databinding/TwInfoDialogBinding;->twFooterLearnMoreTxt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lco/tamara/sdk/widget/PayWithTamaraWidget$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lco/tamara/sdk/widget/PayWithTamaraWidget$$ExternalSyntheticLambda2;-><init>(Lco/tamara/sdk/widget/PayWithTamaraWidget;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final showInfoDialog$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    const-string p1, "$dialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static final showInfoDialog$lambda$2(Lco/tamara/sdk/widget/PayWithTamaraWidget;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lco/tamara/sdk/widget/PayWithTamaraWidget;->openLearnMore()V

    return-void
.end method
