.class Lio/flutter/view/AccessibilityBridge$1;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/AccessibilityBridge;


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$1;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public announce(Ljava/lang/String;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$1;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {p0}, Lio/flutter/view/AccessibilityBridge;->access$100(Lio/flutter/view/AccessibilityBridge;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFocus(I)V
    .locals 1

    .line 323
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$1;->this$0:Lio/flutter/view/AccessibilityBridge;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    return-void
.end method

.method public onLongPress(I)V
    .locals 1

    .line 317
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$1;->this$0:Lio/flutter/view/AccessibilityBridge;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    return-void
.end method

.method public onTap(I)V
    .locals 1

    .line 311
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$1;->this$0:Lio/flutter/view/AccessibilityBridge;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    return-void
.end method

.method public onTooltip(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1

    .line 347
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 348
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$1;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    return-void
.end method

.method public updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 355
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 356
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 357
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$1;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/view/AccessibilityBridge;->updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    return-void
.end method
