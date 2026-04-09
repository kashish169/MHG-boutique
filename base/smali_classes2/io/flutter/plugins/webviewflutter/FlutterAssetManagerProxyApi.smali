.class public Lio/flutter/plugins/webviewflutter/FlutterAssetManagerProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;
.source "FlutterAssetManagerProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public getAssetFilePathByName(Lio/flutter/plugins/webviewflutter/FlutterAssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;->getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    return-object p0
.end method

.method public getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
    .locals 0

    .line 57
    invoke-super {p0}, Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    return-object p0
.end method

.method public instance()Lio/flutter/plugins/webviewflutter/FlutterAssetManager;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->getFlutterAssetManager()Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    move-result-object p0

    return-object p0
.end method

.method public list(Lio/flutter/plugins/webviewflutter/FlutterAssetManager;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/webviewflutter/FlutterAssetManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 38
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 41
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
