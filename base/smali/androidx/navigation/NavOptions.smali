.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "NavOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavOptions$Builder;
    }
.end annotation


# instance fields
.field private mEnterAnim:I

.field private mExitAnim:I

.field private mPopEnterAnim:I

.field private mPopExitAnim:I

.field private mPopUpTo:I

.field private mPopUpToInclusive:Z

.field private mSingleTop:Z


# direct methods
.method constructor <init>(ZIZIIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    .line 45
    iput p2, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    .line 46
    iput-boolean p3, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    .line 47
    iput p4, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    .line 48
    iput p5, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    .line 49
    iput p6, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    .line 50
    iput p7, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    return-void
.end method


# virtual methods
.method public getEnterAnim()I
    .locals 0

    .line 91
    iget p0, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    return p0
.end method

.method public getExitAnim()I
    .locals 0

    .line 100
    iget p0, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    return p0
.end method

.method public getPopEnterAnim()I
    .locals 0

    .line 110
    iget p0, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    return p0
.end method

.method public getPopExitAnim()I
    .locals 0

    .line 120
    iget p0, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    return p0
.end method

.method public getPopUpTo()I
    .locals 0

    .line 73
    iget p0, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    return p0
.end method

.method public isPopUpToInclusive()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    return p0
.end method

.method public shouldLaunchSingleTop()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    return p0
.end method
