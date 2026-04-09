.class public final Lco/tamara/sdk/model/request/PaymentOptions;
.super Ljava/lang/Object;
.source "PaymentOptions.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0008\u0018\u00002\u00020\u0001B3\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00c6\u0003J7\u0010\u001b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\u0013\u0010\u001e\u001a\u00020\u00082\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001dH\u00d6\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R \u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\r\u00a8\u0006("
    }
    d2 = {
        "Lco/tamara/sdk/model/request/PaymentOptions;",
        "Landroid/os/Parcelable;",
        "country",
        "",
        "orderValue",
        "Lco/tamara/sdk/model/Amount;",
        "phoneNumber",
        "isVip",
        "",
        "(Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;Z)V",
        "getCountry",
        "()Ljava/lang/String;",
        "setCountry",
        "(Ljava/lang/String;)V",
        "()Z",
        "setVip",
        "(Z)V",
        "getOrderValue",
        "()Lco/tamara/sdk/model/Amount;",
        "setOrderValue",
        "(Lco/tamara/sdk/model/Amount;)V",
        "getPhoneNumber",
        "setPhoneNumber",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "",
        "equals",
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
            "Lco/tamara/sdk/model/request/PaymentOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private isVip:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_vip"
    .end annotation
.end field

.field private orderValue:Lco/tamara/sdk/model/Amount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_value"
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/tamara/sdk/model/request/PaymentOptions$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/request/PaymentOptions$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/request/PaymentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lco/tamara/sdk/model/request/PaymentOptions;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    .line 12
    iput-object p3, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    .line 13
    iput-boolean p4, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lco/tamara/sdk/model/request/PaymentOptions;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/request/PaymentOptions;Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZILjava/lang/Object;)Lco/tamara/sdk/model/request/PaymentOptions;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/tamara/sdk/model/request/PaymentOptions;->copy(Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;Z)Lco/tamara/sdk/model/request/PaymentOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;Z)Lco/tamara/sdk/model/request/PaymentOptions;
    .locals 0

    new-instance p0, Lco/tamara/sdk/model/request/PaymentOptions;

    invoke-direct {p0, p1, p2, p3, p4}, Lco/tamara/sdk/model/request/PaymentOptions;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Amount;Ljava/lang/String;Z)V

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
    instance-of v1, p1, Lco/tamara/sdk/model/request/PaymentOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/request/PaymentOptions;

    iget-object v1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    iget-boolean p1, p1, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderValue()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 11
    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isVip()Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    return p0
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    return-void
.end method

.method public final setOrderValue(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public final setVip(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    iget-object v1, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    iget-object v2, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    iget-boolean p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PaymentOptions(country="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", orderValue="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", phoneNumber="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isVip="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->orderValue:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object p2, p0, Lco/tamara/sdk/model/request/PaymentOptions;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lco/tamara/sdk/model/request/PaymentOptions;->isVip:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
