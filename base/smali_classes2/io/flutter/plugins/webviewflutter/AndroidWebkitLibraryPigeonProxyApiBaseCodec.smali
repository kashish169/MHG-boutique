.class final Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;
.super Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;
.source "AndroidWebkitLibrary.g.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;",
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;",
        "registrar",
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;",
        "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V",
        "getRegistrar",
        "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;",
        "readValueOfType",
        "",
        "type",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "writeValue",
        "",
        "stream",
        "Ljava/io/ByteArrayOutputStream;",
        "value",
        "webview_flutter_android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V
    .locals 1

    const-string v0, "registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;-><init>()V

    .line 548
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    return-void
.end method


# virtual methods
.method public final getRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 0

    .line 548
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    return-object p0
.end method

.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x80

    if-ne p1, v0, :cond_0

    .line 553
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    move-result-object p1

    invoke-virtual {p0, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->getInstance(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 555
    :cond_0
    invoke-super {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 561
    instance-of v0, p2, [B

    if-nez v0, :cond_17

    .line 562
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_17

    .line 563
    instance-of v0, p2, [D

    if-nez v0, :cond_17

    .line 564
    instance-of v0, p2, [F

    if-nez v0, :cond_17

    .line 565
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_17

    .line 566
    instance-of v0, p2, [I

    if-nez v0, :cond_17

    .line 567
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_17

    .line 568
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_17

    .line 569
    instance-of v0, p2, [J

    if-nez v0, :cond_17

    .line 570
    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_17

    .line 571
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_17

    .line 572
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/FileChooserMode;

    if-nez v0, :cond_17

    .line 573
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel;

    if-nez v0, :cond_17

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 579
    :cond_0
    instance-of v0, p2, Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebResourceRequest()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebResourceRequest;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$1;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;->pigeon_newInstance(Landroid/webkit/WebResourceRequest;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 581
    :cond_1
    instance-of v0, p2, Landroid/webkit/WebResourceResponse;

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebResourceResponse()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebResourceResponse;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$2;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;->pigeon_newInstance(Landroid/webkit/WebResourceResponse;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 583
    :cond_2
    instance-of v0, p2, Landroid/webkit/WebResourceError;

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebResourceError()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebResourceError;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$3;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$3;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;->pigeon_newInstance(Landroid/webkit/WebResourceError;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 585
    :cond_3
    instance-of v0, p2, Landroidx/webkit/WebResourceErrorCompat;

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebResourceErrorCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroidx/webkit/WebResourceErrorCompat;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$4;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$4;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;->pigeon_newInstance(Landroidx/webkit/WebResourceErrorCompat;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 587
    :cond_4
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/WebViewPoint;

    if-eqz v0, :cond_5

    .line 588
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebViewPoint()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/flutter/plugins/webviewflutter/WebViewPoint;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$5;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$5;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;->pigeon_newInstance(Lio/flutter/plugins/webviewflutter/WebViewPoint;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 589
    :cond_5
    instance-of v0, p2, Landroid/webkit/ConsoleMessage;

    if-eqz v0, :cond_6

    .line 590
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiConsoleMessage()Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/ConsoleMessage;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$6;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$6;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;->pigeon_newInstance(Landroid/webkit/ConsoleMessage;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 591
    :cond_6
    instance-of v0, p2, Landroid/webkit/CookieManager;

    if-eqz v0, :cond_7

    .line 592
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiCookieManager()Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/CookieManager;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$7;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$7;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;->pigeon_newInstance(Landroid/webkit/CookieManager;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 593
    :cond_7
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    .line 594
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebView()Lio/flutter/plugins/webviewflutter/PigeonApiWebView;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebView;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$8;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$8;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebView;->pigeon_newInstance(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 595
    :cond_8
    instance-of v0, p2, Landroid/webkit/WebSettings;

    if-eqz v0, :cond_9

    .line 596
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebSettings()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebSettings;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$9;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$9;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;->pigeon_newInstance(Landroid/webkit/WebSettings;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 597
    :cond_9
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;

    if-eqz v0, :cond_a

    .line 598
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiJavaScriptChannel()Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$10;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$10;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;->pigeon_newInstance(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 599
    :cond_a
    instance-of v0, p2, Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_b

    .line 600
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebViewClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebViewClient;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$11;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$11;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;->pigeon_newInstance(Landroid/webkit/WebViewClient;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 601
    :cond_b
    instance-of v0, p2, Landroid/webkit/DownloadListener;

    if-eqz v0, :cond_c

    .line 602
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiDownloadListener()Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/DownloadListener;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$12;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$12;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;->pigeon_newInstance(Landroid/webkit/DownloadListener;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 603
    :cond_c
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    if-eqz v0, :cond_d

    .line 605
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebChromeClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$13;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$13;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->pigeon_newInstance(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 606
    :cond_d
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    if-eqz v0, :cond_e

    .line 607
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiFlutterAssetManager()Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$14;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$14;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;->pigeon_newInstance(Lio/flutter/plugins/webviewflutter/FlutterAssetManager;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 608
    :cond_e
    instance-of v0, p2, Landroid/webkit/WebStorage;

    if-eqz v0, :cond_f

    .line 609
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebStorage()Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebStorage;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$15;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$15;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;->pigeon_newInstance(Landroid/webkit/WebStorage;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 610
    :cond_f
    instance-of v0, p2, Landroid/webkit/WebChromeClient$FileChooserParams;

    if-eqz v0, :cond_10

    .line 611
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiFileChooserParams()Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebChromeClient$FileChooserParams;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$16;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$16;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;->pigeon_newInstance(Landroid/webkit/WebChromeClient$FileChooserParams;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 612
    :cond_10
    instance-of v0, p2, Landroid/webkit/PermissionRequest;

    if-eqz v0, :cond_11

    .line 613
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiPermissionRequest()Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/PermissionRequest;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$17;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$17;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;->pigeon_newInstance(Landroid/webkit/PermissionRequest;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 614
    :cond_11
    instance-of v0, p2, Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_12

    .line 615
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiCustomViewCallback()Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebChromeClient$CustomViewCallback;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$18;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$18;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;->pigeon_newInstance(Landroid/webkit/WebChromeClient$CustomViewCallback;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 616
    :cond_12
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_13

    .line 617
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiView()Lio/flutter/plugins/webviewflutter/PigeonApiView;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$19;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$19;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiView;->pigeon_newInstance(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 618
    :cond_13
    instance-of v0, p2, Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v0, :cond_14

    .line 619
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiGeolocationPermissionsCallback()Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/GeolocationPermissions$Callback;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$20;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$20;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;->pigeon_newInstance(Landroid/webkit/GeolocationPermissions$Callback;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 620
    :cond_14
    instance-of v0, p2, Landroid/webkit/HttpAuthHandler;

    if-eqz v0, :cond_15

    .line 621
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiHttpAuthHandler()Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/HttpAuthHandler;

    sget-object v2, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$21;->INSTANCE:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec$writeValue$21;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;->pigeon_newInstance(Landroid/webkit/HttpAuthHandler;Lkotlin/jvm/functions/Function1;)V

    .line 625
    :cond_15
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->containsInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x80

    .line 626
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 627
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    return-void

    .line 630
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 631
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported value: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' of type \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :cond_17
    :goto_1
    invoke-super {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    return-void
.end method
