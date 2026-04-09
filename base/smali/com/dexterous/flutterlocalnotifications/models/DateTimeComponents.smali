.class public final enum Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;
.super Ljava/lang/Enum;
.source "DateTimeComponents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

.field public static final enum DateAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

.field public static final enum DayOfMonthAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

.field public static final enum DayOfWeekAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

.field public static final enum Time:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;


# direct methods
.method private static synthetic $values()[Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;
    .locals 4

    .line 5
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->Time:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DayOfWeekAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DayOfMonthAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DateAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    const-string v1, "Time"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->Time:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    .line 8
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    const-string v1, "DayOfWeekAndTime"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DayOfWeekAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    .line 9
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    const-string v1, "DayOfMonthAndTime"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DayOfMonthAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    .line 10
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    const-string v1, "DateAndTime"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DateAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    .line 5
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->$values()[Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    move-result-object v0

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;
    .locals 1

    .line 5
    const-class v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    return-object p0
.end method

.method public static values()[Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;
    .locals 1

    .line 5
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    invoke-virtual {v0}, [Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    return-object v0
.end method
