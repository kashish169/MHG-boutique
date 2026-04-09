.class public final Lco/tamara/sdk/PaymentResult;
.super Ljava/lang/Object;
.source "PaymentResult.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/PaymentResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lco/tamara/sdk/PaymentResult;",
        "Landroid/os/Parcelable;",
        "status",
        "",
        "error",
        "",
        "(ILjava/lang/Throwable;)V",
        "getError",
        "()Ljava/lang/Throwable;",
        "setError",
        "(Ljava/lang/Throwable;)V",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "describeContents",
        "getMessage",
        "",
        "hasError",
        "",
        "isCancelled",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lco/tamara/sdk/PaymentResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lco/tamara/sdk/PaymentResult$Companion;

.field public static final STATUS_CANCEL:I = 0x64

.field public static final STATUS_FAILURE:I = 0x66

.field public static final STATUS_SUCCESS:I = 0x65


# instance fields
.field private error:Ljava/lang/Throwable;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/PaymentResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/PaymentResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/PaymentResult;->Companion:Lco/tamara/sdk/PaymentResult$Companion;

    new-instance v0, Lco/tamara/sdk/PaymentResult$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/PaymentResult$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/PaymentResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lco/tamara/sdk/PaymentResult;->status:I

    .line 13
    iput-object p2, p0, Lco/tamara/sdk/PaymentResult;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lco/tamara/sdk/PaymentResult;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getError()Ljava/lang/Throwable;
    .locals 0

    .line 13
    iget-object p0, p0, Lco/tamara/sdk/PaymentResult;->error:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lco/tamara/sdk/PaymentResult;->error:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    .line 12
    iget p0, p0, Lco/tamara/sdk/PaymentResult;->status:I

    return p0
.end method

.method public final hasError()Z
    .locals 1

    .line 57
    iget p0, p0, Lco/tamara/sdk/PaymentResult;->status:I

    const/16 v0, 0x66

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 61
    iget p0, p0, Lco/tamara/sdk/PaymentResult;->status:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setError(Ljava/lang/Throwable;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lco/tamara/sdk/PaymentResult;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 12
    iput p1, p0, Lco/tamara/sdk/PaymentResult;->status:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lco/tamara/sdk/PaymentResult;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lco/tamara/sdk/PaymentResult;->error:Ljava/lang/Throwable;

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
