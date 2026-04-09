.class public abstract Lcom/tekartik/sqflite/operation/BaseReadOperation;
.super Ljava/lang/Object;
.source "BaseReadOperation.java"

# interfaces
.implements Lcom/tekartik/sqflite/operation/Operation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getArgument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 61
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSql()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "sql"

    invoke-virtual {p0, v0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getArgument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getSqlArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    const-string v0, "arguments"

    invoke-virtual {p0, v0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getArgument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getContinueOnError()Z
    .locals 2

    .line 55
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "continueOnError"

    invoke-virtual {p0, v1}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getArgument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getInTransactionChange()Ljava/lang/Boolean;
    .locals 1

    .line 45
    const-string v0, "inTransaction"

    invoke-direct {p0, v0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getNoResult()Z
    .locals 2

    .line 50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "noResult"

    invoke-virtual {p0, v1}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getArgument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected abstract getOperationResult()Lcom/tekartik/sqflite/operation/OperationResult;
.end method

.method public getSqlCommand()Lcom/tekartik/sqflite/SqlCommand;
    .locals 2

    .line 41
    new-instance v0, Lcom/tekartik/sqflite/SqlCommand;

    invoke-direct {p0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getSqlArguments()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/tekartik/sqflite/SqlCommand;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/Integer;
    .locals 1

    .line 33
    const-string v0, "transactionId"

    invoke-virtual {p0, v0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getArgument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public hasNullTransactionId()Z
    .locals 1

    .line 37
    const-string v0, "transactionId"

    invoke-virtual {p0, v0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->hasArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getTransactionId()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;->getSqlArguments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
