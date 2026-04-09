.class Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;
.super Ljava/lang/Object;
.source "SmsAutoFillPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaumard/smsautofill/SmsAutoFillPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;


# direct methods
.method constructor <init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x2b04

    if-ne p1, v0, :cond_1

    .line 62
    :try_start_0
    iget-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetpendingHintResult(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 64
    iget-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetactivity(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Landroid/app/Activity;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/identity/SignInClient;->getPhoneNumberFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetpendingHintResult(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetpendingHintResult(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 73
    const-string p1, "Exception"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
