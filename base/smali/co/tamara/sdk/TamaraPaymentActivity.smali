.class public final Lco/tamara/sdk/TamaraPaymentActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TamaraPaymentActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/TamaraPaymentActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lco/tamara/sdk/TamaraPaymentActivity;",
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
.field public static final Companion:Lco/tamara/sdk/TamaraPaymentActivity$Companion;

.field private static final EXTRA_CHECKOUT_SESSION:Ljava/lang/String; = "extra_session"

.field private static final EXTRA_ORDER:Ljava/lang/String; = "extra_order"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "payment_result"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/TamaraPaymentActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/TamaraPaymentActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/TamaraPaymentActivity;->Companion:Lco/tamara/sdk/TamaraPaymentActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {}, Lco/tamara/sdk/DIHelper;->initAppComponent()V

    .line 19
    sget p1, Lco/tamara/sdk/R$layout;->tamara_activity_payment:I

    invoke-virtual {p0, p1}, Lco/tamara/sdk/TamaraPaymentActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lco/tamara/sdk/TamaraPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    const-string v0, "extra_order"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 22
    const-string v1, "extra_session"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 23
    check-cast p0, Landroid/app/Activity;

    sget v1, Lco/tamara/sdk/R$id;->sdkNavHostFragment:I

    invoke-static {p0, v1}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v1, "findNavController(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    move-object v2, v0

    check-cast v2, Lco/tamara/sdk/model/Order;

    if-eqz v2, :cond_0

    .line 26
    const-string v2, "order"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    :cond_0
    move-object v0, p1

    check-cast v0, Lco/tamara/sdk/model/response/CheckoutSession;

    if-eqz v0, :cond_1

    .line 29
    const-string v0, "checkout_session"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    :cond_1
    const-string p1, "payment_status"

    const-string v0, "STATUS_INITIALIZE"

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
