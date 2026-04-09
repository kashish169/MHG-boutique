.class public final Landroidx/media2/session/SessionCommandGroup;
.super Ljava/lang/Object;
.source "SessionCommandGroup.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionCommandGroup$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionCommandGroup"


# instance fields
.field mCommands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/session/SessionCommand;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Landroidx/media2/session/SessionCommandGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 110
    :cond_1
    check-cast p1, Landroidx/media2/session/SessionCommandGroup;

    .line 111
    iget-object p0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    if-nez p0, :cond_3

    .line 112
    iget-object p0, p1, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 114
    :cond_3
    iget-object p1, p1, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCommands()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasCommand(I)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 89
    iget-object p0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommand;

    .line 90
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use hasCommand(Command) for custom command"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasCommand(Landroidx/media2/session/SessionCommand;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 76
    iget-object p0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
