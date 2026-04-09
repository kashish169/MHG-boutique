.class public final enum Lcom/dexterous/flutterlocalnotifications/models/IconSource;
.super Ljava/lang/Enum;
.source "IconSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dexterous/flutterlocalnotifications/models/IconSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexterous/flutterlocalnotifications/models/IconSource;

.field public static final enum BitmapFilePath:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

.field public static final enum ByteArray:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

.field public static final enum ContentUri:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

.field public static final enum DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

.field public static final enum FlutterBitmapAsset:Lcom/dexterous/flutterlocalnotifications/models/IconSource;


# direct methods
.method private static synthetic $values()[Lcom/dexterous/flutterlocalnotifications/models/IconSource;
    .locals 5

    .line 5
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->BitmapFilePath:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ContentUri:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->FlutterBitmapAsset:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    sget-object v4, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ByteArray:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    const-string v1, "DrawableResource"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 8
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    const-string v1, "BitmapFilePath"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->BitmapFilePath:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 9
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    const-string v1, "ContentUri"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ContentUri:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 10
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    const-string v1, "FlutterBitmapAsset"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->FlutterBitmapAsset:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 11
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    const-string v1, "ByteArray"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ByteArray:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 5
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->$values()[Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    move-result-object v0

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/models/IconSource;
    .locals 1

    .line 5
    const-class v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    return-object p0
.end method

.method public static values()[Lcom/dexterous/flutterlocalnotifications/models/IconSource;
    .locals 1

    .line 5
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    invoke-virtual {v0}, [Lcom/dexterous/flutterlocalnotifications/models/IconSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    return-object v0
.end method
