.class final Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NetworkBoundResource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2;->invoke(Lco/tamara/sdk/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TResultType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "ResultType",
        "RequestType",
        "newData",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Object;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lco/tamara/sdk/repository/NetworkBoundResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/tamara/sdk/repository/NetworkBoundResource<",
            "TResultType;TRequestType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lco/tamara/sdk/repository/NetworkBoundResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/repository/NetworkBoundResource<",
            "TResultType;TRequestType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$2$1;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$2$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lco/tamara/sdk/repository/NetworkBoundResource$fetchFromNetwork$2$2$1;->this$0:Lco/tamara/sdk/repository/NetworkBoundResource;

    sget-object v0, Lco/tamara/sdk/vo/Resource;->Companion:Lco/tamara/sdk/vo/Resource$Companion;

    invoke-virtual {v0, p1}, Lco/tamara/sdk/vo/Resource$Companion;->success(Ljava/lang/Object;)Lco/tamara/sdk/vo/Resource;

    move-result-object p1

    invoke-static {p0, p1}, Lco/tamara/sdk/repository/NetworkBoundResource;->access$setValue(Lco/tamara/sdk/repository/NetworkBoundResource;Lco/tamara/sdk/vo/Resource;)V

    return-void
.end method
