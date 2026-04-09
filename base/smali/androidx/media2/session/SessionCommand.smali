.class public final Landroidx/media2/session/SessionCommand;
.super Ljava/lang/Object;
.source "SessionCommand.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionCommand$CommandCode;,
        Landroidx/media2/session/SessionCommand$CommandVersion;
    }
.end annotation


# static fields
.field public static final COMMAND_CODE_CUSTOM:I = 0x0

.field public static final COMMAND_CODE_LIBRARY_GET_CHILDREN:I = 0xc353

.field public static final COMMAND_CODE_LIBRARY_GET_ITEM:I = 0xc354

.field public static final COMMAND_CODE_LIBRARY_GET_LIBRARY_ROOT:I = 0xc350

.field public static final COMMAND_CODE_LIBRARY_GET_SEARCH_RESULT:I = 0xc356

.field public static final COMMAND_CODE_LIBRARY_SEARCH:I = 0xc355

.field public static final COMMAND_CODE_LIBRARY_SUBSCRIBE:I = 0xc351

.field public static final COMMAND_CODE_LIBRARY_UNSUBSCRIBE:I = 0xc352

.field public static final COMMAND_CODE_PLAYER_ADD_PLAYLIST_ITEM:I = 0x271d

.field public static final COMMAND_CODE_PLAYER_DESELECT_TRACK:I = 0x2afa

.field public static final COMMAND_CODE_PLAYER_GET_CURRENT_MEDIA_ITEM:I = 0x2720

.field public static final COMMAND_CODE_PLAYER_GET_PLAYLIST:I = 0x2715

.field public static final COMMAND_CODE_PLAYER_GET_PLAYLIST_METADATA:I = 0x271c

.field public static final COMMAND_CODE_PLAYER_MOVE_PLAYLIST_ITEM:I = 0x2723

.field public static final COMMAND_CODE_PLAYER_PAUSE:I = 0x2711

.field public static final COMMAND_CODE_PLAYER_PLAY:I = 0x2710

.field public static final COMMAND_CODE_PLAYER_PREPARE:I = 0x2712

.field public static final COMMAND_CODE_PLAYER_REMOVE_PLAYLIST_ITEM:I = 0x271e

.field public static final COMMAND_CODE_PLAYER_REPLACE_PLAYLIST_ITEM:I = 0x271f

.field public static final COMMAND_CODE_PLAYER_SEEK_TO:I = 0x2713

.field public static final COMMAND_CODE_PLAYER_SELECT_TRACK:I = 0x2af9

.field public static final COMMAND_CODE_PLAYER_SET_MEDIA_ITEM:I = 0x2722

.field public static final COMMAND_CODE_PLAYER_SET_PLAYLIST:I = 0x2716

.field public static final COMMAND_CODE_PLAYER_SET_REPEAT_MODE:I = 0x271b

.field public static final COMMAND_CODE_PLAYER_SET_SHUFFLE_MODE:I = 0x271a

.field public static final COMMAND_CODE_PLAYER_SET_SPEED:I = 0x2714

.field public static final COMMAND_CODE_PLAYER_SET_SURFACE:I = 0x2af8

.field public static final COMMAND_CODE_PLAYER_SKIP_TO_NEXT_PLAYLIST_ITEM:I = 0x2719

.field public static final COMMAND_CODE_PLAYER_SKIP_TO_PLAYLIST_ITEM:I = 0x2717

.field public static final COMMAND_CODE_PLAYER_SKIP_TO_PREVIOUS_PLAYLIST_ITEM:I = 0x2718

.field public static final COMMAND_CODE_PLAYER_UPDATE_LIST_METADATA:I = 0x2721

.field public static final COMMAND_CODE_SESSION_FAST_FORWARD:I = 0x9c40

.field public static final COMMAND_CODE_SESSION_REWIND:I = 0x9c41

.field public static final COMMAND_CODE_SESSION_SET_MEDIA_URI:I = 0x9c4b

.field public static final COMMAND_CODE_SESSION_SET_RATING:I = 0x9c4a

.field public static final COMMAND_CODE_SESSION_SKIP_BACKWARD:I = 0x9c43

.field public static final COMMAND_CODE_SESSION_SKIP_FORWARD:I = 0x9c42

.field public static final COMMAND_CODE_VOLUME_ADJUST_VOLUME:I = 0x7531

.field public static final COMMAND_CODE_VOLUME_SET_VOLUME:I = 0x7530

.field public static final COMMAND_VERSION_1:I = 0x1

.field public static final COMMAND_VERSION_2:I = 0x2

.field public static final COMMAND_VERSION_CURRENT:I = 0x2

.field static final VERSION_LIBRARY_COMMANDS_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final VERSION_SESSION_COMMANDS_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final VERSION_VOLUME_COMMANDS_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mCommandCode:I

.field mCustomAction:Ljava/lang/String;

.field mCustomExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroid/util/SparseArray;

    .line 150
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroid/util/SparseArray;

    const/16 v2, 0x2710

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x2711

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v2, 0x2712

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v2, 0x2713

    .line 403
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v2, 0x2714

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v2, 0x2af8

    .line 405
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x2af9

    .line 406
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0x2afa

    .line 407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Integer;

    move-result-object v2

    .line 400
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    .line 399
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x2715

    .line 412
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x2716

    .line 413
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x2717

    .line 414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x2718

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x2719

    .line 416
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x271a

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x271b

    .line 418
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x271c

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x271d

    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x271e

    .line 421
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v0, 0x271f

    .line 422
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v0, 0x2720

    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v0, 0x2721

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v0, 0x2722

    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v4 .. v17}, [Ljava/lang/Integer;

    move-result-object v0

    .line 412
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 411
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x2723

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    .line 426
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_VOLUME_COMMANDS_MAP:Landroid/util/SparseArray;

    const/16 v1, 0x7530

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x7531

    .line 462
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Integer;

    move-result-object v1

    .line 461
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 460
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_SESSION_COMMANDS_MAP:Landroid/util/SparseArray;

    const v1, 0x9c40

    .line 516
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x9c41

    .line 517
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x9c42

    .line 518
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x9c43

    .line 519
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x9c4a

    .line 520
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v1, v4, v5, v6, v7}, [Ljava/lang/Integer;

    move-result-object v1

    .line 516
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x9c4b

    .line 522
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 528
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_LIBRARY_COMMANDS_MAP:Landroid/util/SparseArray;

    const v1, 0xc350

    .line 581
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v1, 0xc351

    .line 582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v1, 0xc352

    .line 583
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v1, 0xc353

    .line 584
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v1, 0xc354

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v1, 0xc355

    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v1, 0xc356

    .line 587
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Integer;

    move-result-object v1

    .line 581
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 615
    iput p1, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    const/4 p1, 0x0

    .line 616
    iput-object p1, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 617
    iput-object p1, p0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    return-void

    .line 613
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 630
    iput v0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    .line 631
    iput-object p1, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 632
    iput-object p2, p0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    return-void

    .line 628
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "action shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 664
    instance-of v0, p1, Landroidx/media2/session/SessionCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 667
    :cond_0
    check-cast p1, Landroidx/media2/session/SessionCommand;

    .line 668
    iget v0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    iget v2, p1, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 669
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCommandCode()I
    .locals 0

    .line 641
    iget p0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    return p0
.end method

.method public getCustomAction()Ljava/lang/String;
    .locals 0

    .line 650
    iget-object p0, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomExtras()Landroid/os/Bundle;
    .locals 0

    .line 659
    iget-object p0, p0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 674
    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    iget p0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
