.class public final Lco/tamara/sdk/model/response/orderdetail/ItemDetail;
.super Ljava/lang/Object;
.source "ItemDetail.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008-\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bu\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000fJ\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010/\u001a\u00020\tH\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jy\u00104\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\t\u00105\u001a\u00020\tH\u00d6\u0001J\u0013\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u000109H\u00d6\u0003J\t\u0010:\u001a\u00020\tH\u00d6\u0001J\t\u0010;\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\tH\u00d6\u0001R \u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R \u0010\r\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R \u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0015\"\u0004\u0008!\u0010\u0017R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010\u0017R \u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0011\"\u0004\u0008%\u0010\u0013R \u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0011\"\u0004\u0008\'\u0010\u0013R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0011\"\u0004\u0008)\u0010\u0013\u00a8\u0006A"
    }
    d2 = {
        "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
        "Landroid/os/Parcelable;",
        "name",
        "",
        "referenceId",
        "sku",
        "unitPrice",
        "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
        "quantity",
        "",
        "discountAmount",
        "taxAmount",
        "totalAmount",
        "imageUrl",
        "itemUrl",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;)V",
        "getDiscountAmount",
        "()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
        "setDiscountAmount",
        "(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V",
        "getImageUrl",
        "()Ljava/lang/String;",
        "setImageUrl",
        "(Ljava/lang/String;)V",
        "getItemUrl",
        "setItemUrl",
        "getName",
        "setName",
        "getQuantity",
        "()I",
        "setQuantity",
        "(I)V",
        "getReferenceId",
        "setReferenceId",
        "getSku",
        "setSku",
        "getTaxAmount",
        "setTaxAmount",
        "getTotalAmount",
        "setTotalAmount",
        "getUnitPrice",
        "setUnitPrice",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
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
            "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_amount"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field private itemUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_url"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private quantity:I

.field private referenceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reference_id"
    .end annotation
.end field

.field private sku:Ljava/lang/String;

.field private taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_amount"
    .end annotation
.end field

.field private totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_amount"
    .end annotation
.end field

.field private unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unit_price"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/response/orderdetail/ItemDetail$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    .line 13
    iput p5, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    .line 14
    iput-object p6, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    .line 15
    iput-object p7, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    .line 16
    iput-object p8, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    .line 17
    iput-object p9, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    .line 18
    iput-object p10, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    .line 8
    const-string v0, ""

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    const/4 v0, 0x0

    if-eqz p12, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p10, v0

    :cond_9
    invoke-direct/range {p0 .. p10}, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/response/orderdetail/ItemDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lco/tamara/sdk/model/response/orderdetail/ItemDetail;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;)Lco/tamara/sdk/model/response/orderdetail/ItemDetail;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    return p0
.end method

.method public final component6()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component7()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component8()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;)Lco/tamara/sdk/model/response/orderdetail/ItemDetail;
    .locals 12

    const-string v0, "name"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;

    move-object v1, v0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;ILco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
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
    instance-of v1, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    iget v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    iget-object p1, p1, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getDiscountAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 14
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getItemUrl()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuantity()I
    .locals 0

    .line 13
    iget p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    return p0
.end method

.method public final getReferenceId()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    return-object p0
.end method

.method public final getTaxAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 15
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getTotalAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 16
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getUnitPrice()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 12
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final setDiscountAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setItemUrl(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    return-void
.end method

.method public final setQuantity(I)V
    .locals 0

    .line 13
    iput p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    return-void
.end method

.method public final setReferenceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    return-void
.end method

.method public final setSku(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    return-void
.end method

.method public final setTaxAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setTotalAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setUnitPrice(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    iget-object v3, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget v4, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    iget-object v5, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v6, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v7, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v8, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ItemDetail(name="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", referenceId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sku="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", unitPrice="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", quantity="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", discountAmount="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", taxAmount="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", totalAmount="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", imageUrl="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", itemUrl="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->referenceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->sku:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->unitPrice:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->quantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object p2, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->itemUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
