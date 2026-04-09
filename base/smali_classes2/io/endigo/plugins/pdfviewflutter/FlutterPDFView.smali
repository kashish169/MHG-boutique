.class public Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;
.super Ljava/lang/Object;
.source "FlutterPDFView.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private final linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

.field private final methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private final pdfView:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmethodChannel(Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/plugin/common/BinaryMessenger;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 35
    const-string v2, "preventLinkNavigation"

    invoke-direct {p0, p4, v2}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    .line 37
    new-instance v3, Lio/flutter/plugin/common/MethodChannel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "plugins.endigo.io/pdfview_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v3, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 38
    invoke-virtual {v3, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 40
    new-instance p2, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;

    invoke-direct {p2, p1, v0, v3, v2}, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;-><init>(Landroid/content/Context;Lcom/github/barteksc/pdfviewer/PDFView;Lio/flutter/plugin/common/MethodChannel;Z)V

    iput-object p2, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    .line 43
    const-string p1, "useBestQuality"

    invoke-direct {p0, p4, p1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->useBestQuality(Z)V

    .line 44
    const-string p1, "enableRenderDuringScale"

    invoke-direct {p0, p4, p1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableRenderDuringScale(Z)V

    .line 45
    const-string p1, "thumbnailRatio"

    invoke-direct {p0, p4, p1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getFloat(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    .line 53
    :cond_0
    const-string p1, "filePath"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 54
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->fromUri(Landroid/net/Uri;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_1
    const-string p1, "pdfData"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 57
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 58
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->fromBytes([B)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 61
    :cond_2
    :goto_0
    const-string p1, "backgroundColor"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 63
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setBackgroundColor(I)V

    :cond_3
    if-eqz v1, :cond_4

    .line 68
    const-string p1, "enableSwipe"

    .line 69
    invoke-direct {p0, p4, p1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const-string p3, "swipeHorizontal"

    .line 70
    invoke-direct {p0, p4, p3}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const-string p3, "password"

    .line 71
    invoke-direct {p0, p4, p3}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const-string p3, "nightMode"

    .line 72
    invoke-direct {p0, p4, p3}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->nightMode(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const-string p3, "autoSpacing"

    .line 73
    invoke-direct {p0, p4, p3}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const-string p3, "pageFling"

    .line 74
    invoke-direct {p0, p4, p3}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const-string p3, "pageSnap"

    .line 75
    invoke-direct {p0, p4, p3}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 76
    invoke-direct {p0, p4}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getFitPolicy(Ljava/util/Map;)Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const/4 p3, 0x1

    .line 77
    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler(Lcom/github/barteksc/pdfviewer/link/LinkHandler;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const-string p2, "enableAntialiasing"

    .line 79
    invoke-direct {p0, p4, p2}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableAntialiasing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    const-string p2, "defaultPage"

    .line 82
    invoke-direct {p0, p4, p2}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getInt(Ljava/util/Map;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    new-instance p2, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$4;

    invoke-direct {p2, p0}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$4;-><init>(Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;)V

    .line 83
    invoke-virtual {p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    new-instance p2, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$3;

    invoke-direct {p2, p0}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$3;-><init>(Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;)V

    .line 92
    invoke-virtual {p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    new-instance p2, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$2;

    invoke-direct {p2, p0}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$2;-><init>(Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;)V

    .line 99
    invoke-virtual {p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageError(Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    new-instance p2, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$1;

    invoke-direct {p2, p0}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView$1;-><init>(Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;)V

    .line 107
    invoke-virtual {p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRender(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    :cond_4
    return-void
.end method

.method private applySettings(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "nightMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "pageFling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "pageSnap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "preventLinkNavigation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "enableSwipe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 188
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown PDFView setting: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :pswitch_0
    iget-object v2, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0, p1, v1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setNightMode(Z)V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v2, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0, p1, v1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageFling(Z)V

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v2, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0, p1, v1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageSnap(Z)V

    goto/16 :goto_0

    .line 184
    :pswitch_3
    iget-object v2, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    check-cast v2, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;

    .line 185
    invoke-direct {p0, p1, v1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->setPreventLinkNavigation(Z)V

    goto/16 :goto_0

    .line 172
    :pswitch_4
    iget-object v2, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0, p1, v1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55d1dc89 -> :sswitch_4
        0x30eaeda6 -> :sswitch_3
        0x3339e6f9 -> :sswitch_2
        0x334afc0d -> :sswitch_1
        0x516445db -> :sswitch_0
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

.method private getBoolean(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 199
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFitPolicy(Ljava/util/Map;)Lcom/github/barteksc/pdfviewer/util/FitPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/github/barteksc/pdfviewer/util/FitPolicy;"
        }
    .end annotation

    .line 222
    const-string v0, "fitPolicy"

    invoke-direct {p0, p1, v0}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x609e5f85

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, -0xb6965f4

    if-eq p1, v0, :cond_1

    const v0, 0x330374f2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "FitPolicy.HEIGHT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_1
    const-string p1, "FitPolicy.BOTH"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const-string p1, "FitPolicy.WIDTH"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v1, :cond_4

    .line 230
    sget-object p0, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->BOTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    return-object p0

    .line 227
    :cond_4
    sget-object p0, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->HEIGHT:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    return-object p0

    .line 225
    :cond_5
    sget-object p0, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    return-object p0
.end method

.method private getFloat(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 211
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 214
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 215
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 216
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private getInt(Ljava/util/Map;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 207
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 203
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 235
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 238
    :cond_1
    :goto_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private updateSettings(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 164
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->applySettings(Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 165
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 195
    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method getCurrentPage(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method getPageCount(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 121
    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object p0
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 126
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "setPage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "pageCount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "currentPage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "updateSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 140
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    .line 134
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->setPage(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 128
    :pswitch_1
    invoke-virtual {p0, p2}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getPageCount(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 131
    :pswitch_2
    invoke-virtual {p0, p2}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->getCurrentPage(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 137
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->updateSettings(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x769f7ff4 -> :sswitch_3
        0x23d42fa8 -> :sswitch_2
        0x33223fc0 -> :sswitch_1
        0x764e9211 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setPage(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 154
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 156
    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/FlutterPDFView;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(I)V

    :cond_0
    const/4 p0, 0x1

    .line 159
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
