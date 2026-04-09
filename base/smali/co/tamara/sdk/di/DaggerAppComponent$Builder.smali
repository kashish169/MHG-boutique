.class final Lco/tamara/sdk/di/DaggerAppComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lco/tamara/sdk/di/AppComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private appModule:Lco/tamara/sdk/di/AppModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/tamara/sdk/di/DaggerAppComponent$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lco/tamara/sdk/di/DaggerAppComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic appModule(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/di/AppComponent$Builder;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lco/tamara/sdk/di/DaggerAppComponent$Builder;->appModule(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/di/DaggerAppComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public appModule(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/di/DaggerAppComponent$Builder;
    .locals 0

    .line 91
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/di/AppModule;

    iput-object p1, p0, Lco/tamara/sdk/di/DaggerAppComponent$Builder;->appModule:Lco/tamara/sdk/di/AppModule;

    return-object p0
.end method

.method public build()Lco/tamara/sdk/di/AppComponent;
    .locals 2

    .line 97
    iget-object v0, p0, Lco/tamara/sdk/di/DaggerAppComponent$Builder;->appModule:Lco/tamara/sdk/di/AppModule;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lco/tamara/sdk/di/AppModule;

    invoke-direct {v0}, Lco/tamara/sdk/di/AppModule;-><init>()V

    iput-object v0, p0, Lco/tamara/sdk/di/DaggerAppComponent$Builder;->appModule:Lco/tamara/sdk/di/AppModule;

    .line 100
    :cond_0
    new-instance v0, Lco/tamara/sdk/di/DaggerAppComponent;

    iget-object p0, p0, Lco/tamara/sdk/di/DaggerAppComponent$Builder;->appModule:Lco/tamara/sdk/di/AppModule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lco/tamara/sdk/di/DaggerAppComponent;-><init>(Lco/tamara/sdk/di/AppModule;Lco/tamara/sdk/di/DaggerAppComponent-IA;)V

    return-object v0
.end method
