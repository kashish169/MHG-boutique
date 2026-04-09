.class Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$4;
.super Ljava/lang/Object;
.source "FlutterPDFView.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;


# direct methods
.method constructor <init>(Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$4;->this$0:Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChanged(II)V
    .locals 2

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string p1, "total"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$4;->this$0:Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;

    invoke-static {p0}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->-$$Nest$fgetmethodChannel(Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object p0

    const-string p1, "onPageChanged"

    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
