.class Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;
.super Ljava/lang/Object;
.source "FacebookAuth.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/meedu/flutter_facebook_auth/FacebookAuth;->getUserData(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lapp/meedu/flutter_facebook_auth/FacebookAuth;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;->this$0:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    iput-object p2, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 159
    :try_start_0
    iget-object p2, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    iget-object p0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "FAILED"

    invoke-interface {p0, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
