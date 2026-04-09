.class public abstract Ldagger/android/support/DaggerAppCompatDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "DaggerAppCompatDialogFragment.java"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# instance fields
.field childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 40
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Ldagger/android/support/DaggerAppCompatDialogFragment;->childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method
