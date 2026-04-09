.class public final Lfman/ge/smart_auth/AppSignatureHelper$Companion;
.super Ljava/lang/Object;
.source "AppSignatueHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfman/ge/smart_auth/AppSignatureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lfman/ge/smart_auth/AppSignatureHelper$Companion;",
        "",
        "()V",
        "HASH_TYPE",
        "",
        "NUM_BASE64_CHAR",
        "",
        "NUM_HASHED_BYTES",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "smart_auth_release"
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfman/ge/smart_auth/AppSignatureHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {}, Lfman/ge/smart_auth/AppSignatureHelper;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
