.class public final Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartAuthPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfman/ge/smart_auth/SmartAuthPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SmsBroadcastReceiver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "(Lfman/ge/smart_auth/SmartAuthPlugin;)V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "smart_auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lfman/ge/smart_auth/SmartAuthPlugin;


# direct methods
.method public constructor <init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 413
    iput-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    const-string p1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 416
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    invoke-static {p1}, Lfman/ge/smart_auth/SmartAuthPlugin;->access$removeSmsRetrieverListener(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Pinput/SmartAuth"

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 419
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.google.android.gms.common.api.Status"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    .line 420
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0xf

    if-eq v1, p1, :cond_0

    .line 443
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "SMS Retriever API failed with status code: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", check if SMS contains correct app signature"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    new-instance p2, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$4;

    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    invoke-direct {p2, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$4;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->access$ignoreIllegalState(Lfman/ge/smart_auth/SmartAuthPlugin;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 436
    :cond_0
    const-string p1, "SMS Retriever API timed out, check if SMS contains correct app signature"

    .line 434
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    new-instance p2, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$3;

    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    invoke-direct {p2, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$3;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->access$ignoreIllegalState(Lfman/ge/smart_auth/SmartAuthPlugin;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 422
    :cond_1
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 424
    iget-object p2, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    new-instance v0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$1;

    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    invoke-direct {v0, p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$1;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lfman/ge/smart_auth/SmartAuthPlugin;->access$ignoreIllegalState(Lfman/ge/smart_auth/SmartAuthPlugin;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 428
    :cond_2
    const-string p1, "Retrieved SMS is null, check if SMS contains correct app signature"

    .line 426
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    new-instance p2, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$2;

    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    invoke-direct {p2, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$2;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->access$ignoreIllegalState(Lfman/ge/smart_auth/SmartAuthPlugin;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 451
    :cond_3
    const-string p1, "SMS Retriever API failed with no status code, check if SMS contains correct app signature"

    .line 449
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    new-instance p2, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$5;

    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;->this$0:Lfman/ge/smart_auth/SmartAuthPlugin;

    invoke-direct {p2, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver$onReceive$5;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->access$ignoreIllegalState(Lfman/ge/smart_auth/SmartAuthPlugin;Lkotlin/jvm/functions/Function0;)V

    :cond_4
    :goto_0
    return-void
.end method
