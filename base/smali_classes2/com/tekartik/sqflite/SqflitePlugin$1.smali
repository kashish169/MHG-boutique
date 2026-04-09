.class Lcom/tekartik/sqflite/SqflitePlugin$1;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tekartik/sqflite/SqflitePlugin;->onCloseDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tekartik/sqflite/SqflitePlugin;

.field final synthetic val$database:Lcom/tekartik/sqflite/Database;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->this$0:Lcom/tekartik/sqflite/SqflitePlugin;

    iput-object p2, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->val$database:Lcom/tekartik/sqflite/Database;

    iput-object p3, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 487
    invoke-static {}, Lcom/tekartik/sqflite/SqflitePlugin;->-$$Nest$sfgetopenCloseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->this$0:Lcom/tekartik/sqflite/SqflitePlugin;

    iget-object v2, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->val$database:Lcom/tekartik/sqflite/Database;

    invoke-static {v1, v2}, Lcom/tekartik/sqflite/SqflitePlugin;->-$$Nest$mcloseDatabase(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;)V

    .line 489
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    iget-object p0, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 489
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
