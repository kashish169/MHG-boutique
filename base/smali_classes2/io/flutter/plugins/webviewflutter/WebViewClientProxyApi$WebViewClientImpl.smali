.class public Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;
.super Landroid/webkit/WebViewClient;
.source "WebViewClientProxyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewClientImpl"
.end annotation


# instance fields
.field private final api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

.field private returnValueForShouldOverrideUrlLoading:Z


# direct methods
.method public static synthetic $r8$lambda$KQA6iQf5fW-PqQjBsmpVT88LhOA(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$onReceivedHttpAuthRequest$17(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WDrpeyKD4p6o1nd4MqemDiadTVU(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$onReceivedError$7(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$abpSzWhMiTs5lLcxGAzilLyoUtY(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$onReceivedHttpError$5(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnvfxYp7jWGEZxYDRxrrsk8LDok(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$onPageFinished$3(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hdbisYEo3w_Tw_yPIdS3T1bGyWw(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$onReceivedError$9(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hnA1Fn24fJsZ9GEUx1aqT-LuRXg(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$shouldOverrideUrlLoading$13(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m6T5AU7tFQTMnbCFWKH6XhHU7Bg(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$doUpdateVisitedHistory$15(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nzJ8pAn6mAC9SPFVk5C42k1NMZs(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$onPageStarted$1(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q9mhlwQ7LY2AOJ3pOtrd0rExlG0(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->lambda$shouldOverrideUrlLoading$11(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->returnValueForShouldOverrideUrlLoading:Z

    .line 39
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    return-void
.end method

.method static synthetic lambda$doUpdateVisitedHistory$14(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$doUpdateVisitedHistory$15(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 6

    .line 114
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    new-instance v5, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda1;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->doUpdateVisitedHistory(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic lambda$onPageFinished$2(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onPageFinished$3(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->onPageFinished(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic lambda$onPageStarted$0(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onPageStarted$1(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->onPageStarted(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic lambda$onReceivedError$6(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onReceivedError$7(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 6

    .line 71
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    new-instance v5, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda4;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->onReceivedRequestError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic lambda$onReceivedError$8(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onReceivedError$9(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 85
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    int-to-long v3, p2

    new-instance v7, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda16;

    invoke-direct {v7}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda16;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->onReceivedError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;JLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic lambda$onReceivedHttpAuthRequest$16(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onReceivedHttpAuthRequest$17(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 125
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    new-instance v6, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda9;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->onReceivedHttpAuthRequest(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic lambda$onReceivedHttpError$4(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onReceivedHttpError$5(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 6

    .line 61
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    new-instance v5, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda11;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->onReceivedHttpError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic lambda$shouldOverrideUrlLoading$10(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$shouldOverrideUrlLoading$11(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->requestLoading(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static synthetic lambda$shouldOverrideUrlLoading$12(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$shouldOverrideUrlLoading$13(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->urlLoading(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .line 112
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda15;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 44
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {p3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p3

    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p3, v0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 82
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v7, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda7;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v7}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda10;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 70
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 123
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v7, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda12;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda12;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v7}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda14;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 60
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public setReturnValueForShouldOverrideUrlLoading(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->returnValueForShouldOverrideUrlLoading:Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda17;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V

    .line 93
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 97
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->returnValueForShouldOverrideUrlLoading:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->api:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl$$ExternalSyntheticLambda5;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 106
    iget-boolean p0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->returnValueForShouldOverrideUrlLoading:Z

    return p0
.end method
