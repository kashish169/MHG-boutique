.class public final synthetic Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda2;->f$0:Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda2;->f$0:Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;

    check-cast p1, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->$r8$lambda$m0NlfSfV-rNkj1d33AunQuHhQjQ(Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V

    return-void
.end method
