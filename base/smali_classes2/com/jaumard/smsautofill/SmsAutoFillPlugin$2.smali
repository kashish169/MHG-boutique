.class Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;
.super Ljava/lang/Object;
.source "SmsAutoFillPlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic val$smsCodeRegexPattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    iput-object p2, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->val$smsCodeRegexPattern:Ljava/lang/String;

    iput-object p3, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 4

    .line 114
    iget-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$munregisterReceiver(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)V

    .line 115
    iget-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    new-instance v0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->val$smsCodeRegexPattern:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver-IA;)V

    invoke-static {p1, v0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fputbroadcastReceiver(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;)V

    .line 117
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    if-lt p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetactivity(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {v0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetbroadcastReceiver(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetactivity(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->this$0:Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {v0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetbroadcastReceiver(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    :goto_0
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
