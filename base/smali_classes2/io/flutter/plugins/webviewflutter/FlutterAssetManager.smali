.class public abstract Lio/flutter/plugins/webviewflutter/FlutterAssetManager;
.super Ljava/lang/Object;
.source "FlutterAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/FlutterAssetManager$PluginBindingFlutterAssetManager;
    }
.end annotation


# instance fields
.field final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method abstract getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
