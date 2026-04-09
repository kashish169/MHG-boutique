.class public Lapp/meedu/flutter_facebook_auth/FacebookAuth;
.super Ljava/lang/Object;
.source "FacebookAuth.java"


# instance fields
.field private final loginManager:Lcom/facebook/login/LoginManager;

.field resultDelegate:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->loginManager:Lcom/facebook/login/LoginManager;

    .line 28
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v1

    .line 29
    new-instance v2, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    invoke-direct {v2, v1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;-><init>(Lcom/facebook/CallbackManager;)V

    iput-object v2, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->resultDelegate:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method static getAccessToken(Lcom/facebook/AccessToken;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;

    invoke-direct {v0, p0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;-><init>(Lcom/facebook/AccessToken;)V

    return-object v0
.end method


# virtual methods
.method expressLogin(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 118
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    new-instance v1, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;

    invoke-direct {v1, p0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;-><init>(Lapp/meedu/flutter_facebook_auth/FacebookAuth;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 119
    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->retrieveLoginStatus(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V

    return-void
.end method

.method public getAccessToken(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 88
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result p0

    if-nez p0, :cond_0

    .line 91
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p0

    invoke-static {p0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->getAccessToken(Lcom/facebook/AccessToken;)Ljava/util/HashMap;

    move-result-object p0

    .line 92
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 94
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getUserData(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 154
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;

    invoke-direct {v1, p0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;-><init>(Lapp/meedu/flutter_facebook_auth/FacebookAuth;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 153
    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 165
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 166
    const-string v0, "fields"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method logOut(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->loginManager:Lcom/facebook/login/LoginManager;

    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->logOut()V

    :cond_0
    const/4 p0, 0x0

    .line 108
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method login(Landroid/app/Activity;Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->loginManager:Lcom/facebook/login/LoginManager;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 45
    :cond_0
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->resultDelegate:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    invoke-virtual {v0, p3}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->setPendingResult(Lio/flutter/plugin/common/MethodChannel$Result;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 47
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->loginManager:Lcom/facebook/login/LoginManager;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public setLoginBehavior(Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "KATANA_ONLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "DEVICE_AUTH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "WEB_ONLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "NATIVE_ONLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "DIALOG_ONLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 76
    sget-object p1, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    goto :goto_1

    .line 63
    :pswitch_0
    sget-object p1, Lcom/facebook/login/LoginBehavior;->KATANA_ONLY:Lcom/facebook/login/LoginBehavior;

    goto :goto_1

    .line 69
    :pswitch_1
    sget-object p1, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    goto :goto_1

    .line 72
    :pswitch_2
    sget-object p1, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    goto :goto_1

    .line 60
    :pswitch_3
    sget-object p1, Lcom/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

    goto :goto_1

    .line 66
    :pswitch_4
    sget-object p1, Lcom/facebook/login/LoginBehavior;->DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 79
    :goto_1
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->loginManager:Lcom/facebook/login/LoginManager;

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c8193bd -> :sswitch_4
        -0x158b7d2c -> :sswitch_3
        0x593e1d7 -> :sswitch_2
        0x261781f1 -> :sswitch_1
        0x3eb7c715 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
