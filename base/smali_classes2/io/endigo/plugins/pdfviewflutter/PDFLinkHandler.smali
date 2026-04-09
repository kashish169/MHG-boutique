.class public Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;
.super Ljava/lang/Object;
.source "PDFLinkHandler.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/link/LinkHandler;


# instance fields
.field context:Landroid/content/Context;

.field methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field preventLinkNavigation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/barteksc/pdfviewer/PDFView;Lio/flutter/plugin/common/MethodChannel;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 22
    iput-object p3, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 23
    iput-boolean p4, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->preventLinkNavigation:Z

    return-void
.end method

.method private handlePage(I)V
    .locals 0

    .line 54
    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(I)V

    return-void
.end method

.method private handleUri(Ljava/lang/String;)V
    .locals 3

    .line 39
    iget-boolean v0, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->preventLinkNavigation:Z

    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 43
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v0, 0x8000

    .line 44
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->onLinkHandler(Ljava/lang/String;)V

    return-void
.end method

.method private onLinkHandler(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object p0, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "onLinkHandler"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleLinkEvent(Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->getLink()Lcom/shockwave/pdfium/PdfDocument$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shockwave/pdfium/PdfDocument$Link;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->getLink()Lcom/shockwave/pdfium/PdfDocument$Link;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shockwave/pdfium/PdfDocument$Link;->getDestPageIdx()Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-direct {p0, v0}, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->handleUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->handlePage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPreventLinkNavigation(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lio/endigo/plugins/pdfviewflutter/PDFLinkHandler;->preventLinkNavigation:Z

    return-void
.end method
