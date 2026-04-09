.class Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;
.super Ljava/lang/Object;
.source "FacebookAuth.java"

# interfaces
.implements Lcom/facebook/LoginStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/meedu/flutter_facebook_auth/FacebookAuth;->expressLogin(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lapp/meedu/flutter_facebook_auth/FacebookAuth;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;->this$0:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    iput-object p2, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/AccessToken;)V
    .locals 0

    .line 127
    invoke-static {p1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->getAccessToken(Lcom/facebook/AccessToken;)Ljava/util/HashMap;

    move-result-object p1

    .line 128
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 140
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "FAILED"

    invoke-interface {p0, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure()V
    .locals 3

    .line 134
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "User has cancelled login with facebook"

    const/4 v1, 0x0

    const-string v2, "CANCELLED"

    invoke-interface {p0, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
