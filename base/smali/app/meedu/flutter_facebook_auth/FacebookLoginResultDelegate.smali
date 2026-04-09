.class Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;
.super Ljava/lang/Object;
.source "FacebookLoginResultDelegate.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;"
    }
.end annotation


# instance fields
.field private final callbackManager:Lcom/facebook/CallbackManager;

.field private pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/facebook/CallbackManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->callbackManager:Lcom/facebook/CallbackManager;

    return-void
.end method


# virtual methods
.method finishWithError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 47
    invoke-interface {v0, p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iput-object v1, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    :cond_0
    return-void
.end method

.method finishWithResult(Ljava/lang/Object;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 26
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public onCancel()V
    .locals 2

    .line 37
    const-string v0, "CANCELLED"

    const-string v1, "User has cancelled login with facebook"

    invoke-virtual {p0, v0, v1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 42
    const-string v0, "FAILED"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 0

    .line 31
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-static {p1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->getAccessToken(Lcom/facebook/AccessToken;)Ljava/util/HashMap;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->finishWithResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method setPendingResult(Lio/flutter/plugin/common/MethodChannel$Result;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    .line 55
    const-string p0, "The method login was called while another Facebook operation was in progress."

    const/4 v0, 0x0

    const-string v1, "OPERATION_IN_PROGRESS"

    invoke-interface {p1, v1, p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_0
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 p0, 0x1

    return p0
.end method
