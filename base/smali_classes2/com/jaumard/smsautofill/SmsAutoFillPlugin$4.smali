.class Lcom/jaumard/smsautofill/SmsAutoFillPlugin$4;
.super Ljava/lang/Object;
.source "SmsAutoFillPlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->requestHint()V
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

    .line 180
    iput-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$4;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$4;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetpendingHintResult(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object p0

    const-string v0, "ERROR"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
