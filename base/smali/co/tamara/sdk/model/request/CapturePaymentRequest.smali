.class public final Lco/tamara/sdk/model/request/CapturePaymentRequest;
.super Ljava/lang/Object;
.source "CapturePaymentRequest.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u007f\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0018\u0008\u0002\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0012J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0019\u00102\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bH\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u0083\u0001\u00108\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0018\u0008\u0002\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00c6\u0001J\t\u00109\u001a\u00020:H\u00d6\u0001J\u0013\u0010;\u001a\u00020<2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u00d6\u0003J\t\u0010?\u001a\u00020:H\u00d6\u0001J\t\u0010@\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020:H\u00d6\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR*\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R \u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0014\"\u0004\u0008$\u0010\u0016R \u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0018\"\u0004\u0008&\u0010\u001aR \u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R \u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0018\"\u0004\u0008,\u0010\u001aR \u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0018\"\u0004\u0008.\u0010\u001a\u00a8\u0006F"
    }
    d2 = {
        "Lco/tamara/sdk/model/request/CapturePaymentRequest;",
        "Landroid/os/Parcelable;",
        "orderId",
        "",
        "billingAddress",
        "Lco/tamara/sdk/model/Address;",
        "discountAmount",
        "Lco/tamara/sdk/model/Amount;",
        "items",
        "Ljava/util/ArrayList;",
        "Lco/tamara/sdk/model/Item;",
        "Lkotlin/collections/ArrayList;",
        "shippingAddress",
        "shippingAmount",
        "taxAmount",
        "totalAmount",
        "shippingInfo",
        "Lco/tamara/sdk/model/request/ShippingInfo;",
        "(Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;)V",
        "getBillingAddress",
        "()Lco/tamara/sdk/model/Address;",
        "setBillingAddress",
        "(Lco/tamara/sdk/model/Address;)V",
        "getDiscountAmount",
        "()Lco/tamara/sdk/model/Amount;",
        "setDiscountAmount",
        "(Lco/tamara/sdk/model/Amount;)V",
        "getItems",
        "()Ljava/util/ArrayList;",
        "setItems",
        "(Ljava/util/ArrayList;)V",
        "getOrderId",
        "()Ljava/lang/String;",
        "setOrderId",
        "(Ljava/lang/String;)V",
        "getShippingAddress",
        "setShippingAddress",
        "getShippingAmount",
        "setShippingAmount",
        "getShippingInfo",
        "()Lco/tamara/sdk/model/request/ShippingInfo;",
        "setShippingInfo",
        "(Lco/tamara/sdk/model/request/ShippingInfo;)V",
        "getTaxAmount",
        "setTaxAmount",
        "getTotalAmount",
        "setTotalAmount",
        "component1",
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
            "Lco/tamara/sdk/model/request/CapturePaymentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private billingAddress:Lco/tamara/sdk/model/Address;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billing_address"
    .end annotation
.end field

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

.field private orderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_id"
    .end annotation
.end field

.field private shippingAddress:Lco/tamara/sdk/model/Address;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_address"
    .end annotation
.end field

.field private shippingAmount:Lco/tamara/sdk/model/Amount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_amount"
    .end annotation
.end field

.field private shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_info"
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

    new-instance v0, Lco/tamara/sdk/model/request/CapturePaymentRequest$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/request/CapturePaymentRequest$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lco/tamara/sdk/model/request/CapturePaymentRequest;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/Address;",
            "Lco/tamara/sdk/model/Amount;",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;",
            "Lco/tamara/sdk/model/Address;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/request/ShippingInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    .line 12
    iput-object p3, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

    .line 13
    iput-object p4, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    .line 14
    iput-object p5, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    .line 15
    iput-object p6, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    .line 16
    iput-object p7, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    .line 17
    iput-object p8, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    .line 18
    iput-object p9, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 13
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move-object p9, v0

    .line 9
    :cond_8
    invoke-direct/range {p0 .. p9}, Lco/tamara/sdk/model/request/CapturePaymentRequest;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/request/CapturePaymentRequest;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;ILjava/lang/Object;)Lco/tamara/sdk/model/request/CapturePaymentRequest;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lco/tamara/sdk/model/request/CapturePaymentRequest;->copy(Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;)Lco/tamara/sdk/model/request/CapturePaymentRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lco/tamara/sdk/model/Address;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    return-object p0
.end method

.method public final component3()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component4()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final component5()Lco/tamara/sdk/model/Address;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    return-object p0
.end method

.method public final component6()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component7()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component8()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component9()Lco/tamara/sdk/model/request/ShippingInfo;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;)Lco/tamara/sdk/model/request/CapturePaymentRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/Address;",
            "Lco/tamara/sdk/model/Amount;",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;",
            "Lco/tamara/sdk/model/Address;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/request/ShippingInfo;",
            ")",
            "Lco/tamara/sdk/model/request/CapturePaymentRequest;"
        }
    .end annotation

    const-string v0, "items"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lco/tamara/sdk/model/request/CapturePaymentRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lco/tamara/sdk/model/request/CapturePaymentRequest;-><init>(Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/request/ShippingInfo;)V

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
    instance-of v1, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;

    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    iget-object p1, p1, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getBillingAddress()Lco/tamara/sdk/model/Address;
    .locals 0

    .line 11
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    return-object p0
.end method

.method public final getDiscountAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 12
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

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

    .line 13
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    return-object p0
.end method

.method public final getShippingAddress()Lco/tamara/sdk/model/Address;
    .locals 0

    .line 14
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    return-object p0
.end method

.method public final getShippingAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 15
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final getShippingInfo()Lco/tamara/sdk/model/request/ShippingInfo;
    .locals 0

    .line 18
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    return-object p0
.end method

.method public final getTaxAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 16
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final getTotalAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 17
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lco/tamara/sdk/model/Address;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lco/tamara/sdk/model/Address;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lco/tamara/sdk/model/request/ShippingInfo;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBillingAddress(Lco/tamara/sdk/model/Address;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    return-void
.end method

.method public final setDiscountAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

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

    .line 13
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public final setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    return-void
.end method

.method public final setShippingAddress(Lco/tamara/sdk/model/Address;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    return-void
.end method

.method public final setShippingAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public final setShippingInfo(Lco/tamara/sdk/model/request/ShippingInfo;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    return-void
.end method

.method public final setTaxAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public final setTotalAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    iget-object v1, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    iget-object v2, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    iget-object v4, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    iget-object v5, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    iget-object v6, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    iget-object v7, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CapturePaymentRequest(orderId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", billingAddress="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", discountAmount="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", items="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shippingAddress="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shippingAmount="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", taxAmount="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", totalAmount="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shippingInfo="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->billingAddress:Lco/tamara/sdk/model/Address;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Address;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->discountAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/tamara/sdk/model/Item;

    invoke-virtual {v3, p1, p2}, Lco/tamara/sdk/model/Item;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAddress:Lco/tamara/sdk/model/Address;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Address;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->taxAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    iget-object v0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->totalAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    iget-object p0, p0, Lco/tamara/sdk/model/request/CapturePaymentRequest;->shippingInfo:Lco/tamara/sdk/model/request/ShippingInfo;

    if-nez p0, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/model/request/ShippingInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    return-void
.end method
