.class public Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
.super Ljava/lang/Object;
.source "NotificationChannelDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AUDIO_ATTRIBUTES_USAGE:Ljava/lang/String; = "audioAttributesUsage"

.field private static final CHANNEL_ACTION:Ljava/lang/String; = "channelAction"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ENABLE_LIGHTS:Ljava/lang/String; = "enableLights"

.field private static final ENABLE_VIBRATION:Ljava/lang/String; = "enableVibration"

.field private static final GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final LED_COLOR_ALPHA:Ljava/lang/String; = "ledColorAlpha"

.field private static final LED_COLOR_BLUE:Ljava/lang/String; = "ledColorBlue"

.field private static final LED_COLOR_GREEN:Ljava/lang/String; = "ledColorGreen"

.field private static final LED_COLOR_RED:Ljava/lang/String; = "ledColorRed"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PLAY_SOUND:Ljava/lang/String; = "playSound"

.field private static final SHOW_BADGE:Ljava/lang/String; = "showBadge"

.field private static final SOUND:Ljava/lang/String; = "sound"

.field private static final SOUND_SOURCE:Ljava/lang/String; = "soundSource"

.field private static final VIBRATION_PATTERN:Ljava/lang/String; = "vibrationPattern"


# instance fields
.field public audioAttributesUsage:Ljava/lang/Integer;

.field public channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

.field public description:Ljava/lang/String;

.field public enableLights:Ljava/lang/Boolean;

.field public enableVibration:Ljava/lang/Boolean;

.field public groupId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public importance:Ljava/lang/Integer;

.field public ledColor:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public playSound:Ljava/lang/Boolean;

.field public showBadge:Ljava/lang/Boolean;

.field public sound:Ljava/lang/String;

.field public soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

.field public vibrationPattern:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;

    invoke-direct {v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;-><init>()V

    .line 47
    const-string v1, "id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->id:Ljava/lang/String;

    .line 48
    const-string v1, "name"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->name:Ljava/lang/String;

    .line 49
    const-string v1, "description"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->description:Ljava/lang/String;

    .line 50
    const-string v1, "groupId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->groupId:Ljava/lang/String;

    .line 51
    const-string v1, "importance"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->importance:Ljava/lang/Integer;

    .line 52
    const-string v1, "showBadge"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->showBadge:Ljava/lang/Boolean;

    .line 54
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;->values()[Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    move-result-object v1

    const-string v2, "channelAction"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    .line 55
    const-string v1, "enableVibration"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->enableVibration:Ljava/lang/Boolean;

    .line 56
    const-string/jumbo v1, "vibrationPattern"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->vibrationPattern:[J

    .line 58
    const-string v1, "playSound"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->playSound:Ljava/lang/Boolean;

    .line 59
    const-string v1, "sound"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->sound:Ljava/lang/String;

    .line 60
    const-string v1, "audioAttributesUsage"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->audioAttributesUsage:Ljava/lang/Integer;

    .line 61
    const-string v1, "soundSource"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    .line 66
    :cond_0
    const-string v1, "ledColorAlpha"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 67
    const-string v2, "ledColorRed"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 68
    const-string v3, "ledColorGreen"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 69
    const-string v4, "ledColorBlue"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->ledColor:Ljava/lang/Integer;

    .line 74
    :cond_1
    const-string v1, "enableLights"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    iput-object p0, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->enableLights:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static fromNotificationDetails(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .locals 2

    .line 80
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;

    invoke-direct {v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->id:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->name:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->description:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->importance:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->importance:Ljava/lang/Integer;

    .line 85
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelShowBadge:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->showBadge:Ljava/lang/Boolean;

    .line 86
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;->CreateIfNotExists:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->enableVibration:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->enableVibration:Ljava/lang/Boolean;

    .line 92
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->vibrationPattern:[J

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->vibrationPattern:[J

    .line 93
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->playSound:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->playSound:Ljava/lang/Boolean;

    .line 94
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->sound:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->sound:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    .line 96
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->audioAttributesUsage:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->audioAttributesUsage:Ljava/lang/Integer;

    .line 97
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledColor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->ledColor:Ljava/lang/Integer;

    .line 98
    iget-object p0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->enableLights:Ljava/lang/Boolean;

    iput-object p0, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->enableLights:Ljava/lang/Boolean;

    return-object v0
.end method
