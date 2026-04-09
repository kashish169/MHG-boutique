.class public final Lco/tamara/sdk/model/response/AvailablePayment;
.super Ljava/lang/Object;
.source "AvailablePayment.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J7\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\t\u0010\u001a\u001a\u00020\u0007H\u00d6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0007H\u00d6\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\n\"\u0004\u0008\u0014\u0010\u000c\u00a8\u0006&"
    }
    d2 = {
        "Lco/tamara/sdk/model/response/AvailablePayment;",
        "Landroid/os/Parcelable;",
        "payment_type",
        "",
        "description_en",
        "description_ar",
        "instalment",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "getDescription_ar",
        "()Ljava/lang/String;",
        "setDescription_ar",
        "(Ljava/lang/String;)V",
        "getDescription_en",
        "setDescription_en",
        "getInstalment",
        "()I",
        "setInstalment",
        "(I)V",
        "getPayment_type",
        "setPayment_type",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
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
            "Lco/tamara/sdk/model/response/AvailablePayment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description_ar:Ljava/lang/String;

.field private description_en:Ljava/lang/String;

.field private instalment:I

.field private payment_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/tamara/sdk/model/response/AvailablePayment$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/response/AvailablePayment$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/response/AvailablePayment;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-direct/range {v0 .. v6}, Lco/tamara/sdk/model/response/AvailablePayment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    .line 11
    iput p4, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lco/tamara/sdk/model/response/AvailablePayment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/response/AvailablePayment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lco/tamara/sdk/model/response/AvailablePayment;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/tamara/sdk/model/response/AvailablePayment;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/tamara/sdk/model/response/AvailablePayment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lco/tamara/sdk/model/response/AvailablePayment;
    .locals 0

    new-instance p0, Lco/tamara/sdk/model/response/AvailablePayment;

    invoke-direct {p0, p1, p2, p3, p4}, Lco/tamara/sdk/model/response/AvailablePayment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

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
    instance-of v1, p1, Lco/tamara/sdk/model/response/AvailablePayment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/response/AvailablePayment;

    iget-object v1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    iget p1, p1, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDescription_ar()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription_en()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstalment()I
    .locals 0

    .line 11
    iget p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    return p0
.end method

.method public final getPayment_type()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDescription_ar(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    return-void
.end method

.method public final setDescription_en(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    return-void
.end method

.method public final setInstalment(I)V
    .locals 0

    .line 11
    iput p1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    return-void
.end method

.method public final setPayment_type(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    iget-object v1, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    iget-object v2, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    iget p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AvailablePayment(payment_type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", description_en="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", description_ar="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instalment="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/response/AvailablePayment;->payment_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_en:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/response/AvailablePayment;->description_ar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lco/tamara/sdk/model/response/AvailablePayment;->instalment:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
