.class public abstract Ldagger/android/DaggerDialogFragment;
.super Landroid/app/DialogFragment;
.source "DaggerDialogFragment.java"

# interfaces
.implements Ldagger/android/HasFragmentInjector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public fragmentInjector()Ldagger/android/AndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Ldagger/android/DaggerDialogFragment;->childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Fragment;)V

    .line 43
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method
