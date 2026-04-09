.class public final Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl$onMethodCall$2;
.super Landroid/widget/Toast$Callback;
.source "MethodCallHandlerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "io/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl$onMethodCall$2",
        "Landroid/widget/Toast$Callback;",
        "onToastHidden",
        "",
        "fluttertoast_release"
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
.field final synthetic this$0:Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;


# direct methods
.method constructor <init>(Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;)V
    .locals 0

    iput-object p1, p0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl$onMethodCall$2;->this$0:Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;

    .line 119
    invoke-direct {p0}, Landroid/widget/Toast$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onToastHidden()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/widget/Toast$Callback;->onToastHidden()V

    .line 122
    iget-object p0, p0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl$onMethodCall$2;->this$0:Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->access$setMToast$p(Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;Landroid/widget/Toast;)V

    return-void
.end method
