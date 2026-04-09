.class public Lcom/github/barteksc/pdfviewer/source/AssetSource;
.super Ljava/lang/Object;
.source "AssetSource.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private final assetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/AssetSource;->assetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/source/AssetSource;->assetName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/github/barteksc/pdfviewer/util/FileUtils;->fileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/high16 p1, 0x10000000

    .line 40
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 41
    invoke-virtual {p2, p0, p3}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object p0

    return-object p0
.end method
