.class public Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
.super Ljava/lang/Object;
.source "NotificationDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ACTIONS:Ljava/lang/String; = "actions"

.field private static final ADDITIONAL_FLAGS:Ljava/lang/String; = "additionalFlags"

.field private static final AUDIO_ATTRIBUTES_USAGE:Ljava/lang/String; = "audioAttributesUsage"

.field private static final AUTO_CANCEL:Ljava/lang/String; = "autoCancel"

.field private static final BIG_PICTURE:Ljava/lang/String; = "bigPicture"

.field private static final BIG_PICTURE_BITMAP_SOURCE:Ljava/lang/String; = "bigPictureBitmapSource"

.field private static final BIG_TEXT:Ljava/lang/String; = "bigText"

.field private static final BODY:Ljava/lang/String; = "body"

.field private static final BOT:Ljava/lang/String; = "bot"

.field private static final CALLED_AT:Ljava/lang/String; = "calledAt"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final CHANNEL_ACTION:Ljava/lang/String; = "channelAction"

.field private static final CHANNEL_DESCRIPTION:Ljava/lang/String; = "channelDescription"

.field private static final CHANNEL_ID:Ljava/lang/String; = "channelId"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "channelName"

.field private static final CHANNEL_SHOW_BADGE:Ljava/lang/String; = "channelShowBadge"

.field private static final CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "chronometerCountDown"

.field private static final COLORIZED:Ljava/lang/String; = "colorized"

.field private static final COLOR_ALPHA:Ljava/lang/String; = "colorAlpha"

.field private static final COLOR_BLUE:Ljava/lang/String; = "colorBlue"

.field private static final COLOR_GREEN:Ljava/lang/String; = "colorGreen"

.field private static final COLOR_RED:Ljava/lang/String; = "colorRed"

.field private static final CONTENT_TITLE:Ljava/lang/String; = "contentTitle"

.field private static final CONVERSATION_TITLE:Ljava/lang/String; = "conversationTitle"

.field private static final DATA_MIME_TYPE:Ljava/lang/String; = "dataMimeType"

.field private static final DATA_URI:Ljava/lang/String; = "dataUri"

.field private static final DAY:Ljava/lang/String; = "day"

.field private static final ENABLE_LIGHTS:Ljava/lang/String; = "enableLights"

.field private static final ENABLE_VIBRATION:Ljava/lang/String; = "enableVibration"

.field private static final FULL_SCREEN_INTENT:Ljava/lang/String; = "fullScreenIntent"

.field private static final GROUP_ALERT_BEHAVIOR:Ljava/lang/String; = "groupAlertBehavior"

.field private static final GROUP_CONVERSATION:Ljava/lang/String; = "groupConversation"

.field private static final GROUP_KEY:Ljava/lang/String; = "groupKey"

.field private static final HIDE_EXPANDED_LARGE_ICON:Ljava/lang/String; = "hideExpandedLargeIcon"

.field private static final HTML_FORMAT_BIG_TEXT:Ljava/lang/String; = "htmlFormatBigText"

.field private static final HTML_FORMAT_CONTENT:Ljava/lang/String; = "htmlFormatContent"

.field private static final HTML_FORMAT_CONTENT_TITLE:Ljava/lang/String; = "htmlFormatContentTitle"

.field private static final HTML_FORMAT_LINES:Ljava/lang/String; = "htmlFormatLines"

.field private static final HTML_FORMAT_SUMMARY_TEXT:Ljava/lang/String; = "htmlFormatSummaryText"

.field private static final HTML_FORMAT_TITLE:Ljava/lang/String; = "htmlFormatTitle"

.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final ICON_SOURCE:Ljava/lang/String; = "iconSource"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final IMPORTANT:Ljava/lang/String; = "important"

.field private static final INDETERMINATE:Ljava/lang/String; = "indeterminate"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final LARGE_ICON:Ljava/lang/String; = "largeIcon"

.field private static final LARGE_ICON_BITMAP_SOURCE:Ljava/lang/String; = "largeIconBitmapSource"

.field private static final LED_COLOR_ALPHA:Ljava/lang/String; = "ledColorAlpha"

.field private static final LED_COLOR_BLUE:Ljava/lang/String; = "ledColorBlue"

.field private static final LED_COLOR_GREEN:Ljava/lang/String; = "ledColorGreen"

.field private static final LED_COLOR_RED:Ljava/lang/String; = "ledColorRed"

.field private static final LED_OFF_MS:Ljava/lang/String; = "ledOffMs"

.field private static final LED_ON_MS:Ljava/lang/String; = "ledOnMs"

.field private static final LINES:Ljava/lang/String; = "lines"

.field private static final MATCH_DATE_TIME_COMPONENTS:Ljava/lang/String; = "matchDateTimeComponents"

.field private static final MAX_PROGRESS:Ljava/lang/String; = "maxProgress"

.field private static final MESSAGES:Ljava/lang/String; = "messages"

.field private static final MILLISECONDS_SINCE_EPOCH:Ljava/lang/String; = "millisecondsSinceEpoch"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final ONGOING:Ljava/lang/String; = "ongoing"

.field private static final ONLY_ALERT_ONCE:Ljava/lang/String; = "onlyAlertOnce"

.field private static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PERSON:Ljava/lang/String; = "person"

.field private static final PLATFORM_SPECIFICS:Ljava/lang/String; = "platformSpecifics"

.field private static final PLAY_SOUND:Ljava/lang/String; = "playSound"

.field private static final PRIORITY:Ljava/lang/String; = "priority"

.field private static final PROGRESS:Ljava/lang/String; = "progress"

.field private static final REPEAT_INTERVAL:Ljava/lang/String; = "repeatInterval"

.field private static final REPEAT_INTERVAL_MILLISECONDS:Ljava/lang/String; = "repeatIntervalMilliseconds"

.field private static final REPEAT_TIME:Ljava/lang/String; = "repeatTime"

.field private static final SCHEDULED_DATE_TIME:Ljava/lang/String; = "scheduledDateTime"

.field private static final SCHEDULED_NOTIFICATION_REPEAT_FREQUENCY:Ljava/lang/String; = "scheduledNotificationRepeatFrequency"

.field private static final SCHEDULE_MODE:Ljava/lang/String; = "scheduleMode"

.field private static final SET_AS_GROUP_SUMMARY:Ljava/lang/String; = "setAsGroupSummary"

.field private static final SHORTCUT_ID:Ljava/lang/String; = "shortcutId"

.field private static final SHOW_PROGRESS:Ljava/lang/String; = "showProgress"

.field private static final SHOW_WHEN:Ljava/lang/String; = "showWhen"

.field private static final SILENT:Ljava/lang/String; = "silent"

.field private static final SOUND:Ljava/lang/String; = "sound"

.field private static final SOUND_SOURCE:Ljava/lang/String; = "soundSource"

.field private static final STYLE:Ljava/lang/String; = "style"

.field private static final STYLE_INFORMATION:Ljava/lang/String; = "styleInformation"

.field private static final SUB_TEXT:Ljava/lang/String; = "subText"

.field private static final SUMMARY_TEXT:Ljava/lang/String; = "summaryText"

.field private static final TAG:Ljava/lang/String; = "tag"

.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TICKER:Ljava/lang/String; = "ticker"

.field private static final TIMEOUT_AFTER:Ljava/lang/String; = "timeoutAfter"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TIME_ZONE_NAME:Ljava/lang/String; = "timeZoneName"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final URI:Ljava/lang/String; = "uri"

.field private static final USES_CHRONOMETER:Ljava/lang/String; = "usesChronometer"

.field private static final VIBRATION_PATTERN:Ljava/lang/String; = "vibrationPattern"

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final WHEN:Ljava/lang/String; = "when"


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;",
            ">;"
        }
    .end annotation
.end field

.field public additionalFlags:[I

.field public audioAttributesUsage:Ljava/lang/Integer;

.field public autoCancel:Ljava/lang/Boolean;

.field public body:Ljava/lang/String;

.field public calledAt:Ljava/lang/Long;

.field public category:Ljava/lang/String;

.field public channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

.field public channelDescription:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field public channelShowBadge:Ljava/lang/Boolean;

.field public chronometerCountDown:Ljava/lang/Boolean;

.field public color:Ljava/lang/Integer;

.field public colorized:Ljava/lang/Boolean;

.field public day:Ljava/lang/Integer;

.field public enableLights:Ljava/lang/Boolean;

.field public enableVibration:Ljava/lang/Boolean;

.field public fullScreenIntent:Ljava/lang/Boolean;

.field public groupAlertBehavior:Ljava/lang/Integer;

.field public groupKey:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconResourceId:Ljava/lang/Integer;

.field public id:Ljava/lang/Integer;

.field public importance:Ljava/lang/Integer;

.field public indeterminate:Ljava/lang/Boolean;

.field public largeIcon:Ljava/lang/Object;

.field public largeIconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

.field public ledColor:Ljava/lang/Integer;

.field public ledOffMs:Ljava/lang/Integer;

.field public ledOnMs:Ljava/lang/Integer;

.field public matchDateTimeComponents:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

.field public maxProgress:Ljava/lang/Integer;

.field public millisecondsSinceEpoch:Ljava/lang/Long;

.field public number:Ljava/lang/Integer;

.field public ongoing:Ljava/lang/Boolean;

.field public onlyAlertOnce:Ljava/lang/Boolean;

.field public payload:Ljava/lang/String;

.field public playSound:Ljava/lang/Boolean;

.field public priority:Ljava/lang/Integer;

.field public progress:Ljava/lang/Integer;

.field public repeatInterval:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

.field public repeatIntervalMilliseconds:Ljava/lang/Integer;

.field public repeatTime:Lcom/dexterous/flutterlocalnotifications/models/Time;

.field public scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "allowWhileIdle"
        }
        value = "scheduleMode"
    .end annotation
.end field

.field public scheduledDateTime:Ljava/lang/String;

.field public scheduledNotificationRepeatFrequency:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

.field public setAsGroupSummary:Ljava/lang/Boolean;

.field public shortcutId:Ljava/lang/String;

.field public showProgress:Ljava/lang/Boolean;

.field public showWhen:Ljava/lang/Boolean;

.field public silent:Ljava/lang/Boolean;

.field public sound:Ljava/lang/String;

.field public soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

.field public style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

.field public styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

.field public subText:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public ticker:Ljava/lang/String;

.field public timeZoneName:Ljava/lang/String;

.field public timeoutAfter:Ljava/lang/Long;

.field public title:Ljava/lang/String;

.field public usesChronometer:Ljava/lang/Boolean;

.field public vibrationPattern:[J

.field public visibility:Ljava/lang/Integer;

.field public when:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string v0, "Default_Channel_Id"

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelId:Ljava/lang/String;

    return-void
.end method

.method public static from(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    invoke-direct {v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;-><init>()V

    .line 206
    const-string v1, "payload"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->payload:Ljava/lang/String;

    .line 207
    const-string v1, "id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 208
    const-string/jumbo v1, "title"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->title:Ljava/lang/String;

    .line 209
    const-string v1, "body"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->body:Ljava/lang/String;

    .line 210
    const-string v1, "scheduledDateTime"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledDateTime:Ljava/lang/String;

    .line 211
    const-string/jumbo v1, "timeZoneName"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->timeZoneName:Ljava/lang/String;

    .line 212
    const-string v1, "scheduledNotificationRepeatFrequency"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->values()[Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    move-result-object v2

    .line 215
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledNotificationRepeatFrequency:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    .line 217
    :cond_0
    const-string v1, "matchDateTimeComponents"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->values()[Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->matchDateTimeComponents:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    .line 221
    :cond_1
    const-string v1, "millisecondsSinceEpoch"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->millisecondsSinceEpoch:Ljava/lang/Long;

    .line 224
    :cond_2
    const-string v1, "calledAt"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->calledAt:Ljava/lang/Long;

    .line 227
    :cond_3
    const-string v1, "repeatInterval"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->values()[Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatInterval:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    .line 231
    :cond_4
    const-string v1, "repeatIntervalMilliseconds"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatIntervalMilliseconds:Ljava/lang/Integer;

    .line 235
    :cond_5
    const-string v1, "repeatTime"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 238
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/models/Time;->from(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/Time;

    move-result-object v1

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatTime:Lcom/dexterous/flutterlocalnotifications/models/Time;

    .line 240
    :cond_6
    const-string v1, "day"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 241
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->day:Ljava/lang/Integer;

    .line 244
    :cond_7
    invoke-static {p0, v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readPlatformSpecifics(Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    return-object v0
.end method

.method private static getDefaultStyleInformation(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;"
        }
    .end annotation

    .line 558
    const-string v0, "htmlFormatTitle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 559
    const-string v1, "htmlFormatContent"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 560
    new-instance v1, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;

    invoke-direct {v1, v0, p0}, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method private static readBigPictureStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;",
            ")V"
        }
    .end annotation

    .line 525
    const-string v0, "contentTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 526
    const-string v0, "htmlFormatContentTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Boolean;

    .line 527
    const-string v0, "summaryText"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 528
    const-string v0, "htmlFormatSummaryText"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    .line 529
    const-string v0, "largeIcon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 531
    const-string v0, "largeIconBitmapSource"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 534
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    .line 536
    const-string v0, "bigPicture"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 537
    const-string v0, "bigPictureBitmapSource"

    .line 538
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 539
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v11, v1, v0

    .line 540
    const-string v0, "hideExpandedLargeIcon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v12, p1

    check-cast v12, Ljava/lang/Boolean;

    .line 541
    new-instance p1, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;

    iget-object v2, p2, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatTitle:Ljava/lang/Boolean;

    iget-object v3, p2, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatBody:Ljava/lang/Boolean;

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    return-void
.end method

.method private static readBigTextStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;",
            ")V"
        }
    .end annotation

    .line 503
    const-string v0, "bigText"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 504
    const-string v0, "htmlFormatBigText"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Boolean;

    .line 505
    const-string v0, "contentTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 506
    const-string v0, "htmlFormatContentTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    .line 507
    const-string v0, "summaryText"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 508
    const-string v0, "htmlFormatSummaryText"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/Boolean;

    .line 509
    new-instance p1, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;

    iget-object v2, p2, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatTitle:Ljava/lang/Boolean;

    iget-object v3, p2, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatBody:Ljava/lang/Boolean;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    return-void
.end method

.method private static readChannelInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 389
    const-string v0, "channelId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelId:Ljava/lang/String;

    .line 390
    const-string v0, "channelName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelName:Ljava/lang/String;

    .line 391
    const-string v0, "channelDescription"

    .line 392
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelDescription:Ljava/lang/String;

    .line 393
    const-string v0, "importance"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->importance:Ljava/lang/Integer;

    .line 394
    const-string v0, "channelShowBadge"

    .line 395
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelShowBadge:Ljava/lang/Boolean;

    .line 397
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;->values()[Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    move-result-object v0

    const-string v1, "channelAction"

    .line 398
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    return-void
.end method

.method private static readColor(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 363
    const-string v0, "colorAlpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 364
    const-string v1, "colorRed"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 365
    const-string v2, "colorGreen"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 366
    const-string v3, "colorBlue"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->color:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method private static readGroupingInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 344
    const-string v0, "groupKey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->groupKey:Ljava/lang/String;

    .line 345
    const-string v0, "setAsGroupSummary"

    .line 346
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->setAsGroupSummary:Ljava/lang/Boolean;

    .line 347
    const-string v0, "groupAlertBehavior"

    .line 348
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->groupAlertBehavior:Ljava/lang/Integer;

    return-void
.end method

.method private static readInboxStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;",
            ")V"
        }
    .end annotation

    .line 480
    const-string v0, "contentTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 481
    const-string v0, "htmlFormatContentTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Boolean;

    .line 482
    const-string v0, "summaryText"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 483
    const-string v0, "htmlFormatSummaryText"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    .line 485
    const-string v0, "lines"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    .line 486
    const-string v0, "htmlFormatLines"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/Boolean;

    .line 487
    new-instance p1, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;

    iget-object v2, p2, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatTitle:Ljava/lang/Boolean;

    iget-object v3, p2, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatBody:Ljava/lang/Boolean;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    return-void
.end method

.method private static readLargeIconInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 333
    const-string v0, "largeIcon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->largeIcon:Ljava/lang/Object;

    .line 334
    const-string v0, "largeIconBitmapSource"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 337
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->largeIconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    :cond_0
    return-void
.end method

.method private static readLedInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 374
    const-string v0, "ledColorAlpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 375
    const-string v1, "ledColorRed"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 376
    const-string v2, "ledColorGreen"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 377
    const-string v3, "ledColorBlue"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledColor:Ljava/lang/Integer;

    .line 381
    :cond_0
    const-string v0, "enableLights"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->enableLights:Ljava/lang/Boolean;

    .line 382
    const-string v0, "ledOnMs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledOnMs:Ljava/lang/Integer;

    .line 383
    const-string v0, "ledOffMs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledOffMs:Ljava/lang/Integer;

    return-void
.end method

.method private static readMessages(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 463
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 464
    new-instance v8, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;

    const-string/jumbo v2, "text"

    .line 466
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v2, "timestamp"

    .line 467
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/utils/LongUtils;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v4

    const-string v2, "person"

    .line 468
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readPersonDetails(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;

    move-result-object v5

    const-string v2, "dataMimeType"

    .line 469
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    const-string v2, "dataUri"

    .line 470
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static readMessagingStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;",
            ")V"
        }
    .end annotation

    .line 429
    const-string v0, "conversationTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 430
    const-string v0, "groupConversation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    .line 431
    const-string v0, "person"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readPersonDetails(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;

    move-result-object v2

    .line 432
    const-string v0, "messages"

    .line 433
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readMessages(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 434
    new-instance p1, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;

    iget-object v6, p2, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatTitle:Ljava/lang/Boolean;

    iget-object v7, p2, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatBody:Ljava/lang/Boolean;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;-><init>(Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    return-void
.end method

.method private static readPersonDetails(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 448
    :cond_0
    const-string v1, "bot"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    .line 449
    const-string v1, "icon"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 450
    const-string v1, "iconSource"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    .line 451
    :cond_1
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    move-object v5, v0

    .line 452
    const-string v0, "important"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    .line 453
    const-string v0, "key"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 454
    const-string v0, "name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 455
    const-string/jumbo v0, "uri"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Ljava/lang/String;

    .line 456
    new-instance p0, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/IconSource;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static readPlatformSpecifics(Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            ")V"
        }
    .end annotation

    .line 251
    const-string v0, "platformSpecifics"

    .line 252
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 254
    const-string v0, "autoCancel"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->autoCancel:Ljava/lang/Boolean;

    .line 255
    const-string v0, "ongoing"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ongoing:Ljava/lang/Boolean;

    .line 256
    const-string v0, "silent"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->silent:Ljava/lang/Boolean;

    .line 258
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->values()[Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    move-result-object v0

    const-string v1, "style"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    .line 259
    invoke-static {p1, p0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V

    .line 260
    const-string v0, "icon"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->icon:Ljava/lang/String;

    .line 261
    const-string v0, "priority"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->priority:Ljava/lang/Integer;

    .line 262
    invoke-static {p1, p0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readSoundInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V

    .line 263
    const-string v0, "enableVibration"

    .line 264
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->enableVibration:Ljava/lang/Boolean;

    .line 265
    const-string/jumbo v0, "vibrationPattern"

    .line 266
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->vibrationPattern:[J

    .line 267
    invoke-static {p1, p0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readGroupingInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V

    .line 268
    const-string v0, "onlyAlertOnce"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->onlyAlertOnce:Ljava/lang/Boolean;

    .line 269
    const-string v0, "showWhen"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->showWhen:Ljava/lang/Boolean;

    .line 270
    const-string/jumbo v0, "when"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/LongUtils;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->when:Ljava/lang/Long;

    .line 271
    const-string/jumbo v0, "usesChronometer"

    .line 272
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->usesChronometer:Ljava/lang/Boolean;

    .line 273
    const-string v0, "chronometerCountDown"

    .line 274
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->chronometerCountDown:Ljava/lang/Boolean;

    .line 275
    invoke-static {p1, p0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readProgressInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V

    .line 276
    invoke-static {p1, p0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readColor(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V

    .line 277
    invoke-static {p1, p0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readChannelInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V

    .line 278
    invoke-static {p1, p0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readLedInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V

    .line 279
    invoke-static {p1, p0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readLargeIconInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V

    .line 280
    const-string/jumbo v0, "ticker"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ticker:Ljava/lang/String;

    .line 281
    const-string/jumbo v0, "visibility"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->visibility:Ljava/lang/Integer;

    .line 282
    const-string v0, "scheduleMode"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    move-result-object v0

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 286
    :cond_0
    const-string/jumbo v0, "timeoutAfter"

    .line 287
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/LongUtils;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->timeoutAfter:Ljava/lang/Long;

    .line 288
    const-string v0, "category"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->category:Ljava/lang/String;

    .line 289
    const-string v0, "fullScreenIntent"

    .line 290
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->fullScreenIntent:Ljava/lang/Boolean;

    .line 291
    const-string v0, "shortcutId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->shortcutId:Ljava/lang/String;

    .line 292
    const-string v0, "additionalFlags"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->additionalFlags:[I

    .line 293
    const-string v0, "subText"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->subText:Ljava/lang/String;

    .line 294
    const-string v0, "tag"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->tag:Ljava/lang/String;

    .line 295
    const-string v0, "colorized"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->colorized:Ljava/lang/Boolean;

    .line 296
    const-string v0, "number"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->number:Ljava/lang/Integer;

    .line 297
    const-string v0, "audioAttributesUsage"

    .line 298
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->audioAttributesUsage:Ljava/lang/Integer;

    .line 300
    const-string v0, "actions"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 304
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->actions:Ljava/util/List;

    .line 306
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 307
    new-instance v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;

    invoke-direct {v1, v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;-><init>(Ljava/util/Map;)V

    .line 308
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->actions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static readProgressInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 317
    const-string v0, "showProgress"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->showProgress:Ljava/lang/Boolean;

    .line 318
    const-string v0, "maxProgress"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->maxProgress:Ljava/lang/Integer;

    .line 322
    :cond_0
    const-string v0, "progress"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->progress:Ljava/lang/Integer;

    .line 326
    :cond_1
    const-string v0, "indeterminate"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->indeterminate:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method private static readSoundInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 353
    const-string v0, "playSound"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->playSound:Ljava/lang/Boolean;

    .line 354
    const-string v0, "sound"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->sound:Ljava/lang/String;

    .line 355
    const-string v0, "soundSource"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 357
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    :cond_0
    return-void
.end method

.method private static readStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 405
    const-string v0, "styleInformation"

    .line 406
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 407
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->getDefaultStyleInformation(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->Default:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    if-ne v1, v2, :cond_0

    .line 409
    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->BigPicture:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    if-ne v1, v2, :cond_1

    .line 411
    invoke-static {p0, p1, v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readBigPictureStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->BigText:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    if-ne v1, v2, :cond_2

    .line 414
    invoke-static {p0, p1, v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readBigTextStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->Inbox:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    if-ne v1, v2, :cond_3

    .line 416
    invoke-static {p0, p1, v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readInboxStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;)V

    goto :goto_0

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->Messaging:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    if-ne v1, v2, :cond_4

    .line 418
    invoke-static {p0, p1, v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->readMessagingStyleInformation(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/util/Map;Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;)V

    goto :goto_0

    .line 419
    :cond_4
    iget-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->Media:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    if-ne p1, v1, :cond_5

    .line 420
    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    :cond_5
    :goto_0
    return-void
.end method
