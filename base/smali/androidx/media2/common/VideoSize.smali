.class public Landroidx/media2/common/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# instance fields
.field mHeight:I

.field mWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    .line 57
    iput p1, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    .line 58
    iput p2, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height can not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width can not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 95
    :cond_1
    instance-of v2, p1, Landroidx/media2/common/VideoSize;

    if-eqz v2, :cond_2

    .line 96
    check-cast p1, Landroidx/media2/common/VideoSize;

    .line 97
    iget v2, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    iget v3, p1, Landroidx/media2/common/VideoSize;->mWidth:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    iget p1, p1, Landroidx/media2/common/VideoSize;->mHeight:I

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getHeight()I
    .locals 0

    .line 74
    iget p0, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 66
    iget p0, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 116
    iget v0, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    iget p0, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    shl-int/lit8 v1, p0, 0x10

    ushr-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
