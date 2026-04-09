.class public final synthetic Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic f$1:Lfman/ge/smart_auth/SmartAuthPlugin;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;->f$1:Lfman/ge/smart_auth/SmartAuthPlugin;

    iput-boolean p3, p0, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;->f$1:Lfman/ge/smart_auth/SmartAuthPlugin;

    iget-boolean p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin;->$r8$lambda$Ii6h6pqFTeFM9ZY3wkd7hOll8YU(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;ZLcom/google/android/gms/tasks/Task;)V

    return-void
.end method
