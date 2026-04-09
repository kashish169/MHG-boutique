.class public final enum Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;
.super Ljava/lang/Enum;
.source "ScheduleMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

.field public static final enum alarmClock:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

.field public static final enum exact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

.field public static final enum exactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

.field public static final enum inexact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

.field public static final enum inexactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;


# direct methods
.method private static synthetic $values()[Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;
    .locals 5

    .line 9
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->alarmClock:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->inexact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    sget-object v4, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->inexactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    const-string v1, "alarmClock"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->alarmClock:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 12
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    const-string v1, "exact"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 13
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    const-string v1, "exactAllowWhileIdle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 14
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    const-string v1, "inexact"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->inexact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 15
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    const-string v1, "inexactAllowWhileIdle"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->inexactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 9
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->$values()[Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    move-result-object v0

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;
    .locals 1

    .line 9
    const-class v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    return-object p0
.end method

.method public static values()[Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;
    .locals 1

    .line 9
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    invoke-virtual {v0}, [Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    return-object v0
.end method


# virtual methods
.method public useAlarmClock()Z
    .locals 1

    .line 26
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->alarmClock:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public useAllowWhileIdle()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->inexactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public useExactAlarm()Z
    .locals 1

    .line 22
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
