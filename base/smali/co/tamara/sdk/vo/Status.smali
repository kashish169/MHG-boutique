.class public final enum Lco/tamara/sdk/vo/Status;
.super Ljava/lang/Enum;
.source "Status.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/tamara/sdk/vo/Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lco/tamara/sdk/vo/Status;",
        "",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "ERROR",
        "LOADING",
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

.field private static final synthetic $VALUES:[Lco/tamara/sdk/vo/Status;

.field public static final enum ERROR:Lco/tamara/sdk/vo/Status;

.field public static final enum LOADING:Lco/tamara/sdk/vo/Status;

.field public static final enum SUCCESS:Lco/tamara/sdk/vo/Status;


# direct methods
.method private static final synthetic $values()[Lco/tamara/sdk/vo/Status;
    .locals 3

    sget-object v0, Lco/tamara/sdk/vo/Status;->SUCCESS:Lco/tamara/sdk/vo/Status;

    sget-object v1, Lco/tamara/sdk/vo/Status;->ERROR:Lco/tamara/sdk/vo/Status;

    sget-object v2, Lco/tamara/sdk/vo/Status;->LOADING:Lco/tamara/sdk/vo/Status;

    filled-new-array {v0, v1, v2}, [Lco/tamara/sdk/vo/Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lco/tamara/sdk/vo/Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/vo/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/vo/Status;->SUCCESS:Lco/tamara/sdk/vo/Status;

    .line 28
    new-instance v0, Lco/tamara/sdk/vo/Status;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/vo/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/vo/Status;->ERROR:Lco/tamara/sdk/vo/Status;

    .line 29
    new-instance v0, Lco/tamara/sdk/vo/Status;

    const-string v1, "LOADING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lco/tamara/sdk/vo/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/tamara/sdk/vo/Status;->LOADING:Lco/tamara/sdk/vo/Status;

    invoke-static {}, Lco/tamara/sdk/vo/Status;->$values()[Lco/tamara/sdk/vo/Status;

    move-result-object v0

    sput-object v0, Lco/tamara/sdk/vo/Status;->$VALUES:[Lco/tamara/sdk/vo/Status;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lco/tamara/sdk/vo/Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lco/tamara/sdk/vo/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lco/tamara/sdk/vo/Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lco/tamara/sdk/vo/Status;
    .locals 1

    const-class v0, Lco/tamara/sdk/vo/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/tamara/sdk/vo/Status;

    return-object p0
.end method

.method public static values()[Lco/tamara/sdk/vo/Status;
    .locals 1

    sget-object v0, Lco/tamara/sdk/vo/Status;->$VALUES:[Lco/tamara/sdk/vo/Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/tamara/sdk/vo/Status;

    return-object v0
.end method
