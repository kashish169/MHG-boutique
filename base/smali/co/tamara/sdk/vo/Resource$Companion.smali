.class public final Lco/tamara/sdk/vo/Resource$Companion;
.super Ljava/lang/Object;
.source "Resource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/vo/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\tJ!\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\u000bJ!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lco/tamara/sdk/vo/Resource$Companion;",
        "",
        "()V",
        "error",
        "Lco/tamara/sdk/vo/Resource;",
        "T",
        "msg",
        "",
        "data",
        "(Ljava/lang/String;Ljava/lang/Object;)Lco/tamara/sdk/vo/Resource;",
        "loading",
        "(Ljava/lang/Object;)Lco/tamara/sdk/vo/Resource;",
        "success",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lco/tamara/sdk/vo/Resource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;Ljava/lang/Object;)Lco/tamara/sdk/vo/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lco/tamara/sdk/vo/Resource<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p0, Lco/tamara/sdk/vo/Resource;

    sget-object v0, Lco/tamara/sdk/vo/Status;->ERROR:Lco/tamara/sdk/vo/Status;

    invoke-direct {p0, v0, p2, p1}, Lco/tamara/sdk/vo/Resource;-><init>(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loading(Ljava/lang/Object;)Lco/tamara/sdk/vo/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lco/tamara/sdk/vo/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 38
    new-instance p0, Lco/tamara/sdk/vo/Resource;

    sget-object v0, Lco/tamara/sdk/vo/Status;->LOADING:Lco/tamara/sdk/vo/Status;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lco/tamara/sdk/vo/Resource;-><init>(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final success(Ljava/lang/Object;)Lco/tamara/sdk/vo/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lco/tamara/sdk/vo/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 30
    new-instance p0, Lco/tamara/sdk/vo/Resource;

    sget-object v0, Lco/tamara/sdk/vo/Status;->SUCCESS:Lco/tamara/sdk/vo/Status;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lco/tamara/sdk/vo/Resource;-><init>(Lco/tamara/sdk/vo/Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
