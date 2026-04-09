.class public final Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideTamaraServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lco/tamara/sdk/api/Service;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lco/tamara/sdk/di/AppModule;


# direct methods
.method public constructor <init>(Lco/tamara/sdk/di/AppModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;->module:Lco/tamara/sdk/di/AppModule;

    return-void
.end method

.method public static create(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;
    .locals 1

    .line 25
    new-instance v0, Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;

    invoke-direct {v0, p0}, Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;-><init>(Lco/tamara/sdk/di/AppModule;)V

    return-object v0
.end method

.method public static proxyProvideTamaraService(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/api/Service;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lco/tamara/sdk/di/AppModule;->provideTamaraService()Lco/tamara/sdk/api/Service;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/api/Service;

    return-object p0
.end method


# virtual methods
.method public get()Lco/tamara/sdk/api/Service;
    .locals 0

    .line 21
    iget-object p0, p0, Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;->module:Lco/tamara/sdk/di/AppModule;

    invoke-static {p0}, Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;->proxyProvideTamaraService(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/api/Service;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lco/tamara/sdk/di/AppModule_ProvideTamaraServiceFactory;->get()Lco/tamara/sdk/api/Service;

    move-result-object p0

    return-object p0
.end method
