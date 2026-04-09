.class public Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;
.super Ljava/lang/Object;
.source "FlutterFacebookAuthPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field private static final CHANNEL_NAME:Ljava/lang/String; = "app.meedu/flutter_facebook_auth"


# instance fields
.field private activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private final facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    invoke-direct {v0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;-><init>()V

    iput-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    return-void
.end method

.method private attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 94
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->resultDelegate:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method private disposeActivity()V
    .locals 2

    .line 98
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    iget-object v1, v1, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->resultDelegate:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 31
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "app.meedu/flutter_facebook_auth"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 32
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->disposeActivity()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->disposeActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 37
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getUserData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "expressLogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "logOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "getAccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 62
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    .line 53
    :pswitch_0
    const-string v0, "fields"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 54
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    invoke-virtual {p0, p1, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->getUserData(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 45
    :pswitch_1
    iget-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->expressLogin(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 39
    :pswitch_2
    const-string v0, "permissions"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 40
    const-string v1, "loginBehavior"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    invoke-virtual {v1, p1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->setLoginBehavior(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->login(Landroid/app/Activity;Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 58
    :pswitch_3
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    invoke-virtual {p0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->logOut(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 49
    :pswitch_4
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->facebookAuth:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    invoke-virtual {p0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->getAccessToken(Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x644fe641 -> :sswitch_4
        -0x41686296 -> :sswitch_3
        0x625ef69 -> :sswitch_2
        0x42c895d9 -> :sswitch_1
        0x6bf0af8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
