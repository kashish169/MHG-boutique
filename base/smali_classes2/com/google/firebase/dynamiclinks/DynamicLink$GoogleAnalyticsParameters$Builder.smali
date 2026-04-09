.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
.super Ljava/lang/Object;
.source "DynamicLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;
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

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    .line 621
    const-string p0, "utm_source"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string p0, "utm_medium"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string p0, "utm_campaign"

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;
    .locals 2

    .line 721
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;

    iget-object p0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;-><init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/DynamicLink$1;)V

    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 2

    .line 677
    iget-object p0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v0, "utm_campaign"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 712
    iget-object p0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v0, "utm_content"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMedium()Ljava/lang/String;
    .locals 2

    .line 659
    iget-object p0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v0, "utm_medium"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    .line 641
    iget-object p0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v0, "utm_source"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTerm()Ljava/lang/String;
    .locals 2

    .line 694
    iget-object p0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v0, "utm_term"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCampaign(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "utm_content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMedium(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "utm_medium"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "utm_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTerm(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "utm_term"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
