.class public final Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;
.super Lco/tamara/sdk/repository/NetworkBoundResource;
.source "InformationRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/repository/InformationRepository;->authoriseOrder(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/tamara/sdk/repository/NetworkBoundResource<",
        "Lco/tamara/sdk/model/response/AuthoriseOrder;",
        "Lco/tamara/sdk/model/response/AuthoriseOrder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0014\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u0004H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0014J\u0016\u0010\u0007\u001a\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0014J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a8\u0006\r"
    }
    d2 = {
        "co/tamara/sdk/repository/InformationRepository$authoriseOrder$1",
        "Lco/tamara/sdk/repository/NetworkBoundResource;",
        "Lco/tamara/sdk/model/response/AuthoriseOrder;",
        "createCall",
        "Landroidx/lifecycle/LiveData;",
        "Lco/tamara/sdk/api/ApiResponse;",
        "loadFromDb",
        "processResponse",
        "response",
        "Lco/tamara/sdk/api/ApiSuccessResponse;",
        "shouldFetch",
        "",
        "data",
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


# instance fields
.field final synthetic $orderId:Ljava/lang/String;

.field final synthetic this$0:Lco/tamara/sdk/repository/InformationRepository;


# direct methods
.method constructor <init>(Lco/tamara/sdk/repository/InformationRepository;Ljava/lang/String;Lco/tamara/sdk/AppExecutors;)V
    .locals 0

    iput-object p1, p0, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;->this$0:Lco/tamara/sdk/repository/InformationRepository;

    iput-object p2, p0, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;->$orderId:Ljava/lang/String;

    .line 155
    invoke-direct {p0, p3}, Lco/tamara/sdk/repository/NetworkBoundResource;-><init>(Lco/tamara/sdk/AppExecutors;)V

    return-void
.end method


# virtual methods
.method protected createCall()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Lco/tamara/sdk/model/response/AuthoriseOrder;",
            ">;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;->this$0:Lco/tamara/sdk/repository/InformationRepository;

    invoke-static {v0}, Lco/tamara/sdk/repository/InformationRepository;->access$getService$p(Lco/tamara/sdk/repository/InformationRepository;)Lco/tamara/sdk/api/Service;

    move-result-object v0

    iget-object p0, p0, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;->$orderId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lco/tamara/sdk/api/Service;->authoriseOrder(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method protected loadFromDb()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/model/response/AuthoriseOrder;",
            ">;"
        }
    .end annotation

    .line 162
    sget-object p0, Lco/tamara/sdk/vo/AbsentLiveData;->Companion:Lco/tamara/sdk/vo/AbsentLiveData$Companion;

    invoke-virtual {p0}, Lco/tamara/sdk/vo/AbsentLiveData$Companion;->create()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method protected processResponse(Lco/tamara/sdk/api/ApiSuccessResponse;)Lco/tamara/sdk/model/response/AuthoriseOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/api/ApiSuccessResponse<",
            "Lco/tamara/sdk/model/response/AuthoriseOrder;",
            ">;)",
            "Lco/tamara/sdk/model/response/AuthoriseOrder;"
        }
    .end annotation

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lco/tamara/sdk/api/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/model/response/AuthoriseOrder;

    return-object p0
.end method

.method public bridge synthetic processResponse(Lco/tamara/sdk/api/ApiSuccessResponse;)Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;->processResponse(Lco/tamara/sdk/api/ApiSuccessResponse;)Lco/tamara/sdk/model/response/AuthoriseOrder;

    move-result-object p0

    return-object p0
.end method

.method protected shouldFetch(Lco/tamara/sdk/model/response/AuthoriseOrder;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic shouldFetch(Ljava/lang/Object;)Z
    .locals 0

    .line 155
    check-cast p1, Lco/tamara/sdk/model/response/AuthoriseOrder;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/InformationRepository$authoriseOrder$1;->shouldFetch(Lco/tamara/sdk/model/response/AuthoriseOrder;)Z

    move-result p0

    return p0
.end method
