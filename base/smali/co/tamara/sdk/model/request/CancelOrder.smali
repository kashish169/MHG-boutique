.class public final Lco/tamara/sdk/model/request/CancelOrder;
.super Ljava/lang/Object;
.source "CancelOrder.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0008\u0018\u00002\u00020\u0001BO\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0018\u0008\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0019\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003JS\u0010\u001f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0018\u0008\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u00d6\u0003J\t\u0010&\u001a\u00020!H\u00d6\u0001J\t\u0010\'\u001a\u00020(H\u00d6\u0001J\u0019\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020!H\u00d6\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R \u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR \u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\r\"\u0004\u0008\u0017\u0010\u000fR \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000f\u00a8\u0006."
    }
    d2 = {
        "Lco/tamara/sdk/model/request/CancelOrder;",
        "Landroid/os/Parcelable;",
        "discountAmount",
        "Lco/tamara/sdk/model/Amount;",
        "items",
        "Ljava/util/ArrayList;",
        "Lco/tamara/sdk/model/Item;",
        "Lkotlin/collections/ArrayList;",
        "shippingAmount",
        "taxAmount",
        "totalAmount",
        "(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;)V",
        "getDiscountAmount",
        "()Lco/tamara/sdk/model/Amount;",
        "setDiscountAmount",
        "(Lco/tamara/sdk/model/Amount;)V",
        "getItems",
        "()Ljava/util/ArrayList;",
        "setItems",
        "(Ljava/util/ArrayList;)V",
        "getShippingAmount",
        "setShippingAmount",
        "getTaxAmount",
        "setTaxAmount",
        "getTotalAmount",
        "setTotalAmount",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
            "Lco/tamara/sdk/model/request/CancelOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private discountAmount:Lco/tamara/sdk/model/Amount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_amount"
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field private shippingAmount:Lco/tamara/sdk/model/Amount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_amount"
    .end annotation
.end field

.field private taxAmount:Lco/tamara/sdk/model/Amount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_amount"
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

    new-instance v0, Lco/tamara/sdk/model/request/CancelOrder$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/request/CancelOrder$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/request/CancelOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lco/tamara/sdk/model/request/CancelOrder;-><init>(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/Amount;",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    .line 12
    iput-object p2, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    .line 13
    iput-object p3, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    .line 14
    iput-object p4, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    .line 15
    iput-object p5, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public synthetic constructor <init>(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    .line 10
    :cond_4
    invoke-direct/range {p0 .. p5}, Lco/tamara/sdk/model/request/CancelOrder;-><init>(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/request/CancelOrder;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;ILjava/lang/Object;)Lco/tamara/sdk/model/request/CancelOrder;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lco/tamara/sdk/model/request/CancelOrder;->copy(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;)Lco/tamara/sdk/model/request/CancelOrder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component2()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final component3()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component4()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component5()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final copy(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;)Lco/tamara/sdk/model/request/CancelOrder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/Amount;",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            ")",
            "Lco/tamara/sdk/model/request/CancelOrder;"
        }
    .end annotation

    const-string p0, "items"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lco/tamara/sdk/model/request/CancelOrder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lco/tamara/sdk/model/request/CancelOrder;-><init>(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;)V

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
    instance-of v1, p1, Lco/tamara/sdk/model/request/CancelOrder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/request/CancelOrder;

    iget-object v1, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    iget-object p1, p1, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDiscountAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 11
    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final getItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getShippingAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 13
    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final getTaxAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 14
    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final getTotalAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 15
    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setDiscountAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public final setItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public final setShippingAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public final setTaxAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public final setTotalAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    iget-object v1, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CancelOrder(discountAmount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", items="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shippingAmount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", taxAmount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", totalAmount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/request/CancelOrder;->discountAmount:Lco/tamara/sdk/model/Amount;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lco/tamara/sdk/model/request/CancelOrder;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/tamara/sdk/model/Item;

    invoke-virtual {v3, p1, p2}, Lco/tamara/sdk/model/Item;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lco/tamara/sdk/model/request/CancelOrder;->shippingAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lco/tamara/sdk/model/request/CancelOrder;->taxAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object p0, p0, Lco/tamara/sdk/model/request/CancelOrder;->totalAmount:Lco/tamara/sdk/model/Amount;

    if-nez p0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    return-void
.end method
