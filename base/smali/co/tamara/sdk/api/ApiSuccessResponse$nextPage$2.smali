.class final Lco/tamara/sdk/api/ApiSuccessResponse$nextPage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/api/ApiSuccessResponse;-><init>(Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke",
        "()Ljava/lang/Integer;"
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
.field final synthetic this$0:Lco/tamara/sdk/api/ApiSuccessResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/tamara/sdk/api/ApiSuccessResponse<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lco/tamara/sdk/api/ApiSuccessResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/api/ApiSuccessResponse<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lco/tamara/sdk/api/ApiSuccessResponse$nextPage$2;->this$0:Lco/tamara/sdk/api/ApiSuccessResponse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 4

    .line 76
    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse$nextPage$2;->this$0:Lco/tamara/sdk/api/ApiSuccessResponse;

    invoke-virtual {p0}, Lco/tamara/sdk/api/ApiSuccessResponse;->getLinks()Ljava/util/Map;

    move-result-object p0

    const-string v0, "next"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 77
    invoke-static {}, Lco/tamara/sdk/api/ApiSuccessResponse;->access$getPAGE_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    .line 86
    :catch_0
    sget-object v1, Lco/tamara/sdk/log/Logging;->Companion:Lco/tamara/sdk/log/Logging$Companion;

    const-string v2, "cannot parse next page from %s"

    invoke-virtual {v1, v2, p0}, Lco/tamara/sdk/log/Logging$Companion;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lco/tamara/sdk/api/ApiSuccessResponse$nextPage$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
