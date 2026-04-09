.class public final Lco/tamara/sdk/widget/TamaraWidgetText;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "TamaraWidgetText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/widget/TamaraWidgetText$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0013H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lco/tamara/sdk/widget/TamaraWidgetText;",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "contentTxt",
        "Landroid/widget/TextView;",
        "currency",
        "",
        "mode",
        "",
        "payIn",
        "unequal",
        "",
        "value",
        "",
        "openInfoDialog",
        "",
        "setLayoutForBorder",
        "setLayoutForInline",
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
.field public static final Companion:Lco/tamara/sdk/widget/TamaraWidgetText$Companion;

.field public static final MODE_BORDER:I = 0x1

.field public static final MODE_INLINE:I


# instance fields
.field private contentTxt:Landroid/widget/TextView;

.field private currency:Ljava/lang/String;

.field private mode:I

.field private payIn:I

.field private unequal:Z

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/widget/TamaraWidgetText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/widget/TamaraWidgetText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/widget/TamaraWidgetText;->Companion:Lco/tamara/sdk/widget/TamaraWidgetText$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v0, "SAR"

    iput-object v0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->currency:Ljava/lang/String;

    const/4 v1, 0x3

    .line 35
    iput v1, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->payIn:I

    .line 40
    sget-object v2, Lco/tamara/sdk/R$styleable;->TamaraWidgetText:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget p2, Lco/tamara/sdk/R$styleable;->TamaraWidgetText_widget_mode:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->mode:I

    .line 43
    sget p2, Lco/tamara/sdk/R$styleable;->TamaraWidgetText_pay_value:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iput-wide v3, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->value:D

    .line 44
    sget p2, Lco/tamara/sdk/R$styleable;->TamaraWidgetText_currency:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->currency:Ljava/lang/String;

    .line 45
    sget p2, Lco/tamara/sdk/R$styleable;->TamaraWidgetText_pay_in:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->payIn:I

    .line 46
    sget p2, Lco/tamara/sdk/R$styleable;->TamaraWidgetText_unequal:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->unequal:Z

    .line 48
    iget p2, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->mode:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    goto :goto_2

    .line 53
    :cond_2
    invoke-direct {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->setLayoutForBorder()V

    goto :goto_2

    .line 50
    :cond_3
    invoke-direct {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->setLayoutForInline()V

    .line 57
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static final synthetic access$openInfoDialog(Lco/tamara/sdk/widget/TamaraWidgetText;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->openInfoDialog()V

    return-void
.end method

.method private final openInfoDialog()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lco/tamara/sdk/widget/TamaraWidgetPopup;

    invoke-direct {v0}, Lco/tamara/sdk/widget/TamaraWidgetPopup;-><init>()V

    .line 158
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "TamaraWidgetPopup"

    invoke-virtual {v0, p0, v1}, Lco/tamara/sdk/widget/TamaraWidgetPopup;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setLayoutForBorder()V
    .locals 12

    .line 61
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lco/tamara/sdk/R$layout;->tamara_widget_border:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    sget v1, Lco/tamara/sdk/R$id;->twContentTxt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->contentTxt:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->currency:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lco/tamara/sdk/R$string;->tw_amount_with_currency:I

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-wide v3, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->value:D

    iget v5, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->payIn:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%.2f"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "format(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lco/tamara/sdk/R$string;->tw_learn_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-boolean v1, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->unequal:Z

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    sget v3, Lco/tamara/sdk/R$string;->tw_content_border_unequal:I

    .line 70
    iget v5, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->payIn:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 68
    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    sget v3, Lco/tamara/sdk/R$string;->tw_content_border:I

    .line 76
    iget v5, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->payIn:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 74
    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    new-instance v3, Landroid/text/SpannableString;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    move-object v6, v0

    .line 83
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    const/16 v11, 0x21

    if-ltz v5, :cond_1

    .line 86
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    .line 85
    invoke-virtual {v3, v6, v5, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 92
    :cond_1
    new-instance v0, Lco/tamara/sdk/widget/TamaraWidgetText$setLayoutForBorder$learnMoreSpan$1;

    invoke-direct {v0, p0}, Lco/tamara/sdk/widget/TamaraWidgetText$setLayoutForBorder$learnMoreSpan$1;-><init>(Lco/tamara/sdk/widget/TamaraWidgetText;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    move-object v6, v2

    .line 97
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v3, v0, v1, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 100
    iget-object v0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->contentTxt:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_1
    iget-object p0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->contentTxt:Landroid/widget/TextView;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_2
    return-void
.end method

.method private final setLayoutForInline()V
    .locals 13

    .line 105
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lco/tamara/sdk/R$layout;->tamara_wdiget_inline:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 106
    sget v1, Lco/tamara/sdk/R$id;->twContentTxt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->contentTxt:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->currency:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lco/tamara/sdk/R$string;->tw_amount_with_currency:I

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-wide v3, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->value:D

    iget v5, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->payIn:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%.2f"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "format(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lco/tamara/sdk/R$string;->tw_learn_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-boolean v1, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->unequal:Z

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    sget v3, Lco/tamara/sdk/R$string;->tw_content_inline_unequal:I

    .line 114
    iget v5, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->payIn:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 112
    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 119
    sget v3, Lco/tamara/sdk/R$string;->tw_content_inline:I

    .line 120
    iget v5, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->payIn:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 118
    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lco/tamara/sdk/R$drawable;->tw_ic_logo_badge:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    new-instance v3, Lco/tamara/sdk/widget/CenteredImageSpan;

    invoke-virtual {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lco/tamara/sdk/R$drawable;->tw_ic_logo_badge:I

    invoke-direct {v3, v5, v6}, Lco/tamara/sdk/widget/CenteredImageSpan;-><init>(Landroid/content/Context;I)V

    .line 129
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string/jumbo v8, "tamara_logo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    .line 130
    new-instance v11, Landroid/text/SpannableString;

    invoke-direct {v11, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v6, v5, 0xb

    const/16 v7, 0x11

    .line 131
    invoke-virtual {v11, v3, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 133
    new-instance v3, Lco/tamara/sdk/widget/TamaraWidgetText$setLayoutForInline$learnMoreSpan$1;

    invoke-direct {v3, p0}, Lco/tamara/sdk/widget/TamaraWidgetText$setLayoutForInline$learnMoreSpan$1;-><init>(Lco/tamara/sdk/widget/TamaraWidgetText;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    move-object v6, v2

    .line 138
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    const/16 v12, 0x21

    invoke-virtual {v11, v3, v5, v2, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v1

    move-object v6, v0

    .line 141
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 144
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 143
    invoke-virtual {v11, v2, v1, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 151
    :cond_1
    iget-object v0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->contentTxt:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_1
    iget-object p0, p0, Lco/tamara/sdk/widget/TamaraWidgetText;->contentTxt:Landroid/widget/TextView;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_2
    return-void
.end method
