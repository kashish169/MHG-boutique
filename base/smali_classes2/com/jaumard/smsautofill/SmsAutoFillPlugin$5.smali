.class Lcom/jaumard/smsautofill/SmsAutoFillPlugin$5;
.super Ljava/lang/Object;
.source "SmsAutoFillPlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->requestHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;


# direct methods
.method constructor <init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$5;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/app/PendingIntent;)V
    .locals 8

    .line 169
    :try_start_0
    new-instance v0, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v0, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$5;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {v0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetactivity(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Landroid/app/Activity;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v3, 0x2b04

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 170
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$5;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetpendingHintResult(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object p0

    const-string v0, "ERROR"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {p0, p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$5;->onSuccess(Landroid/app/PendingIntent;)V

    return-void
.end method
