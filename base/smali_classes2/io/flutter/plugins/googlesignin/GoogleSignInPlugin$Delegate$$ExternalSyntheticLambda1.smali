.class public final synthetic Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/flutter/plugins/googlesignin/BackgroundTaskRunner$Callback;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugins/googlesignin/Messages$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/googlesignin/Messages$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$$ExternalSyntheticLambda1;->f$0:Lio/flutter/plugins/googlesignin/Messages$Result;

    return-void
.end method


# virtual methods
.method public final run(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$$ExternalSyntheticLambda1;->f$0:Lio/flutter/plugins/googlesignin/Messages$Result;

    invoke-static {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->lambda$clearAuthCache$3(Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/util/concurrent/Future;)V

    return-void
.end method
