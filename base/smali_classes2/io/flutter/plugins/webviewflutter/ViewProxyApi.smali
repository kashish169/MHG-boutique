.class public Lio/flutter/plugins/webviewflutter/ViewProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiView;
.source "ViewProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiView;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public getScrollPosition(Landroid/view/View;)Lio/flutter/plugins/webviewflutter/WebViewPoint;
    .locals 4

    .line 35
    new-instance p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lio/flutter/plugins/webviewflutter/WebViewPoint;-><init>(JJ)V

    return-object p0
.end method

.method public scrollBy(Landroid/view/View;JJ)V
    .locals 0

    long-to-int p0, p2

    long-to-int p2, p4

    .line 29
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method

.method public scrollTo(Landroid/view/View;JJ)V
    .locals 0

    long-to-int p0, p2

    long-to-int p2, p4

    .line 24
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
