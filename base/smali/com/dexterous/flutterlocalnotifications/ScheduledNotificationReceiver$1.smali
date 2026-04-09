.class Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ScheduledNotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;


# direct methods
.method constructor <init>(Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver$1;->this$0:Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
