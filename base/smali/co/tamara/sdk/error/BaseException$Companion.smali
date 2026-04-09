.class public final Lco/tamara/sdk/error/BaseException$Companion;
.super Ljava/lang/Object;
.source "BaseException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/error/BaseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lco/tamara/sdk/error/BaseException$Companion;",
        "",
        "()V",
        "newInstance",
        "Lco/tamara/sdk/error/BaseException;",
        "code",
        "",
        "message",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lco/tamara/sdk/error/BaseException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(ILjava/lang/String;)Lco/tamara/sdk/error/BaseException;
    .locals 0

    const/16 p0, 0x190

    if-eq p1, p0, :cond_2

    const/16 p0, 0x191

    if-eq p1, p0, :cond_1

    const/16 p0, 0x194

    if-eq p1, p0, :cond_0

    .line 11
    new-instance p0, Lco/tamara/sdk/error/UnknownException;

    invoke-direct {p0, p2}, Lco/tamara/sdk/error/UnknownException;-><init>(Ljava/lang/String;)V

    check-cast p0, Lco/tamara/sdk/error/BaseException;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lco/tamara/sdk/error/NotFoundException;

    invoke-direct {p0, p2}, Lco/tamara/sdk/error/NotFoundException;-><init>(Ljava/lang/String;)V

    check-cast p0, Lco/tamara/sdk/error/BaseException;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Lco/tamara/sdk/error/NotAuthorizedException;

    invoke-direct {p0, p2}, Lco/tamara/sdk/error/NotAuthorizedException;-><init>(Ljava/lang/String;)V

    check-cast p0, Lco/tamara/sdk/error/BaseException;

    goto :goto_0

    .line 8
    :cond_2
    new-instance p0, Lco/tamara/sdk/error/BadRequestException;

    invoke-direct {p0, p2}, Lco/tamara/sdk/error/BadRequestException;-><init>(Ljava/lang/String;)V

    check-cast p0, Lco/tamara/sdk/error/BaseException;

    :goto_0
    return-object p0
.end method
