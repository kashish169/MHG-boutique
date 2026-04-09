.class public abstract Lco/tamara/sdk/api/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/api/ApiResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u0004*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0004B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0003\u0082\u0001\u0003\u0005\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lco/tamara/sdk/api/ApiResponse;",
        "T",
        "",
        "()V",
        "Companion",
        "Lco/tamara/sdk/api/ApiEmptyResponse;",
        "Lco/tamara/sdk/api/ApiErrorResponse;",
        "Lco/tamara/sdk/api/ApiSuccessResponse;",
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


# static fields
.field public static final Companion:Lco/tamara/sdk/api/ApiResponse$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/api/ApiResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/api/ApiResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/api/ApiResponse;->Companion:Lco/tamara/sdk/api/ApiResponse$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lco/tamara/sdk/api/ApiResponse;-><init>()V

    return-void
.end method
