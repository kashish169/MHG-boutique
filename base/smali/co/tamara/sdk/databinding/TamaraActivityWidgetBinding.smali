.class public final Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;
.super Ljava/lang/Object;
.source "TamaraActivityWidgetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;->rootView:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 49
    new-instance v0, Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;

    invoke-direct {v0, p0}, Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;-><init>(Landroid/view/View;)V

    return-object v0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v0, v1}, Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;
    .locals 2

    .line 36
    sget v0, Lco/tamara/sdk/R$layout;->tamara_activity_widget:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    :cond_0
    invoke-static {p0}, Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;->bind(Landroid/view/View;)Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lco/tamara/sdk/databinding/TamaraActivityWidgetBinding;->rootView:Landroid/view/View;

    return-object p0
.end method
