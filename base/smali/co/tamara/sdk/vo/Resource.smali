.class public final Lco/tamara/sdk/vo/Resource;
.super Ljava/lang/Object;
.source "Resource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/vo/Resource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0080\u0008\u0018\u0000 \u001b*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0001\u001bB!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0004H\u00c6\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00018\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J6\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0007H\u00d6\u0001R\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lco/tamara/sdk/vo/Resource;",
        "T",
        "",
        "status",
        "Lco/tamara/sdk/vo/Status;",
        "data",
        "message",
        "",
        "(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)V",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getMessage",
        "()Ljava/lang/String;",
        "getStatus",
        "()Lco/tamara/sdk/vo/Status;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)Lco/tamara/sdk/vo/Resource;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field public static final Companion:Lco/tamara/sdk/vo/Resource$Companion;


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final status:Lco/tamara/sdk/vo/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/tamara/sdk/vo/Resource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/tamara/sdk/vo/Resource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/tamara/sdk/vo/Resource;->Companion:Lco/tamara/sdk/vo/Resource$Companion;

    return-void
.end method

.method public constructor <init>(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/vo/Status;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/tamara/sdk/vo/Resource;->status:Lco/tamara/sdk/vo/Status;

    iput-object p2, p0, Lco/tamara/sdk/vo/Resource;->data:Ljava/lang/Object;

    iput-object p3, p0, Lco/tamara/sdk/vo/Resource;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/vo/Resource;Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lco/tamara/sdk/vo/Resource;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lco/tamara/sdk/vo/Resource;->status:Lco/tamara/sdk/vo/Status;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lco/tamara/sdk/vo/Resource;->data:Ljava/lang/Object;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lco/tamara/sdk/vo/Resource;->message:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lco/tamara/sdk/vo/Resource;->copy(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)Lco/tamara/sdk/vo/Resource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lco/tamara/sdk/vo/Status;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->status:Lco/tamara/sdk/vo/Status;

    return-object p0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)Lco/tamara/sdk/vo/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/vo/Status;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lco/tamara/sdk/vo/Resource<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "status"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lco/tamara/sdk/vo/Resource;

    invoke-direct {p0, p1, p2, p3}, Lco/tamara/sdk/vo/Resource;-><init>(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lco/tamara/sdk/vo/Resource;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/vo/Resource;

    iget-object v1, p0, Lco/tamara/sdk/vo/Resource;->status:Lco/tamara/sdk/vo/Status;

    iget-object v3, p1, Lco/tamara/sdk/vo/Resource;->status:Lco/tamara/sdk/vo/Status;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/vo/Resource;->data:Ljava/lang/Object;

    iget-object v3, p1, Lco/tamara/sdk/vo/Resource;->data:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->message:Ljava/lang/String;

    iget-object p1, p1, Lco/tamara/sdk/vo/Resource;->message:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()Lco/tamara/sdk/vo/Status;
    .locals 0

    .line 27
    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->status:Lco/tamara/sdk/vo/Status;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/vo/Resource;->status:Lco/tamara/sdk/vo/Status;

    invoke-virtual {v0}, Lco/tamara/sdk/vo/Status;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/tamara/sdk/vo/Resource;->data:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->message:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lco/tamara/sdk/vo/Resource;->status:Lco/tamara/sdk/vo/Status;

    iget-object v1, p0, Lco/tamara/sdk/vo/Resource;->data:Ljava/lang/Object;

    iget-object p0, p0, Lco/tamara/sdk/vo/Resource;->message:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resource(status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
