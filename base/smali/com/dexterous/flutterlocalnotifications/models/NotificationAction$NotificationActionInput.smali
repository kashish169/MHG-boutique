.class public Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
.super Ljava/lang/Object;
.source "NotificationAction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationActionInput"
.end annotation


# instance fields
.field public final allowFreeFormInput:Ljava/lang/Boolean;

.field public final allowedMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->choices:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowFreeFormInput:Ljava/lang/Boolean;

    .line 25
    iput-object p3, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->label:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowedMimeTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 39
    :cond_1
    check-cast p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;

    .line 41
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->choices:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->choices:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->choices:Ljava/util/List;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 44
    :cond_3
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowFreeFormInput:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowFreeFormInput:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowFreeFormInput:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 49
    :cond_5
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->label:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->label:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 52
    :cond_7
    iget-object p0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowedMimeTypes:Ljava/util/List;

    if-eqz p0, :cond_8

    .line 53
    iget-object p1, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowedMimeTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 54
    :cond_8
    iget-object p0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowedMimeTypes:Ljava/util/List;

    if-nez p0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->choices:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowFreeFormInput:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->label:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object p0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowedMimeTypes:Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method
