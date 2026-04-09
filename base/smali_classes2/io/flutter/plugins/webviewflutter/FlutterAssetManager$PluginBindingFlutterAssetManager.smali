.class Lio/flutter/plugins/webviewflutter/FlutterAssetManager$PluginBindingFlutterAssetManager;
.super Lio/flutter/plugins/webviewflutter/FlutterAssetManager;
.source "FlutterAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/FlutterAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginBindingFlutterAssetManager"
.end annotation


# instance fields
.field final flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;-><init>(Landroid/content/res/AssetManager;)V

    .line 71
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/FlutterAssetManager$PluginBindingFlutterAssetManager;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    return-void
.end method


# virtual methods
.method public getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/FlutterAssetManager$PluginBindingFlutterAssetManager;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;->getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
