.class public Lco/tamara/sdk/error/BaseException;
.super Ljava/lang/Throwable;
.source "BaseException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/error/BaseException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lco/tamara/sdk/error/BaseException;",
        "",
        "errorCode",
        "",
        "message",
        "",
        "(ILjava/lang/String;)V",
        "getErrorCode",
        "()I",
        "setErrorCode",
        "(I)V",
        "Companion",
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
.field public static final Companion:Lco/tamara/sdk/error/BaseException$Companion;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/error/BaseException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/error/BaseException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/error/BaseException;->Companion:Lco/tamara/sdk/error/BaseException$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lco/tamara/sdk/error/BaseException;->errorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 0

    .line 3
    iget p0, p0, Lco/tamara/sdk/error/BaseException;->errorCode:I

    return p0
.end method

.method public final setErrorCode(I)V
    .locals 0

    .line 3
    iput p1, p0, Lco/tamara/sdk/error/BaseException;->errorCode:I

    return-void
.end method
