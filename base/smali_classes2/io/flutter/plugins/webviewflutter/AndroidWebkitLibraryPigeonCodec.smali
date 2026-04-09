.class Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "AndroidWebkitLibrary.g.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidWebkitLibrary.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,4798:1\n1#2:4799\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0014J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;",
        "Lio/flutter/plugin/common/StandardMessageCodec;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 729
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x7f

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 733
    invoke-virtual {p0, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    sget-object p2, Lio/flutter/plugins/webviewflutter/FileChooserMode;->Companion:Lio/flutter/plugins/webviewflutter/FileChooserMode$Companion;

    long-to-int p0, p0

    invoke-virtual {p2, p0}, Lio/flutter/plugins/webviewflutter/FileChooserMode$Companion;->ofRaw(I)Lio/flutter/plugins/webviewflutter/FileChooserMode;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const/16 v0, -0x7e

    if-ne p1, v0, :cond_3

    .line 736
    invoke-virtual {p0, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    sget-object p2, Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel;->Companion:Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel$Companion;

    long-to-int p0, p0

    invoke-virtual {p2, p0}, Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel$Companion;->ofRaw(I)Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel;

    move-result-object v1

    :cond_2
    return-object v1

    .line 738
    :cond_3
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/FileChooserMode;

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    .line 745
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 746
    check-cast p2, Lio/flutter/plugins/webviewflutter/FileChooserMode;

    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/FileChooserMode;->getRaw()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 748
    :cond_0
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel;

    if-eqz v0, :cond_1

    const/16 v0, 0x82

    .line 749
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 750
    check-cast p2, Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel;

    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel;->getRaw()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 752
    :cond_1
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
