.class Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;
.super Ljava/lang/RuntimeException;
.source "FlutterLocalNotificationsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginException"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2257
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2258
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;->code:Ljava/lang/String;

    return-void
.end method
