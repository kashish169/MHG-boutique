.class public Lio/endigo/plugins/pdfviewflutter/PDFViewFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "PDFViewFactory.java"


# instance fields
.field private final messenger:Lio/flutter/plugin/common/BinaryMessenger;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    .line 14
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 15
    iput-object p1, p0, Lio/endigo/plugins/pdfviewflutter/PDFViewFactory;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 1

    .line 21
    check-cast p3, Ljava/util/Map;

    .line 22
    new-instance v0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;

    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/PDFViewFactory;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-direct {v0, p1, p0, p2, p3}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;)V

    return-object v0
.end method
