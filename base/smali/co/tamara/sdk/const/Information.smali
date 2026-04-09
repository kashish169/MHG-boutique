.class public final enum Lco/tamara/sdk/const/Information;
.super Ljava/lang/Enum;
.source "Information.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/tamara/sdk/const/Information;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lco/tamara/sdk/const/Information;",
        "",
        "(Ljava/lang/String;I)V",
        "CAPTURE_PAYMENT",
        "ORDER_DETAIL",
        "REFUNDS",
        "REFERENCE",
        "CART",
        "PRODUCT",
        "CANCEL",
        "AUTHORISE",
        "PAYMENT_OPTIONS",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lco/tamara/sdk/const/Information;

.field public static final enum AUTHORISE:Lco/tamara/sdk/const/Information;

.field public static final enum CANCEL:Lco/tamara/sdk/const/Information;

.field public static final enum CAPTURE_PAYMENT:Lco/tamara/sdk/const/Information;

.field public static final enum CART:Lco/tamara/sdk/const/Information;

.field public static final enum ORDER_DETAIL:Lco/tamara/sdk/const/Information;

.field public static final enum PAYMENT_OPTIONS:Lco/tamara/sdk/const/Information;

.field public static final enum PRODUCT:Lco/tamara/sdk/const/Information;

.field public static final enum REFERENCE:Lco/tamara/sdk/const/Information;

.field public static final enum REFUNDS:Lco/tamara/sdk/const/Information;


# direct methods
.method private static final synthetic $values()[Lco/tamara/sdk/const/Information;
    .locals 9

    sget-object v0, Lco/tamara/sdk/const/Information;->CAPTURE_PAYMENT:Lco/tamara/sdk/const/Information;

    sget-object v1, Lco/tamara/sdk/const/Information;->ORDER_DETAIL:Lco/tamara/sdk/const/Information;

    sget-object v2, Lco/tamara/sdk/const/Information;->REFUNDS:Lco/tamara/sdk/const/Information;

    sget-object v3, Lco/tamara/sdk/const/Information;->REFERENCE:Lco/tamara/sdk/const/Information;

    sget-object v4, Lco/tamara/sdk/const/Information;->CART:Lco/tamara/sdk/const/Information;

    sget-object v5, Lco/tamara/sdk/const/Information;->PRODUCT:Lco/tamara/sdk/const/Information;

    sget-object v6, Lco/tamara/sdk/const/Information;->CANCEL:Lco/tamara/sdk/const/Information;

    sget-object v7, Lco/tamara/sdk/const/Information;->AUTHORISE:Lco/tamara/sdk/const/Information;

    sget-object v8, Lco/tamara/sdk/const/Information;->PAYMENT_OPTIONS:Lco/tamara/sdk/const/Information;

    filled-new-array/range {v0 .. v8}, [Lco/tamara/sdk/const/Information;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "CAPTURE_PAYMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->CAPTURE_PAYMENT:Lco/tamara/sdk/const/Information;

    .line 5
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "ORDER_DETAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->ORDER_DETAIL:Lco/tamara/sdk/const/Information;

    .line 6
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "REFUNDS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->REFUNDS:Lco/tamara/sdk/const/Information;

    .line 7
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "REFERENCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->REFERENCE:Lco/tamara/sdk/const/Information;

    .line 8
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "CART"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->CART:Lco/tamara/sdk/const/Information;

    .line 9
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "PRODUCT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->PRODUCT:Lco/tamara/sdk/const/Information;

    .line 10
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "CANCEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->CANCEL:Lco/tamara/sdk/const/Information;

    .line 11
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "AUTHORISE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->AUTHORISE:Lco/tamara/sdk/const/Information;

    .line 12
    new-instance v0, Lco/tamara/sdk/const/Information;

    const-string v1, "PAYMENT_OPTIONS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/Information;->PAYMENT_OPTIONS:Lco/tamara/sdk/const/Information;

    invoke-static {}, Lco/tamara/sdk/const/Information;->$values()[Lco/tamara/sdk/const/Information;

    move-result-object v0

    sput-object v0, Lco/tamara/sdk/const/Information;->$VALUES:[Lco/tamara/sdk/const/Information;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lco/tamara/sdk/const/Information;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lco/tamara/sdk/const/Information;",
            ">;"
        }
    .end annotation

    sget-object v0, Lco/tamara/sdk/const/Information;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lco/tamara/sdk/const/Information;
    .locals 1

    const-class v0, Lco/tamara/sdk/const/Information;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/const/Information;

    return-object p0
.end method

.method public static values()[Lco/tamara/sdk/const/Information;
    .locals 1

    sget-object v0, Lco/tamara/sdk/const/Information;->$VALUES:[Lco/tamara/sdk/const/Information;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/tamara/sdk/const/Information;

    return-object v0
.end method
