.class public final Lco/tamara/sdk/ui/TamaraInformationViewModel_MembersInjector;
.super Ljava/lang/Object;
.source "TamaraInformationViewModel_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lco/tamara/sdk/ui/TamaraInformationViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final repositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/repository/InformationRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/repository/InformationRepository;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationViewModel_MembersInjector;->repositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/repository/InformationRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lco/tamara/sdk/ui/TamaraInformationViewModel;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lco/tamara/sdk/ui/TamaraInformationViewModel_MembersInjector;

    invoke-direct {v0, p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectRepository(Lco/tamara/sdk/ui/TamaraInformationViewModel;Lco/tamara/sdk/repository/InformationRepository;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lco/tamara/sdk/ui/TamaraInformationViewModel;->repository:Lco/tamara/sdk/repository/InformationRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lco/tamara/sdk/ui/TamaraInformationViewModel;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lco/tamara/sdk/ui/TamaraInformationViewModel_MembersInjector;->repositoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/repository/InformationRepository;

    invoke-static {p1, p0}, Lco/tamara/sdk/ui/TamaraInformationViewModel_MembersInjector;->injectRepository(Lco/tamara/sdk/ui/TamaraInformationViewModel;Lco/tamara/sdk/repository/InformationRepository;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lco/tamara/sdk/ui/TamaraInformationViewModel;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/ui/TamaraInformationViewModel_MembersInjector;->injectMembers(Lco/tamara/sdk/ui/TamaraInformationViewModel;)V

    return-void
.end method
