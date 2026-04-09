.class public Lio/flutter/plugins/webviewflutter/JavaScriptChannel;
.super Ljava/lang/Object;
.source "JavaScriptChannel.java"


# instance fields
.field private final api:Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;

.field final javaScriptChannelName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2XDBUtzknmGtNb8pRht4pPcT1gA(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->lambda$postMessage$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->javaScriptChannelName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->api:Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;

    return-void
.end method

.method static synthetic lambda$postMessage$0(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$postMessage$1(Ljava/lang/String;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->api:Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;

    new-instance v1, Lio/flutter/plugins/webviewflutter/JavaScriptChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;->postMessage(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 31
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->api:Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/webviewflutter/JavaScriptChannel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannel$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
