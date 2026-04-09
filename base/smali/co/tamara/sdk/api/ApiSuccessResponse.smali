.class public final Lco/tamara/sdk/api/ApiSuccessResponse;
.super Lco/tamara/sdk/api/ApiResponse;
.source "ApiResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/api/ApiSuccessResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lco/tamara/sdk/api/ApiResponse<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 \u001f*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u001fB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B!\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0008\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u0015\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u0015\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0008H\u00c6\u0003J4\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00028\u00002\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lco/tamara/sdk/api/ApiSuccessResponse;",
        "T",
        "Lco/tamara/sdk/api/ApiResponse;",
        "body",
        "linkHeader",
        "",
        "(Ljava/lang/Object;Ljava/lang/String;)V",
        "links",
        "",
        "(Ljava/lang/Object;Ljava/util/Map;)V",
        "getBody",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getLinks",
        "()Ljava/util/Map;",
        "nextPage",
        "",
        "getNextPage",
        "()Ljava/lang/Integer;",
        "nextPage$delegate",
        "Lkotlin/Lazy;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Object;Ljava/util/Map;)Lco/tamara/sdk/api/ApiSuccessResponse;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "Companion",
        "tamara_flutter_sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lco/tamara/sdk/api/ApiSuccessResponse$Companion;

.field private static final LINK_PATTERN:Ljava/util/regex/Pattern;

.field private static final NEXT_LINK:Ljava/lang/String; = "next"

.field private static final PAGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final links:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nextPage$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/api/ApiSuccessResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/api/ApiSuccessResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/api/ApiSuccessResponse;->Companion:Lco/tamara/sdk/api/ApiSuccessResponse$Companion;

    .line 94
    const-string v0, "<([^>]*)>[\\s]*;[\\s]*rel=\"([a-zA-Z0-9]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/tamara/sdk/api/ApiSuccessResponse;->LINK_PATTERN:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "\\bpage=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/tamara/sdk/api/ApiSuccessResponse;->PAGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 72
    sget-object v0, Lco/tamara/sdk/api/ApiSuccessResponse;->Companion:Lco/tamara/sdk/api/ApiSuccessResponse$Companion;

    invoke-static {v0, p2}, Lco/tamara/sdk/api/ApiSuccessResponse$Companion;->access$extractLinks(Lco/tamara/sdk/api/ApiSuccessResponse$Companion;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 70
    :cond_1
    invoke-direct {p0, p1, p2}, Lco/tamara/sdk/api/ApiSuccessResponse;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "links"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lco/tamara/sdk/api/ApiResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    iput-object p1, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->body:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->links:Ljava/util/Map;

    .line 75
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lco/tamara/sdk/api/ApiSuccessResponse$nextPage$2;

    invoke-direct {p2, p0}, Lco/tamara/sdk/api/ApiSuccessResponse$nextPage$2;-><init>(Lco/tamara/sdk/api/ApiSuccessResponse;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->nextPage$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getLINK_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 66
    sget-object v0, Lco/tamara/sdk/api/ApiSuccessResponse;->LINK_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final synthetic access$getPAGE_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 66
    sget-object v0, Lco/tamara/sdk/api/ApiSuccessResponse;->PAGE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/api/ApiSuccessResponse;Ljava/lang/Object;Ljava/util/Map;ILjava/lang/Object;)Lco/tamara/sdk/api/ApiSuccessResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->body:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->links:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lco/tamara/sdk/api/ApiSuccessResponse;->copy(Ljava/lang/Object;Ljava/util/Map;)Lco/tamara/sdk/api/ApiSuccessResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->links:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/lang/Object;Ljava/util/Map;)Lco/tamara/sdk/api/ApiSuccessResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lco/tamara/sdk/api/ApiSuccessResponse<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "links"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lco/tamara/sdk/api/ApiSuccessResponse;

    invoke-direct {p0, p1, p2}, Lco/tamara/sdk/api/ApiSuccessResponse;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lco/tamara/sdk/api/ApiSuccessResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/api/ApiSuccessResponse;

    iget-object v1, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->body:Ljava/lang/Object;

    iget-object v3, p1, Lco/tamara/sdk/api/ApiSuccessResponse;->body:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->links:Ljava/util/Map;

    iget-object p1, p1, Lco/tamara/sdk/api/ApiSuccessResponse;->links:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBody()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public final getLinks()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->links:Ljava/util/Map;

    return-object p0
.end method

.method public final getNextPage()Ljava/lang/Integer;
    .locals 0

    .line 75
    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->nextPage$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->body:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->links:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->body:Ljava/lang/Object;

    iget-object p0, p0, Lco/tamara/sdk/api/ApiSuccessResponse;->links:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApiSuccessResponse(body="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", links="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
