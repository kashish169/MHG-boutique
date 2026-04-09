.class public final Lco/tamara/sdk/log/LoggingKt;
.super Ljava/lang/Object;
.source "Logging.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0000\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "isDebug",
        "",
        "()Z",
        "tamara_flutter_sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-string v0, "debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lco/tamara/sdk/log/LoggingKt;->isDebug:Z

    return-void
.end method

.method public static final isDebug()Z
    .locals 1

    .line 5
    sget-boolean v0, Lco/tamara/sdk/log/LoggingKt;->isDebug:Z

    return v0
.end method
