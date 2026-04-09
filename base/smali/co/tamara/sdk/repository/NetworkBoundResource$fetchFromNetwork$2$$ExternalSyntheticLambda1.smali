.class public final synthetic Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lco/tamara/sdk/repository/NetworkBoundResource;

.field public final synthetic f$1:Lco/tamara/sdk/api/ApiResponse;


# direct methods
.method public synthetic constructor <init>(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/api/ApiResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda1;->f$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    iput-object p2, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda1;->f$1:Lco/tamara/sdk/api/ApiResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda1;->f$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$$ExternalSyntheticLambda1;->f$1:Lco/tamara/sdk/api/ApiResponse;

    invoke-static {v0, p0}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->$r8$lambda$32v6X40nteOqWIo7uU8CBCiszSk(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/api/ApiResponse;)V

    return-void
.end method
