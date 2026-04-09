.class public final Lco/tamara/sdk/AppExecutors_Factory;
.super Ljava/lang/Object;
.source "AppExecutors_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lco/tamara/sdk/AppExecutors;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lco/tamara/sdk/AppExecutors_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lco/tamara/sdk/AppExecutors_Factory;

    invoke-direct {v0}, Lco/tamara/sdk/AppExecutors_Factory;-><init>()V

    sput-object v0, Lco/tamara/sdk/AppExecutors_Factory;->INSTANCE:Lco/tamara/sdk/AppExecutors_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lco/tamara/sdk/AppExecutors_Factory;
    .locals 1

    .line 19
    sget-object v0, Lco/tamara/sdk/AppExecutors_Factory;->INSTANCE:Lco/tamara/sdk/AppExecutors_Factory;

    return-object v0
.end method

.method public static newAppExecutors()Lco/tamara/sdk/AppExecutors;
    .locals 1

    .line 23
    new-instance v0, Lco/tamara/sdk/AppExecutors;

    invoke-direct {v0}, Lco/tamara/sdk/AppExecutors;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lco/tamara/sdk/AppExecutors;
    .locals 0

    .line 15
    new-instance p0, Lco/tamara/sdk/AppExecutors;

    invoke-direct {p0}, Lco/tamara/sdk/AppExecutors;-><init>()V

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lco/tamara/sdk/AppExecutors_Factory;->get()Lco/tamara/sdk/AppExecutors;

    move-result-object p0

    return-object p0
.end method
