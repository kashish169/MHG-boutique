.class public final Lco/tamara/sdk/TamaraInformationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TamaraInformationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/TamaraInformationActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lco/tamara/sdk/TamaraInformationActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field public static final Companion:Lco/tamara/sdk/TamaraInformationActivity$Companion;

.field private static final EXTRA_AUTHORISE:Ljava/lang/String; = "extra_authorise"

.field private static final EXTRA_CANCEL:Ljava/lang/String; = "extra_cancel"

.field private static final EXTRA_CAPTURE:Ljava/lang/String; = "extra_capture"

.field private static final EXTRA_DETAIL:Ljava/lang/String; = "extra_detail"

.field private static final EXTRA_PAYMENT_OPTIONS:Ljava/lang/String; = "extra_payment_options"

.field private static final EXTRA_REFERENCE:Ljava/lang/String; = "extra_reference"

.field private static final EXTRA_REFUNDS:Ljava/lang/String; = "extra_refunds"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "extra_type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/TamaraInformationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/TamaraInformationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/TamaraInformationActivity;->Companion:Lco/tamara/sdk/TamaraInformationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lco/tamara/sdk/DIHelper;->initAppComponent()V

    .line 21
    sget p1, Lco/tamara/sdk/R$layout;->tamara_activity_information:I

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraInformationActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lco/tamara/sdk/TamaraInformationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 23
    check-cast p0, Landroid/app/Activity;

    sget v0, Lco/tamara/sdk/R$id;->informationNavHostFragment:I

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v0, "findNavController(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string v1, "extra_detail"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "extra_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string v3, "extra_capture"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 28
    const-string v4, "extra_refunds"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 29
    const-string v5, "extra_reference"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 30
    const-string v6, "extra_cancel"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 31
    const-string v7, "extra_payment_options"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 33
    const-string v7, "order_id"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    move-object v1, v3

    check-cast v1, Lco/tamara/sdk/model/request/CapturePaymentRequest;

    if-eqz v1, :cond_1

    .line 37
    const-string v1, "capture_payment"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    :cond_1
    move-object v1, v4

    check-cast v1, Lco/tamara/sdk/model/request/PaymentRefund;

    if-eqz v1, :cond_2

    .line 41
    const-string v1, "refunds"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 44
    :cond_2
    move-object v1, v5

    check-cast v1, Lco/tamara/sdk/model/request/OrderReference;

    if-eqz v1, :cond_3

    .line 45
    const-string v1, "reference"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    :cond_3
    move-object v1, v6

    check-cast v1, Lco/tamara/sdk/model/request/CancelOrder;

    if-eqz v1, :cond_4

    .line 49
    const-string v1, "cancel_order"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    :cond_4
    move-object v1, p1

    check-cast v1, Lco/tamara/sdk/model/request/PaymentOptions;

    if-eqz v1, :cond_5

    .line 52
    const-string v1, "payment_options"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    :cond_5
    const-string/jumbo p1, "type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    :cond_6
    return-void
.end method
