.class public final Lco/tamara/sdk/di/DaggerAppComponent;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lco/tamara/sdk/di/AppComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/di/DaggerAppComponent$Builder;
    }
.end annotation


# instance fields
.field private appExecutorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/AppExecutors;",
            ">;"
        }
    .end annotation
.end field

.field private checkOutRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/repository/CheckOutRepository;",
            ">;"
        }
    .end annotation
.end field

.field private informationRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/repository/InformationRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideTamaraServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/api/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lco/tamara/sdk/di/AppModule;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lco/tamara/sdk/di/DaggerAppComponent;->initialize(Lco/tamara/sdk/di/AppModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lco/tamara/sdk/di/AppModule;Lco/tamara/sdk/di/DaggerAppComponent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lco/tamara/sdk/di/DaggerAppComponent;-><init>(Lco/tamara/sdk/di/AppModule;)V

    return-void
.end method

.method public static builder()Lco/tamara/sdk/di/AppComponent$Builder;
    .locals 2

    .line 39
    new-instance v0, Lco/tamara/sdk/di/DaggerAppComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/di/DaggerAppComponent$Builder;-><init>(Lco/tamara/sdk/di/DaggerAppComponent$Builder-IA;)V

    return-object v0
.end method

.method public static create()Lco/tamara/sdk/di/AppComponent;
    .locals 2

    .line 43
    new-instance v0, Lco/tamara/sdk/di/DaggerAppComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/di/DaggerAppComponent$Builder;-><init>(Lco/tamara/sdk/di/DaggerAppComponent$Builder-IA;)V

    invoke-virtual {v0}, Lco/tamara/sdk/di/DaggerAppComponent$Builder;->build()Lco/tamara/sdk/di/AppComponent;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lco/tamara/sdk/di/AppModule;)V
    .locals 1

    .line 48
    invoke-static {}, Lco/tamara/sdk/AppExecutors_Factory;->create()Lco/tamara/sdk/AppExecutors_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lco/tamara/sdk/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    .line 50
    invoke-static {p1}, Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;->create(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lco/tamara/sdk/di/DaggerAppComponent;->provideTamaraServiceProvider:Ljavax/inject/Provider;

    .line 51
    iget-object v0, p0, Lco/tamara/sdk/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    .line 53
    invoke-static {v0, p1}, Lco/tamara/sdk/repository/CheckOutRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lco/tamara/sdk/repository/CheckOutRepository_Factory;

    move-result-object p1

    .line 52
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lco/tamara/sdk/di/DaggerAppComponent;->checkOutRepositoryProvider:Ljavax/inject/Provider;

    .line 54
    iget-object p1, p0, Lco/tamara/sdk/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lco/tamara/sdk/di/DaggerAppComponent;->provideTamaraServiceProvider:Ljavax/inject/Provider;

    .line 56
    invoke-static {p1, v0}, Lco/tamara/sdk/repository/InformationRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lco/tamara/sdk/repository/InformationRepository_Factory;

    move-result-object p1

    .line 55
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lco/tamara/sdk/di/DaggerAppComponent;->informationRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectTamaraInformationViewModel(Lco/tamara/sdk/ui/TamaraInformationViewModel;)Lco/tamara/sdk/ui/TamaraInformationViewModel;
    .locals 0

    .line 81
    iget-object p0, p0, Lco/tamara/sdk/di/DaggerAppComponent;->informationRepositoryProvider:Ljavax/inject/Provider;

    .line 82
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/repository/InformationRepository;

    .line 81
    invoke-static {p1, p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel_MembersInjector;->injectRepository(Lco/tamara/sdk/ui/TamaraInformationViewModel;Lco/tamara/sdk/repository/InformationRepository;)V

    return-object p1
.end method

.method private injectTamaraPaymentViewModel(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)Lco/tamara/sdk/ui/TamaraPaymentViewModel;
    .locals 0

    .line 74
    iget-object p0, p0, Lco/tamara/sdk/di/DaggerAppComponent;->checkOutRepositoryProvider:Ljavax/inject/Provider;

    .line 75
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/repository/CheckOutRepository;

    .line 74
    invoke-static {p1, p0}, Lco/tamara/sdk/ui/TamaraPaymentViewModel_MembersInjector;->injectRepository(Lco/tamara/sdk/ui/TamaraPaymentViewModel;Lco/tamara/sdk/repository/CheckOutRepository;)V

    return-object p1
.end method


# virtual methods
.method public inject(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public inject(Lco/tamara/sdk/ui/TamaraInformationViewModel;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lco/tamara/sdk/di/DaggerAppComponent;->injectTamaraInformationViewModel(Lco/tamara/sdk/ui/TamaraInformationViewModel;)Lco/tamara/sdk/ui/TamaraInformationViewModel;

    return-void
.end method

.method public inject(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lco/tamara/sdk/di/DaggerAppComponent;->injectTamaraPaymentViewModel(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)Lco/tamara/sdk/ui/TamaraPaymentViewModel;

    return-void
.end method
