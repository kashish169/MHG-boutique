.class Lio/flutter/plugins/webviewflutter/FlutterViewFactory$1;
.super Ljava/lang/Object;
.source "FlutterViewFactory.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/webviewflutter/FlutterViewFactory;->create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/webviewflutter/FlutterViewFactory;

.field final synthetic val$instance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/flutter/plugins/webviewflutter/FlutterViewFactory;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/FlutterViewFactory$1;->this$0:Lio/flutter/plugins/webviewflutter/FlutterViewFactory;

    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/FlutterViewFactory$1;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/FlutterViewFactory$1;->val$instance:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
