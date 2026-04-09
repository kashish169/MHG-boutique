.class public Lcom/dexterous/flutterlocalnotifications/models/Time;
.super Ljava/lang/Object;
.source "Time.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final SECOND:Ljava/lang/String; = "second"


# instance fields
.field public hour:Ljava/lang/Integer;

.field public minute:Ljava/lang/Integer;

.field public second:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/Time;->hour:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/Time;->minute:Ljava/lang/Integer;

    .line 16
    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/Time;->second:Ljava/lang/Integer;

    return-void
.end method

.method public static from(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dexterous/flutterlocalnotifications/models/Time;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/Time;

    invoke-direct {v0}, Lcom/dexterous/flutterlocalnotifications/models/Time;-><init>()V

    .line 20
    const-string v1, "hour"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/Time;->hour:Ljava/lang/Integer;

    .line 21
    const-string v1, "minute"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/Time;->minute:Ljava/lang/Integer;

    .line 22
    const-string v1, "second"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    iput-object p0, v0, Lcom/dexterous/flutterlocalnotifications/models/Time;->second:Ljava/lang/Integer;

    return-object v0
.end method
