.class public final Lco/tamara/sdk/model/Order;
.super Ljava/lang/Object;
.source "Order.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008]\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u00a1\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0018\u0008\u0002\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001d\u0012\u001b\u0008\u0002\u0010 \u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u00a2\u0006\u0002\u0008#\u0012\u001b\u0008\u0002\u0010$\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u00a2\u0006\u0002\u0008#\u00a2\u0006\u0002\u0010%J\u000b\u0010d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010e\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\t\u0010j\u001a\u00020\u0007H\u00c6\u0003J\t\u0010k\u001a\u00020\u001bH\u00c6\u0003J\u0010\u0010l\u001a\u0004\u0018\u00010\u001dH\u00c6\u0003\u00a2\u0006\u0002\u0010=J\u000b\u0010m\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010n\u001a\u0004\u0018\u00010\u001dH\u00c6\u0003\u00a2\u0006\u0002\u0010=J\u000b\u0010o\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001c\u0010p\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u00a2\u0006\u0002\u0008#H\u00c6\u0003J\u001c\u0010q\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u00a2\u0006\u0002\u0008#H\u00c6\u0003J\t\u0010r\u001a\u00020\u0007H\u00c6\u0003J\t\u0010s\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0019\u0010u\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000eH\u00c6\u0003J\t\u0010v\u001a\u00020\u0007H\u00c6\u0003J\t\u0010w\u001a\u00020\u0011H\u00c6\u0003J\t\u0010x\u001a\u00020\u0007H\u00c6\u0003J\u00aa\u0002\u0010y\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0018\u0008\u0002\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001d2\u001b\u0008\u0002\u0010 \u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u00a2\u0006\u0002\u0008#2\u001b\u0008\u0002\u0010$\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u00a2\u0006\u0002\u0008#H\u00c6\u0001\u00a2\u0006\u0002\u0010zJ\t\u0010{\u001a\u00020\u001dH\u00d6\u0001J\u0013\u0010|\u001a\u00020\u001b2\u0008\u0010}\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010~\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u007f\u001a\u00020\u0007H\u00d6\u0001J\u001e\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u001dH\u00d6\u0001R1\u0010$\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u00a2\u0006\u0002\u0008#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00103\"\u0004\u00087\u00105R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\"\u0010\u001f\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010@\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\"\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010@\u001a\u0004\u0008A\u0010=\"\u0004\u0008B\u0010?R\u001e\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010C\"\u0004\u0008D\u0010ER*\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u00103\"\u0004\u0008K\u00105R\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR \u0010\u001e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u00103\"\u0004\u0008Q\u00105R\u001e\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u00103\"\u0004\u0008S\u00105R\u001e\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u00103\"\u0004\u0008U\u00105R\u001a\u0010\u0019\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u00103\"\u0004\u0008W\u00105R1\u0010 \u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u00a2\u0006\u0002\u0008#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010\'\"\u0004\u0008Y\u0010)R \u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010+\"\u0004\u0008[\u0010-R \u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R \u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010]\"\u0004\u0008a\u0010_R \u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010]\"\u0004\u0008c\u0010_\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lco/tamara/sdk/model/Order;",
        "Landroid/os/Parcelable;",
        "billingAddress",
        "Lco/tamara/sdk/model/Address;",
        "consumer",
        "Lco/tamara/sdk/model/Consumer;",
        "countryCode",
        "",
        "description",
        "discount",
        "Lco/tamara/sdk/model/Discount;",
        "items",
        "Ljava/util/ArrayList;",
        "Lco/tamara/sdk/model/Item;",
        "Lkotlin/collections/ArrayList;",
        "locale",
        "merchantUrl",
        "Lco/tamara/sdk/model/MerchantUrl;",
        "orderReferenceId",
        "paymentType",
        "shippingAddress",
        "shippingAmount",
        "Lco/tamara/sdk/model/Amount;",
        "taxAmount",
        "totalAmount",
        "platform",
        "isMobile",
        "",
        "instalments",
        "",
        "orderNumber",
        "expiresInMinutes",
        "riskAssessment",
        "",
        "",
        "Lkotlinx/android/parcel/RawValue;",
        "additionalData",
        "(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V",
        "getAdditionalData",
        "()Ljava/util/Map;",
        "setAdditionalData",
        "(Ljava/util/Map;)V",
        "getBillingAddress",
        "()Lco/tamara/sdk/model/Address;",
        "setBillingAddress",
        "(Lco/tamara/sdk/model/Address;)V",
        "getConsumer",
        "()Lco/tamara/sdk/model/Consumer;",
        "setConsumer",
        "(Lco/tamara/sdk/model/Consumer;)V",
        "getCountryCode",
        "()Ljava/lang/String;",
        "setCountryCode",
        "(Ljava/lang/String;)V",
        "getDescription",
        "setDescription",
        "getDiscount",
        "()Lco/tamara/sdk/model/Discount;",
        "setDiscount",
        "(Lco/tamara/sdk/model/Discount;)V",
        "getExpiresInMinutes",
        "()Ljava/lang/Integer;",
        "setExpiresInMinutes",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getInstalments",
        "setInstalments",
        "()Z",
        "setMobile",
        "(Z)V",
        "getItems",
        "()Ljava/util/ArrayList;",
        "setItems",
        "(Ljava/util/ArrayList;)V",
        "getLocale",
        "setLocale",
        "getMerchantUrl",
        "()Lco/tamara/sdk/model/MerchantUrl;",
        "setMerchantUrl",
        "(Lco/tamara/sdk/model/MerchantUrl;)V",
        "getOrderNumber",
        "setOrderNumber",
        "getOrderReferenceId",
        "setOrderReferenceId",
        "getPaymentType",
        "setPaymentType",
        "getPlatform",
        "setPlatform",
        "getRiskAssessment",
        "setRiskAssessment",
        "getShippingAddress",
        "setShippingAddress",
        "getShippingAmount",
        "()Lco/tamara/sdk/model/Amount;",
        "setShippingAmount",
        "(Lco/tamara/sdk/model/Amount;)V",
        "getTaxAmount",
        "setTaxAmount",
        "getTotalAmount",
        "setTotalAmount",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)Lco/tamara/sdk/model/Order;",
        "describeContents",
        "equals",
        "other",
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
            "Lco/tamara/sdk/model/Order;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private additionalData:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additional_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private billingAddress:Lco/tamara/sdk/model/Address;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billing_address"
    .end annotation
.end field

.field private consumer:Lco/tamara/sdk/model/Consumer;

.field private countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country_code"
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private discount:Lco/tamara/sdk/model/Discount;

.field private expiresInMinutes:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in_minutes"
    .end annotation
.end field

.field private instalments:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instalments"
    .end annotation
.end field

.field private isMobile:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_mobile"
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

.field private locale:Ljava/lang/String;

.field private merchantUrl:Lco/tamara/sdk/model/MerchantUrl;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "merchant_url"
    .end annotation
.end field

.field private orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_number"
    .end annotation
.end field

.field private orderReferenceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_reference_id"
    .end annotation
.end field

.field private paymentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_type"
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field private riskAssessment:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "risk_assessment"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
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

    new-instance v0, Lco/tamara/sdk/model/Order$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/Order$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    const v22, 0x1fffff

    const/16 v23, 0x0

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

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v23}, Lco/tamara/sdk/model/Order;-><init>(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/Address;",
            "Lco/tamara/sdk/model/Consumer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/Discount;",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/MerchantUrl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/Address;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p15

    move-object/from16 v9, p20

    move-object/from16 v10, p21

    const-string v11, "countryCode"

    invoke-static {p3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "description"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "items"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "locale"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "merchantUrl"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "orderReferenceId"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "paymentType"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "platform"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "riskAssessment"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "additionalData"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v11, p1

    .line 14
    iput-object v11, v0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    move-object v11, p2

    .line 15
    iput-object v11, v0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    .line 16
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    .line 17
    iput-object v2, v0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    move-object/from16 v1, p5

    .line 18
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    .line 19
    iput-object v3, v0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    .line 20
    iput-object v4, v0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    .line 21
    iput-object v5, v0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    .line 22
    iput-object v6, v0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    .line 23
    iput-object v7, v0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 24
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    move-object/from16 v1, p12

    .line 25
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    move-object/from16 v1, p13

    .line 26
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    move-object/from16 v1, p14

    .line 27
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    .line 28
    iput-object v8, v0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    move/from16 v1, p16

    .line 29
    iput-boolean v1, v0, Lco/tamara/sdk/model/Order;->isMobile:Z

    move-object/from16 v1, p17

    .line 30
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 31
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 32
    iput-object v1, v0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    .line 33
    iput-object v9, v0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    .line 34
    iput-object v10, v0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 16
    const-string v4, "SA"

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 17
    const-string v5, "This is description"

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 20
    const-string v8, "en-US"

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 21
    new-instance v9, Lco/tamara/sdk/model/MerchantUrl;

    const/16 v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v12

    move-object/from16 p3, v13

    move-object/from16 p4, v14

    move-object/from16 p5, v15

    move/from16 p6, v10

    move-object/from16 p7, v11

    invoke-direct/range {p1 .. p7}, Lco/tamara/sdk/model/MerchantUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 22
    const-string v10, ""

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 23
    const-string v11, "PAY_BY_INSTALMENTS"

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    .line 28
    const-string v2, "Android"

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x1

    goto :goto_f

    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    .line 33
    new-instance v20, Ljava/util/LinkedHashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v20, Ljava/util/Map;

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v0, v0, v21

    if-eqz v0, :cond_14

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    goto :goto_14

    :cond_14
    move-object/from16 v0, p21

    :goto_14
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v2

    move/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v0

    .line 13
    invoke-direct/range {p0 .. p21}, Lco/tamara/sdk/model/Order;-><init>(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/Order;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lco/tamara/sdk/model/Order;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Lco/tamara/sdk/model/Order;->isMobile:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-eqz v1, :cond_14

    iget-object v1, v0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p20, v15

    move-object/from16 p21, v1

    invoke-virtual/range {p0 .. p21}, Lco/tamara/sdk/model/Order;->copy(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)Lco/tamara/sdk/model/Order;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lco/tamara/sdk/model/Address;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Lco/tamara/sdk/model/Address;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    return-object p0
.end method

.method public final component12()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component13()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component14()Lco/tamara/sdk/model/Amount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()Z
    .locals 0

    iget-boolean p0, p0, Lco/tamara/sdk/model/Order;->isMobile:Z

    return p0
.end method

.method public final component17()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final component19()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component2()Lco/tamara/sdk/model/Consumer;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    return-object p0
.end method

.method public final component20()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    return-object p0
.end method

.method public final component21()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Lco/tamara/sdk/model/Discount;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    return-object p0
.end method

.method public final component6()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Lco/tamara/sdk/model/MerchantUrl;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)Lco/tamara/sdk/model/Order;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/Address;",
            "Lco/tamara/sdk/model/Consumer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/Discount;",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/Item;",
            ">;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/MerchantUrl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/Address;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Lco/tamara/sdk/model/Amount;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lco/tamara/sdk/model/Order;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    const-string v0, "countryCode"

    move-object/from16 p0, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantUrl"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderReferenceId"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentType"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "riskAssessment"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalData"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v22, Lco/tamara/sdk/model/Order;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v21}, Lco/tamara/sdk/model/Order;-><init>(Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Consumer;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Discount;Ljava/util/ArrayList;Ljava/lang/String;Lco/tamara/sdk/model/MerchantUrl;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/Address;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    return-object v22
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
    instance-of v1, p1, Lco/tamara/sdk/model/Order;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/Order;

    iget-object v1, p0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lco/tamara/sdk/model/Order;->isMobile:Z

    iget-boolean v3, p1, Lco/tamara/sdk/model/Order;->isMobile:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    iget-object v3, p1, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    iget-object p1, p1, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final getAdditionalData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    return-object p0
.end method

.method public final getBillingAddress()Lco/tamara/sdk/model/Address;
    .locals 0

    .line 14
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    return-object p0
.end method

.method public final getConsumer()Lco/tamara/sdk/model/Consumer;
    .locals 0

    .line 15
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    return-object p0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDiscount()Lco/tamara/sdk/model/Discount;
    .locals 0

    .line 18
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    return-object p0
.end method

.method public final getExpiresInMinutes()Ljava/lang/Integer;
    .locals 0

    .line 32
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getInstalments()Ljava/lang/Integer;
    .locals 0

    .line 30
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

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

    .line 19
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public final getMerchantUrl()Lco/tamara/sdk/model/MerchantUrl;
    .locals 0

    .line 21
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    return-object p0
.end method

.method public final getOrderNumber()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderReferenceId()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPaymentType()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public final getRiskAssessment()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    return-object p0
.end method

.method public final getShippingAddress()Lco/tamara/sdk/model/Address;
    .locals 0

    .line 24
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    return-object p0
.end method

.method public final getShippingAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 25
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final getTaxAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 26
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public final getTotalAmount()Lco/tamara/sdk/model/Amount;
    .locals 0

    .line 27
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lco/tamara/sdk/model/Address;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lco/tamara/sdk/model/Consumer;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lco/tamara/sdk/model/Discount;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    invoke-virtual {v2}, Lco/tamara/sdk/model/MerchantUrl;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lco/tamara/sdk/model/Address;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lco/tamara/sdk/model/Amount;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lco/tamara/sdk/model/Order;->isMobile:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isMobile()Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lco/tamara/sdk/model/Order;->isMobile:Z

    return p0
.end method

.method public final setAdditionalData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    return-void
.end method

.method public final setBillingAddress(Lco/tamara/sdk/model/Address;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    return-void
.end method

.method public final setConsumer(Lco/tamara/sdk/model/Consumer;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    return-void
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDiscount(Lco/tamara/sdk/model/Discount;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    return-void
.end method

.method public final setExpiresInMinutes(Ljava/lang/Integer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    return-void
.end method

.method public final setInstalments(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

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

    .line 19
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLocale(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    return-void
.end method

.method public final setMerchantUrl(Lco/tamara/sdk/model/MerchantUrl;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    return-void
.end method

.method public final setMobile(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lco/tamara/sdk/model/Order;->isMobile:Z

    return-void
.end method

.method public final setOrderNumber(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    return-void
.end method

.method public final setOrderReferenceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    return-void
.end method

.method public final setPaymentType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    return-void
.end method

.method public final setPlatform(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    return-void
.end method

.method public final setRiskAssessment(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    return-void
.end method

.method public final setShippingAddress(Lco/tamara/sdk/model/Address;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    return-void
.end method

.method public final setShippingAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public final setTaxAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public final setTotalAmount(Lco/tamara/sdk/model/Amount;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    iget-object v2, v0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    iget-object v3, v0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    iget-object v4, v0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    iget-object v5, v0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    iget-object v6, v0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    iget-object v7, v0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    iget-object v8, v0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    iget-object v9, v0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    iget-object v10, v0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    iget-object v11, v0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    iget-object v12, v0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    iget-object v13, v0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    iget-object v14, v0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lco/tamara/sdk/model/Order;->isMobile:Z

    move/from16 v17, v15

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

    move-object/from16 v18, v15

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    move-object/from16 v20, v15

    iget-object v15, v0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    iget-object v0, v0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v21, v15

    const-string v15, "Order(billingAddress="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consumer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", discount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", merchantUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taxAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", instalments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", riskAssessment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/Order;->billingAddress:Lco/tamara/sdk/model/Address;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Address;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lco/tamara/sdk/model/Order;->consumer:Lco/tamara/sdk/model/Consumer;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Consumer;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lco/tamara/sdk/model/Order;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/Order;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/Order;->discount:Lco/tamara/sdk/model/Discount;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Discount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lco/tamara/sdk/model/Order;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/tamara/sdk/model/Item;

    invoke-virtual {v3, p1, p2}, Lco/tamara/sdk/model/Item;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lco/tamara/sdk/model/Order;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/Order;->merchantUrl:Lco/tamara/sdk/model/MerchantUrl;

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/MerchantUrl;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lco/tamara/sdk/model/Order;->orderReferenceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/Order;->paymentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/Order;->shippingAddress:Lco/tamara/sdk/model/Address;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Address;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v0, p0, Lco/tamara/sdk/model/Order;->shippingAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    iget-object v0, p0, Lco/tamara/sdk/model/Order;->taxAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    iget-object v0, p0, Lco/tamara/sdk/model/Order;->totalAmount:Lco/tamara/sdk/model/Amount;

    if-nez v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/Amount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    iget-object p2, p0, Lco/tamara/sdk/model/Order;->platform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lco/tamara/sdk/model/Order;->isMobile:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lco/tamara/sdk/model/Order;->instalments:Ljava/lang/Integer;

    if-nez p2, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object p2, p0, Lco/tamara/sdk/model/Order;->orderNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/Order;->expiresInMinutes:Ljava/lang/Integer;

    if-nez p2, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget-object p2, p0, Lco/tamara/sdk/model/Order;->riskAssessment:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_a

    :cond_a
    iget-object p0, p0, Lco/tamara/sdk/model/Order;->additionalData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_b

    :cond_b
    return-void
.end method
