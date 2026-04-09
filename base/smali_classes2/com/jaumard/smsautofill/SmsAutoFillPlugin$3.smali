.class Lcom/jaumard/smsautofill/SmsAutoFillPlugin$3;
.super Ljava/lang/Object;
.source "SmsAutoFillPlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$3;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    iput-object p2, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$3;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$3;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "ERROR_START_SMS_RETRIEVER"

    const-string v1, "Can\'t start sms retriever"

    invoke-interface {p0, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
