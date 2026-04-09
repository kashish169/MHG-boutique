.class public final synthetic Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p0}, Lio/flutter/plugins/firebase/dynamiclinks/FlutterFirebaseDynamicLinksPlugin;->lambda$didReinitializeFirebaseCore$6(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
