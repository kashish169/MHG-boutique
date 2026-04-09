.class public final Lco/tamara/sdk/widget/TamaraWidgetText$setLayoutForBorder$learnMoreSpan$1;
.super Landroid/text/style/ClickableSpan;
.source "TamaraWidgetText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/tamara/sdk/widget/TamaraWidgetText;->setLayoutForBorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "co/tamara/sdk/widget/TamaraWidgetText$setLayoutForBorder$learnMoreSpan$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "view",
        "Landroid/view/View;",
        "tamara_flutter_sdk_release"
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
.field final synthetic this$0:Lco/tamara/sdk/widget/TamaraWidgetText;


# direct methods
.method constructor <init>(Lco/tamara/sdk/widget/TamaraWidgetText;)V
    .locals 0

    iput-object p1, p0, Lco/tamara/sdk/widget/TamaraWidgetText$setLayoutForBorder$learnMoreSpan$1;->this$0:Lco/tamara/sdk/widget/TamaraWidgetText;

    .line 92
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lco/tamara/sdk/widget/TamaraWidgetText$setLayoutForBorder$learnMoreSpan$1;->this$0:Lco/tamara/sdk/widget/TamaraWidgetText;

    invoke-static {p0}, Lco/tamara/sdk/widget/TamaraWidgetText;->access$openInfoDialog(Lco/tamara/sdk/widget/TamaraWidgetText;)V

    return-void
.end method
