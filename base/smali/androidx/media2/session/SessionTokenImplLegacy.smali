.class final Landroidx/media2/session/SessionTokenImplLegacy;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SessionTokenImplLegacy.java"

# interfaces
.implements Landroidx/media2/session/SessionToken$SessionTokenImpl;


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field mExtras:Landroid/os/Bundle;

.field private mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field mLegacyTokenBundle:Landroid/os/Bundle;

.field mPackageName:Ljava/lang/String;

.field mType:I

.field mUid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 86
    iput p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mUid:I

    const/16 p2, 0x65

    .line 87
    iput p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    .line 88
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mPackageName:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    .line 90
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mExtras:Landroid/os/Bundle;

    return-void

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "serviceComponent shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 73
    iput p3, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mUid:I

    .line 74
    iput-object p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    const/16 p1, 0x64

    .line 76
    iput p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    .line 77
    iput-object p4, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mExtras:Landroid/os/Bundle;

    return-void

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName shouldn\'t be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "packageName shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "token shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 107
    instance-of v0, p1, Landroidx/media2/session/SessionTokenImplLegacy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    check-cast p1, Landroidx/media2/session/SessionTokenImplLegacy;

    .line 111
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    iget v2, p1, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x64

    if-eq v0, v2, :cond_3

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    return v1

    .line 118
    :cond_2
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 116
    :cond_3
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {p0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 0

    .line 176
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 153
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 171
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getType()I
    .locals 1

    .line 159
    iget p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 136
    iget p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mUid:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mComponentName:Landroid/content/ComponentName;

    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isLegacySession()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPostParceling()V
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public onPreParceling(Z)V
    .locals 3

    .line 182
    iget-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 183
    monitor-enter p1

    .line 188
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    .line 193
    iget-object v2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 198
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    .line 201
    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 202
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 204
    :cond_0
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyTokenBundle:Landroid/os/Bundle;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionToken {legacyToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->mLegacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
