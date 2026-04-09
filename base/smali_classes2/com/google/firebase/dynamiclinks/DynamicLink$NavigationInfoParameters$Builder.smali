.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;
.super Ljava/lang/Object;
.source "DynamicLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final parameters:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->parameters:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;
    .locals 2

    .line 960
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;

    iget-object p0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->parameters:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;-><init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/DynamicLink$1;)V

    return-object v0
.end method

.method public getForcedRedirectEnabled()Z
    .locals 1

    .line 951
    iget-object p0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v0, "efr"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setForcedRedirectEnabled(Z)Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "efr"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
