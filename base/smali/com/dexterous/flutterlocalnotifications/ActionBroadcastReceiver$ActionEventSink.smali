.class Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;
.super Ljava/lang/Object;
.source "ActionBroadcastReceiver.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionEventSink"
.end annotation


# instance fields
.field final cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->cache:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->cache:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->cache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 129
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->cache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 133
    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method
