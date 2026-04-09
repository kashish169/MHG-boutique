.class Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;
.super Ljava/lang/Object;
.source "DefaultScrollHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;->this$0:Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;->this$0:Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hide()V

    return-void
.end method
