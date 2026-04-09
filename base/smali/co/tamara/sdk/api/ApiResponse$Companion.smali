.class public final Lco/tamara/sdk/api/ApiResponse$Companion;
.super Ljava/lang/Object;
.source "ApiResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/api/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0008\"\u0004\u0008\u0001\u0010\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lco/tamara/sdk/api/ApiResponse$Companion;",
        "",
        "()V",
        "create",
        "Lco/tamara/sdk/api/ApiErrorResponse;",
        "T",
        "error",
        "",
        "Lco/tamara/sdk/api/ApiResponse;",
        "response",
        "Lretrofit2/Response;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lco/tamara/sdk/api/ApiResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Throwable;)Lco/tamara/sdk/api/ApiErrorResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lco/tamara/sdk/api/ApiErrorResponse<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "error"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p0, Lco/tamara/sdk/api/ApiErrorResponse;

    sget-object v0, Lco/tamara/sdk/error/BaseException;->Companion:Lco/tamara/sdk/error/BaseException$Companion;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "unknown error"

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lco/tamara/sdk/error/BaseException$Companion;->newInstance(ILjava/lang/String;)Lco/tamara/sdk/error/BaseException;

    move-result-object p1

    invoke-direct {p0, p1}, Lco/tamara/sdk/api/ApiErrorResponse;-><init>(Lco/tamara/sdk/error/BaseException;)V

    return-object p0
.end method

.method public final create(Lretrofit2/Response;)Lco/tamara/sdk/api/ApiResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TT;>;)",
            "Lco/tamara/sdk/api/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 38
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 39
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Lco/tamara/sdk/api/ApiSuccessResponse;

    .line 44
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "link"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_1
    invoke-direct {v1, p0, v0}, Lco/tamara/sdk/api/ApiSuccessResponse;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lco/tamara/sdk/api/ApiResponse;

    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    new-instance p0, Lco/tamara/sdk/api/ApiEmptyResponse;

    invoke-direct {p0}, Lco/tamara/sdk/api/ApiEmptyResponse;-><init>()V

    move-object v1, p0

    check-cast v1, Lco/tamara/sdk/api/ApiResponse;

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p0

    .line 49
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 51
    :cond_5
    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_6
    new-instance p1, Lco/tamara/sdk/api/ApiErrorResponse;

    sget-object v1, Lco/tamara/sdk/error/BaseException;->Companion:Lco/tamara/sdk/error/BaseException$Companion;

    if-nez v0, :cond_7

    const-string/jumbo v0, "unknown error"

    :cond_7
    invoke-virtual {v1, p0, v0}, Lco/tamara/sdk/error/BaseException$Companion;->newInstance(ILjava/lang/String;)Lco/tamara/sdk/error/BaseException;

    move-result-object p0

    invoke-direct {p1, p0}, Lco/tamara/sdk/api/ApiErrorResponse;-><init>(Lco/tamara/sdk/error/BaseException;)V

    move-object v1, p1

    check-cast v1, Lco/tamara/sdk/api/ApiResponse;

    :goto_1
    return-object v1
.end method
