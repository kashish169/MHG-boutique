.class public final enum Lco/tamara/sdk/const/PaymentStatus;
.super Ljava/lang/Enum;
.source "PaymentStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/tamara/sdk/const/PaymentStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lco/tamara/sdk/const/PaymentStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "STATUS_PENDING",
        "STATUS_INITIALIZE",
        "STATUS_SUCCESS",
        "STATUS_CANCEL",
        "STATUS_ERROR",
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

.field private static final synthetic $VALUES:[Lco/tamara/sdk/const/PaymentStatus;

.field public static final enum STATUS_CANCEL:Lco/tamara/sdk/const/PaymentStatus;

.field public static final enum STATUS_ERROR:Lco/tamara/sdk/const/PaymentStatus;

.field public static final enum STATUS_INITIALIZE:Lco/tamara/sdk/const/PaymentStatus;

.field public static final enum STATUS_PENDING:Lco/tamara/sdk/const/PaymentStatus;

.field public static final enum STATUS_SUCCESS:Lco/tamara/sdk/const/PaymentStatus;


# direct methods
.method private static final synthetic $values()[Lco/tamara/sdk/const/PaymentStatus;
    .locals 5

    sget-object v0, Lco/tamara/sdk/const/PaymentStatus;->STATUS_PENDING:Lco/tamara/sdk/const/PaymentStatus;

    sget-object v1, Lco/tamara/sdk/const/PaymentStatus;->STATUS_INITIALIZE:Lco/tamara/sdk/const/PaymentStatus;

    sget-object v2, Lco/tamara/sdk/const/PaymentStatus;->STATUS_SUCCESS:Lco/tamara/sdk/const/PaymentStatus;

    sget-object v3, Lco/tamara/sdk/const/PaymentStatus;->STATUS_CANCEL:Lco/tamara/sdk/const/PaymentStatus;

    sget-object v4, Lco/tamara/sdk/const/PaymentStatus;->STATUS_ERROR:Lco/tamara/sdk/const/PaymentStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lco/tamara/sdk/const/PaymentStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lco/tamara/sdk/const/PaymentStatus;

    const-string v1, "STATUS_PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/PaymentStatus;->STATUS_PENDING:Lco/tamara/sdk/const/PaymentStatus;

    .line 5
    new-instance v0, Lco/tamara/sdk/const/PaymentStatus;

    const-string v1, "STATUS_INITIALIZE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/PaymentStatus;->STATUS_INITIALIZE:Lco/tamara/sdk/const/PaymentStatus;

    .line 6
    new-instance v0, Lco/tamara/sdk/const/PaymentStatus;

    const-string v1, "STATUS_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/PaymentStatus;->STATUS_SUCCESS:Lco/tamara/sdk/const/PaymentStatus;

    .line 7
    new-instance v0, Lco/tamara/sdk/const/PaymentStatus;

    const-string v1, "STATUS_CANCEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/PaymentStatus;->STATUS_CANCEL:Lco/tamara/sdk/const/PaymentStatus;

    .line 8
    new-instance v0, Lco/tamara/sdk/const/PaymentStatus;

    const-string v1, "STATUS_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/const/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/const/PaymentStatus;->STATUS_ERROR:Lco/tamara/sdk/const/PaymentStatus;

    invoke-static {}, Lco/tamara/sdk/const/PaymentStatus;->$values()[Lco/tamara/sdk/const/PaymentStatus;

    move-result-object v0

    sput-object v0, Lco/tamara/sdk/const/PaymentStatus;->$VALUES:[Lco/tamara/sdk/const/PaymentStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lco/tamara/sdk/const/PaymentStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lco/tamara/sdk/const/PaymentStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lco/tamara/sdk/const/PaymentStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lco/tamara/sdk/const/PaymentStatus;
    .locals 1

    const-class v0, Lco/tamara/sdk/const/PaymentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/const/PaymentStatus;

    return-object p0
.end method

.method public static values()[Lco/tamara/sdk/const/PaymentStatus;
    .locals 1

    sget-object v0, Lco/tamara/sdk/const/PaymentStatus;->$VALUES:[Lco/tamara/sdk/const/PaymentStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/tamara/sdk/const/PaymentStatus;

    return-object v0
.end method
