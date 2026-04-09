.class public final synthetic Lio/flutter/plugins/webviewflutter/WebViewProxyApi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;->lambda$evaluateJavascript$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method
