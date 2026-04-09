.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265SpsData"
.end annotation


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final constraintBytes:[I

.field public final generalLevelIdc:I

.field public final generalProfileCompatibilityFlags:I

.field public final generalProfileIdc:I

.field public final generalProfileSpace:I

.field public final generalTierFlag:Z

.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IZII[IIIIIFIII)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    .line 129
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    .line 130
    iput p3, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    .line 131
    iput p4, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    .line 132
    iput-object p5, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->constraintBytes:[I

    .line 133
    iput p6, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    .line 134
    iput p7, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->seqParameterSetId:I

    .line 135
    iput p8, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->width:I

    .line 136
    iput p9, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->height:I

    .line 137
    iput p10, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 138
    iput p11, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 139
    iput p12, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorRange:I

    .line 140
    iput p13, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorTransfer:I

    return-void
.end method
