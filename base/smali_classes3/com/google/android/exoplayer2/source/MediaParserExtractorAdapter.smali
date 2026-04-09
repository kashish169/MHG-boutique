.class public final Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;
.super Ljava/lang/Object;
.source "MediaParserExtractorAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;


# instance fields
.field private final inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Landroid/media/MediaParser;

.field private final outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

.field private parserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->FACTORY:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    .line 61
    new-instance v1, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    const/4 v1, 0x0

    .line 62
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser$OutputConsumer;[Ljava/lang/String;)Landroid/media/MediaParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    const/4 v1, 0x1

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-static {v0, v2, v1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 64
    const-string v2, "android.media.mediaparser.inBandCryptoInfo"

    invoke-static {v0, v2, v1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 65
    const-string v2, "android.media.mediaparser.includeSupplementalData"

    invoke-static {v0, v2, v1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 66
    const-string v1, "android.media.mediaparser.UNKNOWN"

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 67
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p0, v1, :cond_0

    .line 68
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/mediaparser/MediaParserUtil;->setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .locals 2

    .line 106
    const-string v0, "android.media.mediaparser.Mp3Parser"

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->disableSeeking()V

    :cond_0
    return-void
.end method

.method public getCurrentInputPosition()J
    .locals 2

    .line 113
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p2, p8}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 82
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p2, p1, p6, p7}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setDataReader(Lcom/google/android/exoplayer2/upstream/DataReader;J)V

    .line 83
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p1, p4, p5}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 84
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-static {p1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;)Ljava/lang/String;

    move-result-object p1

    .line 85
    const-string p2, "android.media.mediaparser.UNKNOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-static {p1, p2}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;Landroid/media/MediaParser$SeekableInputReader;)Z

    .line 88
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-static {p1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 89
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-static {p1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 93
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-static {v0, v1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;Landroid/media/MediaParser$SeekableInputReader;)Z

    move-result v0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->getAndResetSeekPosition()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-wide p0, p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;)V

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object p3

    .line 120
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object p4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p4}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaParser$SeekPoint;

    move-result-object p4

    invoke-static {p4}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser$SeekPoint;)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    iget-object p1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaParser$SeekPoint;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaParser$SeekPoint;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForTiramisu$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaParser;Landroid/media/MediaParser$SeekPoint;)V

    return-void
.end method
