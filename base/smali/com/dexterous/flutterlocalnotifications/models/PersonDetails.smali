.class public Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;
.super Ljava/lang/Object;
.source "PersonDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bot:Ljava/lang/Boolean;

.field public icon:Ljava/lang/Object;

.field public iconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

.field public important:Ljava/lang/Boolean;

.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/IconSource;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->bot:Ljava/lang/Boolean;

    .line 26
    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->icon:Ljava/lang/Object;

    .line 27
    iput-object p3, p0, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->iconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 28
    iput-object p4, p0, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->important:Ljava/lang/Boolean;

    .line 29
    iput-object p5, p0, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->key:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->name:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->uri:Ljava/lang/String;

    return-void
.end method
