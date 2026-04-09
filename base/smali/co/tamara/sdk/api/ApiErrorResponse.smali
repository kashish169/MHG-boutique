.class public final Lco/tamara/sdk/api/ApiErrorResponse;
.super Lco/tamara/sdk/api/ApiResponse;
.source "ApiResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lco/tamara/sdk/api/ApiResponse<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0004H\u00c6\u0003J\u0019\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lco/tamara/sdk/api/ApiErrorResponse;",
        "T",
        "Lco/tamara/sdk/api/ApiResponse;",
        "error",
        "Lco/tamara/sdk/error/BaseException;",
        "(Lco/tamara/sdk/error/BaseException;)V",
        "getError",
        "()Lco/tamara/sdk/error/BaseException;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final error:Lco/tamara/sdk/error/BaseException;


# direct methods
.method public constructor <init>(Lco/tamara/sdk/error/BaseException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0}, Lco/tamara/sdk/api/ApiResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lco/tamara/sdk/api/ApiErrorResponse;->error:Lco/tamara/sdk/error/BaseException;

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/api/ApiErrorResponse;Lco/tamara/sdk/error/BaseException;ILjava/lang/Object;)Lco/tamara/sdk/api/ApiErrorResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lco/tamara/sdk/api/ApiErrorResponse;->error:Lco/tamara/sdk/error/BaseException;

    :cond_0
    invoke-virtual {p0, p1}, Lco/tamara/sdk/api/ApiErrorResponse;->copy(Lco/tamara/sdk/error/BaseException;)Lco/tamara/sdk/api/ApiErrorResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lco/tamara/sdk/error/BaseException;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/api/ApiErrorResponse;->error:Lco/tamara/sdk/error/BaseException;

    return-object p0
.end method

.method public final copy(Lco/tamara/sdk/error/BaseException;)Lco/tamara/sdk/api/ApiErrorResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/error/BaseException;",
            ")",
            "Lco/tamara/sdk/api/ApiErrorResponse<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "error"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lco/tamara/sdk/api/ApiErrorResponse;

    invoke-direct {p0, p1}, Lco/tamara/sdk/api/ApiErrorResponse;-><init>(Lco/tamara/sdk/error/BaseException;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lco/tamara/sdk/api/ApiErrorResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/api/ApiErrorResponse;

    iget-object p0, p0, Lco/tamara/sdk/api/ApiErrorResponse;->error:Lco/tamara/sdk/error/BaseException;

    iget-object p1, p1, Lco/tamara/sdk/api/ApiErrorResponse;->error:Lco/tamara/sdk/error/BaseException;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getError()Lco/tamara/sdk/error/BaseException;
    .locals 0

    .line 118
    iget-object p0, p0, Lco/tamara/sdk/api/ApiErrorResponse;->error:Lco/tamara/sdk/error/BaseException;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/api/ApiErrorResponse;->error:Lco/tamara/sdk/error/BaseException;

    invoke-virtual {p0}, Lco/tamara/sdk/error/BaseException;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lco/tamara/sdk/api/ApiErrorResponse;->error:Lco/tamara/sdk/error/BaseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApiErrorResponse(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
