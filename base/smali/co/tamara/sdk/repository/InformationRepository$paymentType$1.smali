.class public final Lco/tamara/sdk/repository/InformationRepository$paymentType$1;
.super Lco/tamara/sdk/repository/NetworkBoundResource;
.source "InformationRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/repository/InformationRepository;->paymentType(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/tamara/sdk/repository/NetworkBoundResource<",
        "Ljava/util/ArrayList<",
        "Lco/tamara/sdk/model/response/PaymentType;",
        ">;",
        "Ljava/util/ArrayList<",
        "Lco/tamara/sdk/model/response/PaymentType;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002.\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0001J$\u0010\u0005\u001a\u001e\u0012\u001a\u0012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00070\u0006H\u0014J\u001e\u0010\u0008\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0006H\u0014J6\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00042\u001c\u0010\n\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u000bH\u0014J$\u0010\u000c\u001a\u00020\r2\u001a\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0004H\u0014\u00a8\u0006\u000f"
    }
    d2 = {
        "co/tamara/sdk/repository/InformationRepository$paymentType$1",
        "Lco/tamara/sdk/repository/NetworkBoundResource;",
        "Ljava/util/ArrayList;",
        "Lco/tamara/sdk/model/response/PaymentType;",
        "Lkotlin/collections/ArrayList;",
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
.field final synthetic $country:Ljava/lang/String;

.field final synthetic $currency:Ljava/lang/String;

.field final synthetic this$0:Lco/tamara/sdk/repository/InformationRepository;


# direct methods
.method constructor <init>(Lco/tamara/sdk/repository/InformationRepository;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/AppExecutors;)V
    .locals 0

    iput-object p1, p0, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->this$0:Lco/tamara/sdk/repository/InformationRepository;

    iput-object p2, p0, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->$country:Ljava/lang/String;

    iput-object p3, p0, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->$currency:Ljava/lang/String;

    .line 27
    invoke-direct {p0, p4}, Lco/tamara/sdk/repository/NetworkBoundResource;-><init>(Lco/tamara/sdk/AppExecutors;)V

    return-void
.end method


# virtual methods
.method protected createCall()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lco/tamara/sdk/api/ApiResponse<",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/PaymentType;",
            ">;>;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->this$0:Lco/tamara/sdk/repository/InformationRepository;

    invoke-static {v0}, Lco/tamara/sdk/repository/InformationRepository;->access$getService$p(Lco/tamara/sdk/repository/InformationRepository;)Lco/tamara/sdk/api/Service;

    move-result-object v0

    iget-object v1, p0, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->$country:Ljava/lang/String;

    iget-object p0, p0, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->$currency:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lco/tamara/sdk/api/Service;->paymentType(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method protected loadFromDb()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/PaymentType;",
            ">;>;"
        }
    .end annotation

    .line 34
    sget-object p0, Lco/tamara/sdk/vo/AbsentLiveData;->Companion:Lco/tamara/sdk/vo/AbsentLiveData$Companion;

    invoke-virtual {p0}, Lco/tamara/sdk/vo/AbsentLiveData$Companion;->create()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processResponse(Lco/tamara/sdk/api/ApiSuccessResponse;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->processResponse(Lco/tamara/sdk/api/ApiSuccessResponse;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected processResponse(Lco/tamara/sdk/api/ApiSuccessResponse;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/api/ApiSuccessResponse<",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/PaymentType;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/PaymentType;",
            ">;"
        }
    .end annotation

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lco/tamara/sdk/api/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public bridge synthetic shouldFetch(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lco/tamara/sdk/repository/InformationRepository$paymentType$1;->shouldFetch(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method protected shouldFetch(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/PaymentType;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
