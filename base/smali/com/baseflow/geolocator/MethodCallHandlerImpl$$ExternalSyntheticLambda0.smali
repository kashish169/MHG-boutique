.class public final synthetic Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/baseflow/geolocator/location/PositionChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lcom/baseflow/geolocator/location/LocationClient;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/geolocator/MethodCallHandlerImpl;[ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    iput-object p2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$1:[Z

    iput-object p3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$2:Lcom/baseflow/geolocator/location/LocationClient;

    iput-object p4, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$4:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onPositionChanged(Landroid/location/Location;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$1:[Z

    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$2:Lcom/baseflow/geolocator/location/LocationClient;

    iget-object v3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;->f$4:Lio/flutter/plugin/common/MethodChannel$Result;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->$r8$lambda$0SB9hAYbqBZkpJTI6_liAAurPwc(Lcom/baseflow/geolocator/MethodCallHandlerImpl;[ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/location/Location;)V

    return-void
.end method
