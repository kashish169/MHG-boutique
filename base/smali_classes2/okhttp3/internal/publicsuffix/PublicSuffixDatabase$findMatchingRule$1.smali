.class final synthetic Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$findMatchingRule$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method constructor <init>(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$findMatchingRule$1;->receiver:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 98
    invoke-static {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getPublicSuffixListBytes$p(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;)[B

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "publicSuffixListBytes"

    return-object p0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    const-class p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "getPublicSuffixListBytes()[B"

    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$findMatchingRule$1;->receiver:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 98
    check-cast p1, [B

    invoke-static {p0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$setPublicSuffixListBytes$p(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;[B)V

    return-void
.end method
