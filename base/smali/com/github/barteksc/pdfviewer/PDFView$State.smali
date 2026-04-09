.class final enum Lcom/github/barteksc/pdfviewer/PDFView$State;
.super Ljava/lang/Enum;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/barteksc/pdfviewer/PDFView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;


# direct methods
.method private static synthetic $values()[Lcom/github/barteksc/pdfviewer/PDFView$State;
    .locals 4

    .line 1330
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v2, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v3, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/github/barteksc/pdfviewer/PDFView$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1330
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "LOADED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "SHOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    invoke-static {}, Lcom/github/barteksc/pdfviewer/PDFView$State;->$values()[Lcom/github/barteksc/pdfviewer/PDFView$State;

    move-result-object v0

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->$VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1330
    const-class v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-object p0
.end method

.method public static values()[Lcom/github/barteksc/pdfviewer/PDFView$State;
    .locals 1

    .line 1330
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->$VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

    invoke-virtual {v0}, [Lcom/github/barteksc/pdfviewer/PDFView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-object v0
.end method
