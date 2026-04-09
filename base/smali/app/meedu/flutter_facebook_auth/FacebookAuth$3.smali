.class Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;
.super Ljava/util/HashMap;
.source "FacebookAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/meedu/flutter_facebook_auth/FacebookAuth;->getAccessToken(Lcom/facebook/AccessToken;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accessToken:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Lcom/facebook/AccessToken;)V
    .locals 2

    .line 176
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 178
    const-string/jumbo v0, "token"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v0, "userId"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "expires"

    invoke-virtual {p0, v1, v0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "applicationId"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lastRefresh"

    invoke-virtual {p0, v1, v0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isExpired"

    invoke-virtual {p0, v1, v0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "grantedPermissions"

    invoke-virtual {p0, v1, v0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "declinedPermissions"

    invoke-virtual {p0, v1, v0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getDataAccessExpirationTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "dataAccessExpirationTime"

    invoke-virtual {p0, v0, p1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
