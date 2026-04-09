.class public final Lco/tamara/sdk/DIHelper;
.super Ljava/lang/Object;
.source "DIHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000c\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lco/tamara/sdk/DIHelper;",
        "",
        "()V",
        "appComponent",
        "Lco/tamara/sdk/di/AppComponent;",
        "initAppComponent",
        "",
        "inject",
        "tamaraInformationViewModel",
        "Lco/tamara/sdk/ui/TamaraInformationViewModel;",
        "tamaraPaymentViewModel",
        "Lco/tamara/sdk/ui/TamaraPaymentViewModel;",
        "intComponent",
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
.field public static final INSTANCE:Lco/tamara/sdk/DIHelper;

.field private static appComponent:Lco/tamara/sdk/di/AppComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/tamara/sdk/DIHelper;

    invoke-direct {v0}, Lco/tamara/sdk/DIHelper;-><init>()V

    sput-object v0, Lco/tamara/sdk/DIHelper;->INSTANCE:Lco/tamara/sdk/DIHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initAppComponent()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 21
    sget-object v0, Lco/tamara/sdk/DIHelper;->INSTANCE:Lco/tamara/sdk/DIHelper;

    invoke-direct {v0}, Lco/tamara/sdk/DIHelper;->intComponent()V

    return-void
.end method

.method private final intComponent()V
    .locals 1

    .line 12
    sget-object p0, Lco/tamara/sdk/DIHelper;->appComponent:Lco/tamara/sdk/di/AppComponent;

    if-nez p0, :cond_0

    .line 13
    invoke-static {}, Lco/tamara/sdk/di/DaggerAppComponent;->builder()Lco/tamara/sdk/di/AppComponent$Builder;

    move-result-object p0

    .line 14
    new-instance v0, Lco/tamara/sdk/di/AppModule;

    invoke-direct {v0}, Lco/tamara/sdk/di/AppModule;-><init>()V

    invoke-interface {p0, v0}, Lco/tamara/sdk/di/AppComponent$Builder;->appModule(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/di/AppComponent$Builder;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Lco/tamara/sdk/di/AppComponent$Builder;->build()Lco/tamara/sdk/di/AppComponent;

    move-result-object p0

    .line 13
    sput-object p0, Lco/tamara/sdk/DIHelper;->appComponent:Lco/tamara/sdk/di/AppComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final inject(Lco/tamara/sdk/ui/TamaraInformationViewModel;)V
    .locals 0

    const-string/jumbo p0, "tamaraInformationViewModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p0, Lco/tamara/sdk/DIHelper;->appComponent:Lco/tamara/sdk/di/AppComponent;

    if-nez p0, :cond_0

    const-string p0, "appComponent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lco/tamara/sdk/di/AppComponent;->inject(Lco/tamara/sdk/ui/TamaraInformationViewModel;)V

    return-void
.end method

.method public final inject(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)V
    .locals 0

    const-string/jumbo p0, "tamaraPaymentViewModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object p0, Lco/tamara/sdk/DIHelper;->appComponent:Lco/tamara/sdk/di/AppComponent;

    if-nez p0, :cond_0

    const-string p0, "appComponent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lco/tamara/sdk/di/AppComponent;->inject(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)V

    return-void
.end method
