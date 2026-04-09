.class synthetic Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;
.super Ljava/lang/Object;
.source "FlutterLocalNotificationsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dexterous$flutterlocalnotifications$models$IconSource:[I

.field static final synthetic $SwitchMap$com$dexterous$flutterlocalnotifications$models$NotificationStyle:[I

.field static final synthetic $SwitchMap$com$dexterous$flutterlocalnotifications$models$RepeatInterval:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 997
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->values()[Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$NotificationStyle:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->BigPicture:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    invoke-virtual {v2}, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$NotificationStyle:[I

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->BigText:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    invoke-virtual {v3}, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$NotificationStyle:[I

    sget-object v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->Inbox:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    invoke-virtual {v4}, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$NotificationStyle:[I

    sget-object v5, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->Messaging:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    invoke-virtual {v5}, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$NotificationStyle:[I

    sget-object v6, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->Media:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    invoke-virtual {v6}, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 854
    :catch_4
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$IconSource:[I

    :try_start_5
    sget-object v6, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    invoke-virtual {v6}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$IconSource:[I

    sget-object v6, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->BitmapFilePath:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    invoke-virtual {v6}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$IconSource:[I

    sget-object v6, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ContentUri:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    invoke-virtual {v6}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$IconSource:[I

    sget-object v6, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->FlutterBitmapAsset:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    invoke-virtual {v6}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$IconSource:[I

    sget-object v6, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ByteArray:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    invoke-virtual {v6}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 782
    :catch_9
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->values()[Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$RepeatInterval:[I

    :try_start_a
    sget-object v5, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->EveryMinute:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    invoke-virtual {v5}, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$RepeatInterval:[I

    sget-object v4, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->Hourly:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    invoke-virtual {v4}, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$RepeatInterval:[I

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->Daily:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    invoke-virtual {v1}, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$RepeatInterval:[I

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->Weekly:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    invoke-virtual {v1}, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
