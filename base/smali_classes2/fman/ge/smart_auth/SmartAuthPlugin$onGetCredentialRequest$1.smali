.class final Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SmartAuthPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfman/ge/smart_auth/SmartAuthPlugin;->onGetCredentialRequest(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $credential:Lcom/google/android/gms/auth/api/credentials/Credential;

.field final synthetic this$0:Lfman/ge/smart_auth/SmartAuthPlugin;


# direct methods
.method constructor <init>(Lfman/ge/smart_auth/SmartAuthPlugin;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    iput-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    iput-object p2, p0, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;->$credential:Lcom/google/android/gms/auth/api/credentials/Credential;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 321
    invoke-virtual {p0}, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 321
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    invoke-static {v0}, Lfman/ge/smart_auth/SmartAuthPlugin;->access$getPendingResult$p(Lfman/ge/smart_auth/SmartAuthPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;->$credential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-static {v1, p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->access$credentialToMap(Lfman/ge/smart_auth/SmartAuthPlugin;Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
