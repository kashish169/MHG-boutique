.class public Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;
.super Ljava/lang/Object;
.source "MessageDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dataMimeType:Ljava/lang/String;

.field public dataUri:Ljava/lang/String;

.field public person:Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;

.field public text:Ljava/lang/String;

.field public timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->text:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->timestamp:Ljava/lang/Long;

    .line 19
    iput-object p3, p0, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->person:Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;

    .line 20
    iput-object p4, p0, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->dataMimeType:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->dataUri:Ljava/lang/String;

    return-void
.end method
