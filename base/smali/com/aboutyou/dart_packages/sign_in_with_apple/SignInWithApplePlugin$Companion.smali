.class public final Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;
.super Ljava/lang/Object;
.source "SignInWithApplePlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;",
        "",
        "()V",
        "lastAuthorizationRequestResult",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "getLastAuthorizationRequestResult",
        "()Lio/flutter/plugin/common/MethodChannel$Result;",
        "setLastAuthorizationRequestResult",
        "(Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "triggerMainActivityToHideChromeCustomTab",
        "Lkotlin/Function0;",
        "",
        "getTriggerMainActivityToHideChromeCustomTab",
        "()Lkotlin/jvm/functions/Function0;",
        "setTriggerMainActivityToHideChromeCustomTab",
        "(Lkotlin/jvm/functions/Function0;)V",
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
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastAuthorizationRequestResult()Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 0

    .line 40
    invoke-static {}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->access$getLastAuthorizationRequestResult$cp()Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object p0

    return-object p0
.end method

.method public final getTriggerMainActivityToHideChromeCustomTab()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->access$getTriggerMainActivityToHideChromeCustomTab$cp()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public final setLastAuthorizationRequestResult(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->access$setLastAuthorizationRequestResult$cp(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public final setTriggerMainActivityToHideChromeCustomTab(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;->access$setTriggerMainActivityToHideChromeCustomTab$cp(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
