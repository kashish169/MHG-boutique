.class public final Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mToast",
        "Landroid/widget/Toast;",
        "onMethodCall",
        "",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
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
.field private context:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$k2S4iDilCtrwRaQARIxOUypKazg(Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;)V
    .locals 0

    invoke-static {p0}, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->onMethodCall$lambda$0(Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setMToast$p(Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;Landroid/widget/Toast;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private static final onMethodCall$lambda$0(Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "call"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "result"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 27
    const-string v4, "showToast"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    .line 134
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v4, :cond_11

    .line 28
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 29
    const-string v4, "length"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 30
    const-string v7, "gravity"

    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 31
    const-string v8, "bgcolor"

    invoke-virtual {v1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 32
    const-string v9, "textcolor"

    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    .line 33
    const-string v10, "fontSize"

    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    .line 34
    const-string v11, "fontAsset"

    invoke-virtual {v1, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    const-string v11, "top"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v7, 0x30

    goto :goto_0

    .line 38
    :cond_0
    const-string v11, "center"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x11

    goto :goto_0

    :cond_1
    const/16 v7, 0x50

    .line 42
    :goto_0
    const-string v11, "long"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 48
    const-string v11, "getLookupKeyForAsset(...)"

    const-string v14, "getAssets(...)"

    const/16 v15, 0x1e

    if-eqz v8, :cond_6

    .line 49
    iget-object v13, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->context:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v13, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroid/view/LayoutInflater;

    sget v13, Lio/github/ponnamkarthik/toast/fluttertoast/R$layout;->toast_custom:I

    invoke-virtual {v12, v13, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 50
    sget v12, Lio/github/ponnamkarthik/toast/fluttertoast/R$id;->text:I

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 51
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v3, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->context:Landroid/content/Context;

    sget v13, Lio/github/ponnamkarthik/toast/fluttertoast/R$drawable;->corner:I

    invoke-virtual {v3, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v10, :cond_2

    .line 63
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    if-eqz v9, :cond_3

    .line 66
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    :cond_3
    new-instance v3, Landroid/widget/Toast;

    iget-object v8, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    .line 70
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    if-eqz v1, :cond_4

    .line 73
    iget-object v3, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v4

    invoke-virtual {v4}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    :cond_4
    iget-object v1, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 79
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "showToast: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "KARTHIK"

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v8, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->context:Landroid/content/Context;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v8, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    .line 81
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v15, :cond_a

    .line 82
    iget-object v3, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    :cond_7
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x102000b

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    if-eqz v10, :cond_8

    .line 84
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_8
    if-eqz v9, :cond_9

    .line 87
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    if-eqz v1, :cond_a

    .line 90
    iget-object v4, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v6

    invoke-virtual {v6}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v6

    invoke-virtual {v6, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_a
    :goto_1
    const/4 v1, 0x0

    const/16 v3, 0x11

    if-eq v7, v3, :cond_c

    const/16 v3, 0x64

    const/16 v4, 0x30

    if-eq v7, v4, :cond_b

    .line 106
    :try_start_0
    iget-object v4, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v7, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 103
    :cond_b
    iget-object v4, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v7, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 100
    :cond_c
    iget-object v3, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v7, v1, v1}, Landroid/widget/Toast;->setGravity(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    :cond_d
    :goto_2
    iget-object v1, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->context:Landroid/content/Context;

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_e

    .line 112
    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    new-instance v3, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl$$ExternalSyntheticLambda2;-><init>(Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 114
    :cond_e
    iget-object v1, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    :cond_f
    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v15, :cond_10

    .line 118
    iget-object v1, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_10

    .line 119
    new-instance v3, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl$onMethodCall$2;

    invoke-direct {v3, v0}, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl$onMethodCall$2;-><init>(Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;)V

    invoke-static {v3}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/widget/Toast$Callback;

    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/Toast;Landroid/widget/Toast$Callback;)V

    .line 127
    :cond_10
    invoke-interface {v2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 129
    :cond_11
    const-string v1, "cancel"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 130
    iget-object v1, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_13

    if-eqz v1, :cond_12

    .line 131
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 132
    :cond_12
    iput-object v6, v0, Lio/github/ponnamkarthik/toast/fluttertoast/MethodCallHandlerImpl;->mToast:Landroid/widget/Toast;

    .line 134
    :cond_13
    invoke-interface {v2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 136
    :cond_14
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_4
    return-void
.end method
