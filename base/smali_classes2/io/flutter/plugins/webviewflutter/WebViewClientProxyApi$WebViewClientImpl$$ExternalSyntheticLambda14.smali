.class public final synthetic Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

.field public final synthetic f$1:Landroid/webkit/WebView;

.field public final synthetic f$2:Landroid/webkit/WebResourceRequest;

.field public final synthetic f$3:Landroid/webkit/WebResourceResponse;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;->f$0:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;->f$1:Landroid/webkit/WebView;

    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;->f$2:Landroid/webkit/WebResourceRequest;

    iput-object p4, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;->f$3:Landroid/webkit/WebResourceResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;->f$0:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;->f$1:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;->f$2:Landroid/webkit/WebResourceRequest;

    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;->f$3:Landroid/webkit/WebResourceResponse;

    invoke-static {v0, v1, v2, p0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->$r8$lambda$abpSzWhMiTs5lLcxGAzilLyoUtY(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method
