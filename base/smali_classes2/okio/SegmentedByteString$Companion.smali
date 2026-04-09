.class public final Lokio/SegmentedByteString$Companion;
.super Ljava/lang/Object;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/SegmentedByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString$Companion\n*L\n1#1,325:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lokio/SegmentedByteString$Companion;",
        "",
        "()V",
        "of",
        "Lokio/ByteString;",
        "buffer",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lokio/SegmentedByteString$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Lokio/Buffer;I)Lokio/ByteString;
    .locals 6

    const-string p0, "buffer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 65
    iget-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_2

    if-nez p0, :cond_0

    .line 67
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget v3, p0, Lokio/Segment;->limit:I

    iget v4, p0, Lokio/Segment;->pos:I

    if-eq v3, v4, :cond_1

    .line 70
    iget v3, p0, Lokio/Segment;->limit:I

    iget v4, p0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    .line 72
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 76
    :cond_2
    new-array p0, v2, [[B

    mul-int/lit8 v2, v2, 0x2

    .line 77
    new-array v1, v2, [I

    .line 80
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    move v2, v0

    :goto_1
    if-ge v0, p2, :cond_4

    if-nez p1, :cond_3

    .line 82
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v3, p1, Lokio/Segment;->data:[B

    aput-object v3, p0, v2

    .line 83
    iget v3, p1, Lokio/Segment;->limit:I

    iget v4, p1, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 85
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v1, v2

    .line 86
    move-object v3, p0

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    add-int/2addr v3, v2

    iget v4, p1, Lokio/Segment;->pos:I

    aput v4, v1, v3

    const/4 v3, 0x1

    .line 87
    iput-boolean v3, p1, Lokio/Segment;->shared:Z

    add-int/2addr v2, v3

    .line 89
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 91
    :cond_4
    new-instance p1, Lokio/SegmentedByteString;

    check-cast p0, [[B

    const/4 p2, 0x0

    invoke-direct {p1, p0, v1, p2}, Lokio/SegmentedByteString;-><init>([[B[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lokio/ByteString;

    return-object p1
.end method
