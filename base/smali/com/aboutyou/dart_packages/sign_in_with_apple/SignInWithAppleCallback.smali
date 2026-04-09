.class public final Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithAppleCallback;
.super Landroid/app/Activity;
.source "SignInWithApplePlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithAppleCallback;",
        "Landroid/app/Activity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "sign_in_with_apple_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    sget-object p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->Companion:Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;

    invoke-virtual {p1}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;->getLastAuthorizationRequestResult()Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithAppleCallback;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 142
    sget-object p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->Companion:Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;

    invoke-virtual {p1, v0}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;->setLastAuthorizationRequestResult(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 144
    :cond_1
    sget-object p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->Companion:Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;

    invoke-virtual {p1, v0}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;->setTriggerMainActivityToHideChromeCustomTab(Lkotlin/jvm/functions/Function0;)V

    .line 146
    invoke-static {}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePluginKt;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Received Sign in with Apple callback, but \'lastAuthorizationRequestResult\' function was `null`"

    invoke-static {p1, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_1
    sget-object p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->Companion:Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;

    invoke-virtual {p1}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;->getTriggerMainActivityToHideChromeCustomTab()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 151
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 152
    sget-object p1, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->Companion:Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;

    invoke-virtual {p1, v0}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;->setTriggerMainActivityToHideChromeCustomTab(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 154
    :cond_2
    invoke-static {}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePluginKt;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Received Sign in with Apple callback, but \'triggerMainActivityToHideChromeCustomTab\' function was `null`"

    invoke-static {p1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_2
    invoke-virtual {p0}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithAppleCallback;->finish()V

    return-void
.end method
