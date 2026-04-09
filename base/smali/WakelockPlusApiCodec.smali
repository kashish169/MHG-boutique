.class final LWakelockPlusApiCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "Messages.g.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0014J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "LWakelockPlusApiCodec;",
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
        "wakelock_plus_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:LWakelockPlusApiCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LWakelockPlusApiCodec;

    invoke-direct {v0}, LWakelockPlusApiCodec;-><init>()V

    sput-object v0, LWakelockPlusApiCodec;->INSTANCE:LWakelockPlusApiCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x80

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 95
    invoke-virtual {p0, p2}, LWakelockPlusApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 96
    sget-object p1, LIsEnabledMessage;->Companion:LIsEnabledMessage$Companion;

    invoke-virtual {p1, p0}, LIsEnabledMessage$Companion;->fromList(Ljava/util/List;)LIsEnabledMessage;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    const/16 v0, -0x7f

    if-ne p1, v0, :cond_5

    .line 100
    invoke-virtual {p0, p2}, LWakelockPlusApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_4

    .line 101
    sget-object p1, LToggleMessage;->Companion:LToggleMessage$Companion;

    invoke-virtual {p1, p0}, LToggleMessage$Companion;->fromList(Ljava/util/List;)LToggleMessage;

    move-result-object v1

    :cond_4
    return-object v1

    .line 104
    :cond_5
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    instance-of v0, p2, LIsEnabledMessage;

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    .line 110
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    check-cast p2, LIsEnabledMessage;

    invoke-virtual {p2}, LIsEnabledMessage;->toList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LWakelockPlusApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_0
    instance-of v0, p2, LToggleMessage;

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    .line 114
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 115
    check-cast p2, LToggleMessage;

    invoke-virtual {p2}, LToggleMessage;->toList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LWakelockPlusApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
