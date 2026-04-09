.class Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$UserDataMethodChannelResult;
.super Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$ErrorConvertingMethodChannelResult;
.source "GoogleSignInPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserDataMethodChannelResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$ErrorConvertingMethodChannelResult<",
        "Lio/flutter/plugins/googlesignin/Messages$UserData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$ErrorConvertingMethodChannelResult;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method


# virtual methods
.method public success(Lio/flutter/plugins/googlesignin/Messages$UserData;)V
    .locals 3

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    const-string v1, "email"

    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$UserData;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v1, "id"

    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$UserData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "idToken"

    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$UserData;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "serverAuthCode"

    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$UserData;->getServerAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "displayName"

    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$UserData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$UserData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "photoUrl"

    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$UserData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$UserDataMethodChannelResult;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 288
    check-cast p1, Lio/flutter/plugins/googlesignin/Messages$UserData;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$UserDataMethodChannelResult;->success(Lio/flutter/plugins/googlesignin/Messages$UserData;)V

    return-void
.end method
