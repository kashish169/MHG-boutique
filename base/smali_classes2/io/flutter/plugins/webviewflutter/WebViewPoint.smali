.class public Lio/flutter/plugins/webviewflutter/WebViewPoint;
.super Ljava/lang/Object;
.source "WebViewPoint.java"


# instance fields
.field private final x:J

.field private final y:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;->x:J

    .line 18
    iput-wide p3, p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;->y:J

    return-void
.end method


# virtual methods
.method public getX()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;->x:J

    return-wide v0
.end method

.method public getY()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lio/flutter/plugins/webviewflutter/WebViewPoint;->y:J

    return-wide v0
.end method
