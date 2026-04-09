.class public final synthetic Lcom/facebook/bolts/Task$Companion$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Lcom/facebook/bolts/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bolts/Task$Companion$$ExternalSyntheticLambda7;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/facebook/bolts/Task$Companion$$ExternalSyntheticLambda7;->f$1:Lcom/facebook/bolts/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/facebook/bolts/Task$Companion$$ExternalSyntheticLambda7;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lcom/facebook/bolts/Task$Companion$$ExternalSyntheticLambda7;->f$1:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-static {v0, p0, p1}, Lcom/facebook/bolts/Task$Companion;->$r8$lambda$vghfHKR40AbY9FdgJrGGct8vNWA(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
