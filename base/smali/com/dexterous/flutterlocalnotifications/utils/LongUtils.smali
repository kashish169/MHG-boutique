.class public Lcom/dexterous/flutterlocalnotifications/utils/LongUtils;
.super Ljava/lang/Object;
.source "LongUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    .line 5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9
    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
