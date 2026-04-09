.class public final Lco/tamara/sdk/ui/TamaraWidgetFragment;
.super Landroidx/fragment/app/Fragment;
.source "TamaraWidgetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/ui/TamaraWidgetFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006J.\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lco/tamara/sdk/ui/TamaraWidgetFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "properties",
        "Lco/tamara/sdk/model/request/WidgetProperties;",
        "generateUI",
        "",
        "language",
        "country",
        "publicKey",
        "amount",
        "",
        "inline",
        "generateURL",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
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
.field public static final ARG_PROPERTIES:Ljava/lang/String; = "properties"

.field public static final ARG_TYPE:Ljava/lang/String; = "type"

.field public static final CART_PAGE:Ljava/lang/String; = "CART"

.field public static final Companion:Lco/tamara/sdk/ui/TamaraWidgetFragment$Companion;

.field public static final PRODUCT:Ljava/lang/String; = "PRODUCT"


# instance fields
.field private properties:Lco/tamara/sdk/model/request/WidgetProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/ui/TamaraWidgetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/ui/TamaraWidgetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/ui/TamaraWidgetFragment;->Companion:Lco/tamara/sdk/ui/TamaraWidgetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "language"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "country"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "publicKey"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inline"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0}, Lco/tamara/sdk/TamaraPayment$Companion;->getInstance$tamara_flutter_sdk_release()Lco/tamara/sdk/TamaraPayment;

    move-result-object p0

    invoke-virtual {p0}, Lco/tamara/sdk/TamaraPayment;->isSandbox$tamara_flutter_sdk_release()Z

    move-result p0

    if-nez p0, :cond_0

    .line 71
    const-string p0, "https://cdn.tamara.co/widget-v2/tamara-widget.js"

    goto :goto_0

    .line 70
    :cond_0
    const-string p0, "https://cdn-sandbox.tamara.co/widget-v2/tamara-widget.js"

    .line 83
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<script>\n        window.tamaraWidgetConfig = {\n            lang: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\n            country: \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\n            publicKey: \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\n        }\n      </script>\n      <script defer type=\"text/javascript\" src=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"></script>\n\n      \n      <tamara-widget type=\"tamara-summary\" amount=\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "\" inline-type=\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"></tamara-widget>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, "language"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "country"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "publicKey"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inline"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object p0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {p0}, Lco/tamara/sdk/TamaraPayment$Companion;->getInstance$tamara_flutter_sdk_release()Lco/tamara/sdk/TamaraPayment;

    move-result-object p0

    invoke-virtual {p0}, Lco/tamara/sdk/TamaraPayment;->isSandbox$tamara_flutter_sdk_release()Z

    move-result p0

    const-string v0, "&inline_type="

    const-string v1, "&amount="

    const-string v2, "&country="

    const-string v3, "&public_key="

    if-eqz p0, :cond_0

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "https://cdn-sandbox.tamara.co/widget-v2/tamara-widget.html?lang="

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "https://cdn.tamara.co/widget-v2/tamara-widget.html?lang="

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 36
    const-string v0, "properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/tamara/sdk/model/request/WidgetProperties;

    iput-object v1, p0, Lco/tamara/sdk/ui/TamaraWidgetFragment;->properties:Lco/tamara/sdk/model/request/WidgetProperties;

    .line 37
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lco/tamara/sdk/ui/TamaraWidgetFragment;->properties:Lco/tamara/sdk/model/request/WidgetProperties;

    if-eqz p1, :cond_3

    .line 42
    const-string v0, "CART"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v3, "INFORMATION_RESULT"

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    sget-object v2, Lco/tamara/sdk/const/Information;->CART:Lco/tamara/sdk/const/Information;

    invoke-virtual {v2}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lco/tamara/sdk/model/response/CartPage;

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getPublicKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getAmount()D

    move-result-wide v8

    const-string v10, "3"

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->generateUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getPublicKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getAmount()D

    move-result-wide v9

    const-string v11, "3"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-direct {v3, v4, p1}, Lco/tamara/sdk/model/response/CartPage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "PRODUCT"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    sget-object v0, Lco/tamara/sdk/InformationResult;->Companion:Lco/tamara/sdk/InformationResult$Companion;

    invoke-virtual {v0, v3}, Lco/tamara/sdk/InformationResult$Companion;->successIntent$tamara_flutter_sdk_release(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    sget-object v2, Lco/tamara/sdk/const/Information;->PRODUCT:Lco/tamara/sdk/const/Information;

    invoke-virtual {v2}, Lco/tamara/sdk/const/Information;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lco/tamara/sdk/model/response/Product;

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getPublicKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getAmount()D

    move-result-wide v8

    const-string v10, "2"

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->generateUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getPublicKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lco/tamara/sdk/model/request/WidgetProperties;->getAmount()D

    move-result-wide v9

    const-string v11, "2"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-direct {v3, v4, p1}, Lco/tamara/sdk/model/response/Product;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    :cond_2
    invoke-virtual {p0}, Lco/tamara/sdk/ui/TamaraWidgetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p0, "inflater"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget p0, Lco/tamara/sdk/R$layout;->tamara_fragment_widget:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
