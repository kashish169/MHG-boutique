.class Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteArrayDataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayDataInputStream"
.end annotation


# instance fields
.field final input:Ljava/io/DataInput;


# direct methods
.method constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteArrayInputStream"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1

    .line 365
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readByte()B
    .locals 1

    .line 374
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 378
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readChar()C
    .locals 1

    .line 412
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readChar()C

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readDouble()D
    .locals 2

    .line 448
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 450
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readFloat()F
    .locals 1

    .line 439
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readFloat()F

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readFully([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 338
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0, p1}, Ljava/io/DataInput;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 340
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .line 347
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0, p1, p2, p3}, Ljava/io/DataInput;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 349
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readInt()I
    .locals 1

    .line 421
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 458
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readLong()J
    .locals 2

    .line 430
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 432
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readShort()S
    .locals 1

    .line 394
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1

    .line 467
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 385
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .line 403
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public skipBytes(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 356
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    invoke-interface {p0, p1}, Ljava/io/DataInput;->skipBytes(I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 358
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
