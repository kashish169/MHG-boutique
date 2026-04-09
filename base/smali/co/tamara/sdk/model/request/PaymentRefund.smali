.class public final Lco/tamara/sdk/model/request/PaymentRefund;
.super Ljava/lang/Object;
.source "PaymentRefund.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013H\u00d6\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lco/tamara/sdk/model/request/PaymentRefund;",
        "Landroid/os/Parcelable;",
        "comment",
        "",
        "totalAmount",
        "Lco/tamara/sdk/model/Amount;",
        "(Ljava/lang/String;Lco/tamara/sdk/model/Amount;)V",
        "getComment",
        "()Ljava/lang/String;",
        "setComment",
        "(Ljava/lang/String;)V",
        "getTotalAmount",
        "()Lco/tamara/sdk/model/Amount;",
        "setTotalAmount",
        "(Lco/tamara/sdk/model/Amount;)V",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
            "Lco/tamara/sdk/model/request/PaymentRefund;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment"
    .end annotation
.end field

.field private totalAmount:Lco/tamara/sdk/model/Amount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_amount"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/tamara/sdk/model/request/PaymentRefund$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/request/PaymentRefund$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/request/PaymentRefund;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lco/tamara/sdk/model/request/PaymentRefund;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2}, Lco/tamara/sdk/model/request/PaymentRefund;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/request/PaymentRefund;Ljava/lang/String;Lco/tamara/sdk/model/Amount;ILjava/lang/Object;)Lco/tamara/sdk/model/request/PaymentRefund;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/model/request/PaymentRefund;->copy(Ljava/lang/String;Lco/tamara/sdk/model/Amount;)Lco/tamara/sdk/model/request/PaymentRefund;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lco/tamara/sdk/model/Amount;)Lco/tamara/sdk/model/request/PaymentRefund;
    .locals 0

    new-instance p0, Lco/tamara/sdk/model/request/PaymentRefund;

    invoke-direct {p0, p1, p2}, Lco/tamara/sdk/model/request/PaymentRefund;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lco/tamara/sdk/model/request/PaymentRefund;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/request/PaymentRefund;

    iget-object v1, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    iget-object p1, p1, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 11
    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    return-void
.end method

.method public final setTotalAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PaymentRefund(comment="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", totalAmount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentRefund;->totalAmount:Lco/tamara/sdk/model/Amount;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method
