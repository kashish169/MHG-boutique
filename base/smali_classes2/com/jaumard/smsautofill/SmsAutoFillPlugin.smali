.class public Lcom/jaumard/smsautofill/SmsAutoFillPlugin;
.super Ljava/lang/Object;
.source "SmsAutoFillPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final PHONE_HINT_REQUEST:I = 0x2b04

.field private static final channelName:Ljava/lang/String; = "sms_autofill"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final activityResultListener:Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

.field private broadcastReceiver:Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private pendingHintResult:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbroadcastReceiver(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->broadcastReceiver:Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingHintResult(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 0

    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->pendingHintResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbroadcastReceiver(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->broadcastReceiver:Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterReceiver(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->unregisterReceiver()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;

    invoke-direct {v0, p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;-><init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)V

    iput-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activityResultListener:Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    return-void
.end method

.method private constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;

    invoke-direct {v0, p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$1;-><init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)V

    iput-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activityResultListener:Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    .line 83
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    .line 84
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->setupChannel(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 85
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-direct {v0, p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    return-void
.end method

.method private requestHint()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->pendingHintResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 155
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 161
    :cond_1
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;->builder()Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest$Builder;->build()Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    move-result-object v1

    .line 164
    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/api/identity/SignInClient;->getPhoneNumberHintIntent(Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$5;

    invoke-direct {v1, p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$5;-><init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)V

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$4;

    invoke-direct {v1, p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$4;-><init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)V

    .line 180
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private setupChannel(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 195
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "sms_autofill"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 196
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->broadcastReceiver:Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->broadcastReceiver:Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public isSimSupport()Z
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 191
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 263
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    .line 264
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activityResultListener:Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 219
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->setupChannel(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->unregisterReceiver()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->unregisterReceiver()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->unregisterReceiver()V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 101
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "requestPhoneHint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "getAppSignature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "unregisterListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "listenForCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 145
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    .line 103
    :pswitch_0
    iput-object p2, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->pendingHintResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 104
    invoke-direct {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->requestHint()V

    goto :goto_1

    .line 140
    :pswitch_1
    new-instance p1, Lcom/jaumard/smsautofill/AppSignatureHelper;

    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/jaumard/smsautofill/AppSignatureHelper;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p1}, Lcom/jaumard/smsautofill/AppSignatureHelper;->getAppSignature()Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    :pswitch_2
    invoke-direct {p0}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->unregisterReceiver()V

    .line 137
    const-string p0, "successfully unregister receiver"

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    :pswitch_3
    const-string v0, "smsCodeRegexPattern"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$2;-><init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 128
    new-instance p1, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$3;

    invoke-direct {p1, p0, p2}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$3;-><init>(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48531171 -> :sswitch_3
        -0x3dde3ef0 -> :sswitch_2
        0x6e1a60d -> :sswitch_1
        0x727ec746 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 302
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activity:Landroid/app/Activity;

    .line 303
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->activityResultListener:Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "smscode"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
