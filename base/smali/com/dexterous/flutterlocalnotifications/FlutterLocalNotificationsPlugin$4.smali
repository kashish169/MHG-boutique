.class Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$4;
.super Ljava/lang/Object;
.source "FlutterLocalNotificationsPlugin.java"

# interfaces
.implements Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1466
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$4;->this$0:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;

    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$4;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Z)V
    .locals 0

    .line 1469
    iget-object p0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$4;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 1474
    iget-object p0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$4;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "permissionRequestInProgress"

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
