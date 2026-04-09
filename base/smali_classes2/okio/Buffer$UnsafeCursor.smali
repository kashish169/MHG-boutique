.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,2216:1\n72#2:2217\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n2134#1:2217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Buffer$UnsafeCursor;",
        "Ljava/io/Closeable;",
        "()V",
        "buffer",
        "Lokio/Buffer;",
        "data",
        "",
        "end",
        "",
        "offset",
        "",
        "readWrite",
        "",
        "segment",
        "Lokio/Segment;",
        "start",
        "close",
        "",
        "expandBuffer",
        "minByteCount",
        "next",
        "resizeBuffer",
        "newSize",
        "seek",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1991
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    .line 1993
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1994
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2201
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2203
    move-object v1, v0

    check-cast v1, Lokio/Buffer;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2204
    move-object v1, v0

    check-cast v1, Lokio/Segment;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v1, -0x1

    .line 2205
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2206
    move-object v1, v0

    check-cast v1, [B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 2207
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2208
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void

    .line 2201
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public final expandBuffer(I)J
    .locals 9

    if-lez p1, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2

    .line 2180
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v1, :cond_1

    .line 2181
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_0

    .line 2183
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 2184
    invoke-virtual {v1, p1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object p1

    .line 2185
    iget v4, p1, Lokio/Segment;->limit:I

    rsub-int v4, v4, 0x2000

    .line 2186
    iput v0, p1, Lokio/Segment;->limit:I

    int-to-long v5, v4

    add-long v7, v2, v5

    .line 2187
    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->setSize$jvm(J)V

    .line 2190
    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2191
    iput-wide v2, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2192
    iget-object p1, p1, Lokio/Segment;->data:[B

    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v4, 0x2000

    .line 2193
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2194
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-wide v5

    .line 2181
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "expandBuffer() only permitted for read/write buffers"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 2180
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not attached to a buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 2179
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "minByteCount > Segment.SIZE: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 2178
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "minByteCount <= 0: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final next()I
    .locals 4

    .line 2002
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2003
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result p0

    return p0

    .line 2002
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no more bytes"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public final resizeBuffer(J)J
    .locals 13

    .line 2102
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_9

    .line 2103
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_8

    .line 2105
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, p1, v1

    const-wide/16 v4, 0x0

    if-gtz v3, :cond_5

    cmp-long v3, p1, v4

    if-ltz v3, :cond_4

    sub-long v6, v1, p1

    :goto_0
    cmp-long v3, v6, v4

    if-lez v3, :cond_3

    .line 2111
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v3, :cond_1

    .line 2112
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget v8, v3, Lokio/Segment;->limit:I

    iget v9, v3, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    cmp-long v10, v8, v6

    if-gtz v10, :cond_2

    .line 2114
    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v10

    iput-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2115
    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    sub-long/2addr v6, v8

    goto :goto_0

    .line 2118
    :cond_2
    iget v4, v3, Lokio/Segment;->limit:I

    long-to-int v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lokio/Segment;->limit:I

    :cond_3
    const/4 v3, 0x0

    .line 2123
    move-object v4, v3

    check-cast v4, Lokio/Segment;

    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2124
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2125
    move-object v4, v3

    check-cast v4, [B

    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v3, -0x1

    .line 2126
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2127
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    goto :goto_2

    .line 2107
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "newSize < 0: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    if-lez v3, :cond_7

    sub-long v6, p1, v1

    const/4 v3, 0x1

    move v8, v3

    :cond_6
    :goto_1
    cmp-long v9, v6, v4

    if-lez v9, :cond_7

    .line 2133
    invoke-virtual {v0, v3}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v9

    .line 2134
    iget v10, v9, Lokio/Segment;->limit:I

    rsub-int v10, v10, 0x2000

    int-to-long v10, v10

    .line 2217
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    .line 2135
    iget v11, v9, Lokio/Segment;->limit:I

    add-int/2addr v11, v10

    iput v11, v9, Lokio/Segment;->limit:I

    int-to-long v11, v10

    sub-long/2addr v6, v11

    if-eqz v8, :cond_6

    .line 2140
    iput-object v9, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2141
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2142
    iget-object v8, v9, Lokio/Segment;->data:[B

    iput-object v8, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2143
    iget v8, v9, Lokio/Segment;->limit:I

    sub-int/2addr v8, v10

    iput v8, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2144
    iget v8, v9, Lokio/Segment;->limit:I

    iput v8, p0, Lokio/Buffer$UnsafeCursor;->end:I

    const/4 v8, 0x0

    goto :goto_1

    .line 2150
    :cond_7
    :goto_2
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->setSize$jvm(J)V

    return-wide v1

    .line 2103
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 2102
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not attached to a buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public final seek(J)I
    .locals 12

    .line 2012
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_11

    const/4 v1, -0x1

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-ltz v2, :cond_10

    .line 2013
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_10

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_f

    .line 2018
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 2029
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 2030
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2031
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2032
    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 2033
    iget-wide v8, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v10, p0, Lokio/Buffer$UnsafeCursor;->start:I

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget v5, v5, Lokio/Segment;->pos:I

    sub-int/2addr v10, v5

    int-to-long v10, v10

    sub-long/2addr v8, v10

    cmp-long v5, v8, p1

    if-lez v5, :cond_2

    .line 2037
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v1, v8

    goto :goto_0

    .line 2041
    :cond_2
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v6, v8

    :cond_3
    :goto_0
    sub-long v8, v1, p1

    sub-long v10, p1, v6

    cmp-long v5, v8, v10

    if-lez v5, :cond_5

    :goto_1
    if-nez v3, :cond_4

    .line 2051
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget v1, v3, Lokio/Segment;->limit:I

    iget v2, v3, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v6

    cmp-long v1, p1, v1

    if-ltz v1, :cond_9

    .line 2052
    iget v1, v3, Lokio/Segment;->limit:I

    iget v2, v3, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v6, v1

    .line 2053
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_5
    :goto_2
    cmp-long v3, v1, p1

    if-lez v3, :cond_8

    if-nez v4, :cond_6

    .line 2060
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v4, :cond_7

    .line 2061
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget v3, v4, Lokio/Segment;->limit:I

    iget v5, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v5

    int-to-long v5, v3

    sub-long/2addr v1, v5

    goto :goto_2

    :cond_8
    move-wide v6, v1

    move-object v3, v4

    .line 2066
    :cond_9
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_d

    if-nez v3, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    iget-boolean v1, v3, Lokio/Segment;->shared:Z

    if-eqz v1, :cond_d

    .line 2067
    invoke-virtual {v3}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v1

    .line 2068
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v2, v3, :cond_b

    .line 2069
    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2071
    :cond_b
    invoke-virtual {v3, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v3

    .line 2072
    iget-object v0, v3, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 2076
    :cond_d
    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2077
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    if-nez v3, :cond_e

    .line 2078
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    iget-object v0, v3, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2079
    iget v0, v3, Lokio/Segment;->pos:I

    sub-long/2addr p1, v6

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2080
    iget p1, v3, Lokio/Segment;->limit:I

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2081
    iget p0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr p1, p0

    return p1

    :cond_f
    :goto_3
    const/4 v0, 0x0

    .line 2019
    move-object v2, v0

    check-cast v2, Lokio/Segment;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2020
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2021
    move-object p1, v0

    check-cast p1, [B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2022
    iput v1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2023
    iput v1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return v1

    .line 2014
    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2015
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "offset=%s > size=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2014
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 2012
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not attached to a buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
