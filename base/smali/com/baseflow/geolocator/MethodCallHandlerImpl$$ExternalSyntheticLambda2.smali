.class public final synthetic Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/baseflow/geolocator/errors/ErrorCallback;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda2;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda2;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p0, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->lambda$getLocationAccuracy$2(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void
.end method
