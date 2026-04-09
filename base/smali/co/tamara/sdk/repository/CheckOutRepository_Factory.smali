.class public final Lco/tamara/sdk/repository/CheckOutRepository_Factory;
.super Ljava/lang/Object;
.source "CheckOutRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lco/tamara/sdk/repository/CheckOutRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final appExecutorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/AppExecutors;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/api/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/AppExecutors;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/api/Service;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lco/tamara/sdk/repository/CheckOutRepository_Factory;->appExecutorsProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lco/tamara/sdk/repository/CheckOutRepository_Factory;->serviceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lco/tamara/sdk/repository/CheckOutRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/AppExecutors;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lco/tamara/sdk/api/Service;",
            ">;)",
            "Lco/tamara/sdk/repository/CheckOutRepository_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lco/tamara/sdk/repository/CheckOutRepository_Factory;

    invoke-direct {v0, p0, p1}, Lco/tamara/sdk/repository/CheckOutRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newCheckOutRepository(Lco/tamara/sdk/AppExecutors;Lco/tamara/sdk/api/Service;)Lco/tamara/sdk/repository/CheckOutRepository;
    .locals 1

    .line 36
    new-instance v0, Lco/tamara/sdk/repository/CheckOutRepository;

    invoke-direct {v0, p0, p1}, Lco/tamara/sdk/repository/CheckOutRepository;-><init>(Lco/tamara/sdk/AppExecutors;Lco/tamara/sdk/api/Service;)V

    return-object v0
.end method


# virtual methods
.method public get()Lco/tamara/sdk/repository/CheckOutRepository;
    .locals 2

    .line 26
    new-instance v0, Lco/tamara/sdk/repository/CheckOutRepository;

    iget-object v1, p0, Lco/tamara/sdk/repository/CheckOutRepository_Factory;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/tamara/sdk/AppExecutors;

    iget-object p0, p0, Lco/tamara/sdk/repository/CheckOutRepository_Factory;->serviceProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/api/Service;

    invoke-direct {v0, v1, p0}, Lco/tamara/sdk/repository/CheckOutRepository;-><init>(Lco/tamara/sdk/AppExecutors;Lco/tamara/sdk/api/Service;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lco/tamara/sdk/repository/CheckOutRepository_Factory;->get()Lco/tamara/sdk/repository/CheckOutRepository;

    move-result-object p0

    return-object p0
.end method
