.class public Lcom/shockwave/pdfium/PdfDocument$Bookmark;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shockwave/pdfium/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bookmark"
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field mNativePtr:J

.field pageIdx:J

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->children:Ljava/util/List;

    return-object p0
.end method

.method public getPageIdx()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->pageIdx:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hasChildren()Z
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
