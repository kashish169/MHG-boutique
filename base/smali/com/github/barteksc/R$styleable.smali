.class public final Lcom/github/barteksc/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static ScrollBar:[I = null

.field public static ScrollBar_sb_handlerColor:I = 0x0

.field public static ScrollBar_sb_horizontal:I = 0x1

.field public static ScrollBar_sb_indicatorColor:I = 0x2

.field public static ScrollBar_sb_indicatorTextColor:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const v0, 0x7f0303f8

    const v1, 0x7f0303f9

    const v2, 0x7f0303f6

    const v3, 0x7f0303f7

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/github/barteksc/R$styleable;->ScrollBar:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
