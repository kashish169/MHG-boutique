.class public final Lco/tamara/sdk/model/RiskAssessment;
.super Ljava/lang/Object;
.source "RiskAssessment.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0006\n\u0002\u0008V\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0099\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010P\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010R\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010S\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010T\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010U\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010V\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010W\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003\u00a2\u0006\u0002\u0010<J\u0010\u0010X\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u0010\u0010Y\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003\u00a2\u0006\u0002\u0010<J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u000b\u0010[\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003\u00a2\u0006\u0002\u0010<J\u0010\u0010^\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010_\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u000b\u0010`\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010c\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010d\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00100J\u000b\u0010e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u00a2\u0002\u0010g\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010hJ\t\u0010i\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010j\u001a\u00020\t2\u0008\u0010k\u001a\u0004\u0018\u00010lH\u00d6\u0003J\t\u0010m\u001a\u00020\u0003H\u00d6\u0001J\t\u0010n\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020\u0003H\u00d6\u0001R \u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u001f\"\u0004\u0008(\u0010!R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001f\"\u0004\u0008*\u0010!R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001f\"\u0004\u0008,\u0010!R \u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001f\"\u0004\u0008.\u0010!R\"\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\u0010\u00100\"\u0004\u00084\u00102R\"\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\u000f\u00100\"\u0004\u00085\u00102R\"\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\n\u00100\"\u0004\u00086\u00102R\"\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\u0013\u00100\"\u0004\u00087\u00102R\"\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\u000b\u00100\"\u0004\u00088\u00102R\"\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\u0012\u00100\"\u0004\u00089\u00102R\"\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\u0008\u00100\"\u0004\u0008:\u00102R\"\u0010\u001a\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010?\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R \u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u001f\"\u0004\u0008A\u0010!R\"\u0010\u0017\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010?\u001a\u0004\u0008B\u0010<\"\u0004\u0008C\u0010>R\"\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u0008D\u0010#\"\u0004\u0008E\u0010%R \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u001f\"\u0004\u0008G\u0010!R\"\u0010\u001b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008H\u00100\"\u0004\u0008I\u00102R\"\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u0008J\u0010#\"\u0004\u0008K\u0010%R\"\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010?\u001a\u0004\u0008L\u0010<\"\u0004\u0008M\u0010>R\"\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u0008N\u0010#\"\u0004\u0008O\u0010%\u00a8\u0006t"
    }
    d2 = {
        "Lco/tamara/sdk/model/RiskAssessment;",
        "Landroid/os/Parcelable;",
        "customerAge",
        "",
        "customerDob",
        "",
        "customerGender",
        "customerNationality",
        "isPremiumCustomer",
        "",
        "isExistingCustomer",
        "isGuestUser",
        "accountCreationDate",
        "platformAccountCreationDate",
        "dateOfFirstTransaction",
        "isCardOnFile",
        "isCODCustomer",
        "hasDeliveredOrder",
        "isPhoneVerified",
        "isFraudulentCustomer",
        "totalLtv",
        "",
        "totalOrderCount",
        "orderAmountLast3months",
        "orderCountLast3months",
        "lastOrderDate",
        "lastOrderAmount",
        "rewardProgramEnrolled",
        "rewardProgramPoints",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;)V",
        "getAccountCreationDate",
        "()Ljava/lang/String;",
        "setAccountCreationDate",
        "(Ljava/lang/String;)V",
        "getCustomerAge",
        "()Ljava/lang/Integer;",
        "setCustomerAge",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getCustomerDob",
        "setCustomerDob",
        "getCustomerGender",
        "setCustomerGender",
        "getCustomerNationality",
        "setCustomerNationality",
        "getDateOfFirstTransaction",
        "setDateOfFirstTransaction",
        "getHasDeliveredOrder",
        "()Ljava/lang/Boolean;",
        "setHasDeliveredOrder",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "setCODCustomer",
        "setCardOnFile",
        "setExistingCustomer",
        "setFraudulentCustomer",
        "setGuestUser",
        "setPhoneVerified",
        "setPremiumCustomer",
        "getLastOrderAmount",
        "()Ljava/lang/Double;",
        "setLastOrderAmount",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getLastOrderDate",
        "setLastOrderDate",
        "getOrderAmountLast3months",
        "setOrderAmountLast3months",
        "getOrderCountLast3months",
        "setOrderCountLast3months",
        "getPlatformAccountCreationDate",
        "setPlatformAccountCreationDate",
        "getRewardProgramEnrolled",
        "setRewardProgramEnrolled",
        "getRewardProgramPoints",
        "setRewardProgramPoints",
        "getTotalLtv",
        "setTotalLtv",
        "getTotalOrderCount",
        "setTotalOrderCount",
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
        "component22",
        "component23",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;)Lco/tamara/sdk/model/RiskAssessment;",
        "describeContents",
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
            "Lco/tamara/sdk/model/RiskAssessment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountCreationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_creation_date"
    .end annotation
.end field

.field private customerAge:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_age"
    .end annotation
.end field

.field private customerDob:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_dob"
    .end annotation
.end field

.field private customerGender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_gender"
    .end annotation
.end field

.field private customerNationality:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_nationality"
    .end annotation
.end field

.field private dateOfFirstTransaction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_of_first_transaction"
    .end annotation
.end field

.field private hasDeliveredOrder:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_delivered_order"
    .end annotation
.end field

.field private isCODCustomer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_COD_customer"
    .end annotation
.end field

.field private isCardOnFile:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_card_on_file"
    .end annotation
.end field

.field private isExistingCustomer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_existing_customer"
    .end annotation
.end field

.field private isFraudulentCustomer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_fraudulent_customer"
    .end annotation
.end field

.field private isGuestUser:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_guest_user"
    .end annotation
.end field

.field private isPhoneVerified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_phone_verified"
    .end annotation
.end field

.field private isPremiumCustomer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_premium_customer"
    .end annotation
.end field

.field private lastOrderAmount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_order_amount"
    .end annotation
.end field

.field private lastOrderDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_order_date"
    .end annotation
.end field

.field private orderAmountLast3months:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_amount_last3months"
    .end annotation
.end field

.field private orderCountLast3months:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_count_last3months"
    .end annotation
.end field

.field private platformAccountCreationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform_account_creation_date"
    .end annotation
.end field

.field private rewardProgramEnrolled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reward_program_enrolled"
    .end annotation
.end field

.field private rewardProgramPoints:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reward_program_points"
    .end annotation
.end field

.field private totalLtv:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_ltv"
    .end annotation
.end field

.field private totalOrderCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_order_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/tamara/sdk/model/RiskAssessment$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/RiskAssessment$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/RiskAssessment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    const v24, 0x7fffff

    const/16 v25, 0x0

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

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Lco/tamara/sdk/model/RiskAssessment;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 2

    move-object v0, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 9
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    move-object v1, p2

    .line 10
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    move-object v1, p3

    .line 11
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    move-object v1, p4

    .line 12
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    move-object v1, p5

    .line 13
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    move-object v1, p6

    .line 14
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    move-object v1, p10

    .line 18
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    move-object v1, p11

    .line 19
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    move-object v1, p13

    .line 21
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    move-object/from16 v1, p17

    .line 25
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 26
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    move-object/from16 v1, p19

    .line 27
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    move-object/from16 v1, p20

    .line 28
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 29
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    move-object/from16 v1, p22

    .line 30
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    move-object/from16 v1, p23

    .line 31
    iput-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p24

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

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

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

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

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

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

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

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v0, v0, v23

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v0, p23

    :goto_16
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

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v0

    .line 8
    invoke-direct/range {p0 .. p23}, Lco/tamara/sdk/model/RiskAssessment;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/RiskAssessment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;ILjava/lang/Object;)Lco/tamara/sdk/model/RiskAssessment;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p24

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v1, v1, v16

    if-eqz v1, :cond_16

    iget-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
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

    move-object/from16 p22, v15

    move-object/from16 p23, v1

    invoke-virtual/range {p0 .. p23}, Lco/tamara/sdk/model/RiskAssessment;->copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;)Lco/tamara/sdk/model/RiskAssessment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component12()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component13()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component14()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component15()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component16()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    return-object p0
.end method

.method public final component17()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component18()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    return-object p0
.end method

.method public final component19()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    return-object p0
.end method

.method public final component22()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component23()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component6()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;)Lco/tamara/sdk/model/RiskAssessment;
    .locals 25

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

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    new-instance v24, Lco/tamara/sdk/model/RiskAssessment;

    move-object/from16 v0, v24

    invoke-direct/range {v0 .. v23}, Lco/tamara/sdk/model/RiskAssessment;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-object v24
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
    instance-of v1, p1, Lco/tamara/sdk/model/RiskAssessment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/RiskAssessment;

    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    iget-object v3, p1, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    iget-object p1, p1, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public final getAccountCreationDate()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomerAge()Ljava/lang/Integer;
    .locals 0

    .line 9
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getCustomerDob()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomerGender()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomerNationality()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    return-object p0
.end method

.method public final getDateOfFirstTransaction()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    return-object p0
.end method

.method public final getHasDeliveredOrder()Ljava/lang/Boolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getLastOrderAmount()Ljava/lang/Double;
    .locals 0

    .line 29
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    return-object p0
.end method

.method public final getLastOrderDate()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderAmountLast3months()Ljava/lang/Double;
    .locals 0

    .line 26
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    return-object p0
.end method

.method public final getOrderCountLast3months()Ljava/lang/Integer;
    .locals 0

    .line 27
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPlatformAccountCreationDate()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getRewardProgramEnrolled()Ljava/lang/Boolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getRewardProgramPoints()Ljava/lang/Integer;
    .locals 0

    .line 31
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getTotalLtv()Ljava/lang/Double;
    .locals 0

    .line 24
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    return-object p0
.end method

.method public final getTotalOrderCount()Ljava/lang/Integer;
    .locals 0

    .line 25
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    if-nez v2, :cond_14

    move v2, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    if-nez v2, :cond_15

    move v2, v1

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    if-nez p0, :cond_16

    goto :goto_16

    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final isCODCustomer()Ljava/lang/Boolean;
    .locals 0

    .line 20
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isCardOnFile()Ljava/lang/Boolean;
    .locals 0

    .line 19
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isExistingCustomer()Ljava/lang/Boolean;
    .locals 0

    .line 14
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isFraudulentCustomer()Ljava/lang/Boolean;
    .locals 0

    .line 23
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isGuestUser()Ljava/lang/Boolean;
    .locals 0

    .line 15
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isPhoneVerified()Ljava/lang/Boolean;
    .locals 0

    .line 22
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isPremiumCustomer()Ljava/lang/Boolean;
    .locals 0

    .line 13
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAccountCreationDate(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    return-void
.end method

.method public final setCODCustomer(Ljava/lang/Boolean;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    return-void
.end method

.method public final setCardOnFile(Ljava/lang/Boolean;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    return-void
.end method

.method public final setCustomerAge(Ljava/lang/Integer;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    return-void
.end method

.method public final setCustomerDob(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    return-void
.end method

.method public final setCustomerGender(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    return-void
.end method

.method public final setCustomerNationality(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    return-void
.end method

.method public final setDateOfFirstTransaction(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    return-void
.end method

.method public final setExistingCustomer(Ljava/lang/Boolean;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFraudulentCustomer(Ljava/lang/Boolean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    return-void
.end method

.method public final setGuestUser(Ljava/lang/Boolean;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHasDeliveredOrder(Ljava/lang/Boolean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLastOrderAmount(Ljava/lang/Double;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    return-void
.end method

.method public final setLastOrderDate(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    return-void
.end method

.method public final setOrderAmountLast3months(Ljava/lang/Double;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    return-void
.end method

.method public final setOrderCountLast3months(Ljava/lang/Integer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    return-void
.end method

.method public final setPhoneVerified(Ljava/lang/Boolean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    return-void
.end method

.method public final setPlatformAccountCreationDate(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    return-void
.end method

.method public final setPremiumCustomer(Ljava/lang/Boolean;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRewardProgramEnrolled(Ljava/lang/Boolean;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRewardProgramPoints(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    return-void
.end method

.method public final setTotalLtv(Ljava/lang/Double;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    return-void
.end method

.method public final setTotalOrderCount(Ljava/lang/Integer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    iget-object v2, v0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    iget-object v3, v0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    iget-object v4, v0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    iget-object v5, v0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    iget-object v6, v0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    iget-object v7, v0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    iget-object v8, v0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    iget-object v9, v0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    iget-object v10, v0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    iget-object v11, v0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    iget-object v12, v0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    iget-object v13, v0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    iget-object v14, v0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    move-object/from16 v16, v15

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    move-object/from16 v17, v15

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    move-object/from16 v18, v15

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    move-object/from16 v19, v15

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    move-object/from16 v20, v15

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    move-object/from16 v22, v15

    iget-object v15, v0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    iget-object v0, v0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v23, v15

    const-string v15, "RiskAssessment(customerAge="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customerDob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerGender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerNationality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPremiumCustomer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isExistingCustomer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isGuestUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accountCreationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platformAccountCreationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dateOfFirstTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCardOnFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCODCustomer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasDeliveredOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPhoneVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFraudulentCustomer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalLtv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalOrderCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderAmountLast3months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderCountLast3months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastOrderDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastOrderAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rewardProgramEnrolled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rewardProgramPoints="

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

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->customerAge:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->customerDob:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->customerGender:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->customerNationality:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->isPremiumCustomer:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->isExistingCustomer:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->isGuestUser:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->accountCreationDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->platformAccountCreationDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->dateOfFirstTransaction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->isCardOnFile:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->isCODCustomer:Ljava/lang/Boolean;

    if-nez p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->hasDeliveredOrder:Ljava/lang/Boolean;

    if-nez p2, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->isPhoneVerified:Ljava/lang/Boolean;

    if-nez p2, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->isFraudulentCustomer:Ljava/lang/Boolean;

    if-nez p2, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->totalLtv:Ljava/lang/Double;

    if-nez p2, :cond_9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_9
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->totalOrderCount:Ljava/lang/Integer;

    if-nez p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->orderAmountLast3months:Ljava/lang/Double;

    if-nez p2, :cond_b

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_b
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->orderCountLast3months:Ljava/lang/Integer;

    if-nez p2, :cond_c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->lastOrderAmount:Ljava/lang/Double;

    if-nez p2, :cond_d

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_d
    iget-object p2, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramEnrolled:Ljava/lang/Boolean;

    if-nez p2, :cond_e

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    :cond_e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    iget-object p0, p0, Lco/tamara/sdk/model/RiskAssessment;->rewardProgramPoints:Ljava/lang/Integer;

    if-nez p0, :cond_f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return-void
.end method
