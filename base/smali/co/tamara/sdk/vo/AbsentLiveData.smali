.class public final Lco/tamara/sdk/vo/AbsentLiveData;
.super Landroidx/lifecycle/LiveData;
.source "AbsentLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/vo/AbsentLiveData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u0004*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0004B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lco/tamara/sdk/vo/AbsentLiveData;",
        "T",
        "Landroidx/lifecycle/LiveData;",
        "()V",
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
.field public static final Companion:Lco/tamara/sdk/vo/AbsentLiveData$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/vo/AbsentLiveData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/vo/AbsentLiveData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/vo/AbsentLiveData;->Companion:Lco/tamara/sdk/vo/AbsentLiveData$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lco/tamara/sdk/vo/AbsentLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lco/tamara/sdk/vo/AbsentLiveData;-><init>()V

    return-void
.end method
