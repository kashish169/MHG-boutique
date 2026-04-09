.class public final Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1$onActive$1;
.super Ljava/lang/Object;
.source "LiveDataCallAdapter.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;->onActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J$\u0010\u0008\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "co/tamara/sdk/util/LiveDataCallAdapter$adapt$1$onActive$1",
        "Lretrofit2/Callback;",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "throwable",
        "",
        "onResponse",
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


# instance fields
.field final synthetic this$0:Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1$onActive$1;->this$0:Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "throwable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1$onActive$1;->this$0:Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;

    sget-object p1, Lco/tamara/sdk/api/ApiResponse;->Companion:Lco/tamara/sdk/api/ApiResponse$Companion;

    invoke-virtual {p1, p2}, Lco/tamara/sdk/api/ApiResponse$Companion;->create(Ljava/lang/Throwable;)Lco/tamara/sdk/api/ApiErrorResponse;

    move-result-object p1

    check-cast p1, Lco/tamara/sdk/api/ApiResponse;

    invoke-static {p0, p1}, Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;->access$postValue(Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;Lco/tamara/sdk/api/ApiResponse;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;",
            "Lretrofit2/Response<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1$onActive$1;->this$0:Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;

    sget-object p1, Lco/tamara/sdk/api/ApiResponse;->Companion:Lco/tamara/sdk/api/ApiResponse$Companion;

    invoke-virtual {p1, p2}, Lco/tamara/sdk/api/ApiResponse$Companion;->create(Lretrofit2/Response;)Lco/tamara/sdk/api/ApiResponse;

    move-result-object p1

    invoke-static {p0, p1}, Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;->access$postValue(Lco/tamara/sdk/util/LiveDataCallAdapter$adapt$1;Lco/tamara/sdk/api/ApiResponse;)V

    return-void
.end method
