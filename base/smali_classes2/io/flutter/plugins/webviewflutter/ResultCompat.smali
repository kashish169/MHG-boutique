.class public final Lio/flutter/plugins/webviewflutter/ResultCompat;
.super Ljava/lang/Object;
.source "ResultCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 \u0012*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0012B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007J\r\u0010\u0011\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\rR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\nR\u0011\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u001f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000f\u001a\u0004\u0018\u00018\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000e\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/flutter/plugins/webviewflutter/ResultCompat;",
        "T",
        "",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)V",
        "exception",
        "",
        "isFailure",
        "",
        "()Z",
        "isSuccess",
        "getResult-d1pmJ48",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "value",
        "exceptionOrNull",
        "getOrNull",
        "Companion",
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


# static fields
.field public static final Companion:Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;


# instance fields
.field private final exception:Ljava/lang/Throwable;

.field private final isFailure:Z

.field private final isSuccess:Z

.field private final result:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/flutter/plugins/webviewflutter/ResultCompat;->Companion:Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->result:Ljava/lang/Object;

    .line 16
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->value:Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->exception:Ljava/lang/Throwable;

    .line 18
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->isSuccess:Z

    .line 19
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->isFailure:Z

    return-void
.end method

.method public static final asCompatCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/flutter/plugins/webviewflutter/ResultCompat<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Result<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/flutter/plugins/webviewflutter/ResultCompat;->Companion:Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;->asCompatCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final success(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/flutter/plugins/webviewflutter/ResultCompat;->Companion:Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;->success(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final exceptionOrNull()Ljava/lang/Throwable;
    .locals 0

    .line 39
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->exception:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getOrNull()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final getResult-d1pmJ48()Ljava/lang/Object;
    .locals 0

    .line 15
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->result:Ljava/lang/Object;

    return-object p0
.end method

.method public final isFailure()Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->isFailure:Z

    return p0
.end method

.method public final isSuccess()Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lio/flutter/plugins/webviewflutter/ResultCompat;->isSuccess:Z

    return p0
.end method
