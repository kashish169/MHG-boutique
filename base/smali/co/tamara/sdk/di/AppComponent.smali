.class public interface abstract Lco/tamara/sdk/di/AppComponent;
.super Ljava/lang/Object;
.source "AppComponent.kt"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lco/tamara/sdk/di/AppModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/di/AppComponent$Builder;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008a\u0018\u00002\u00020\u0001:\u0001\nJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lco/tamara/sdk/di/AppComponent;",
        "",
        "inject",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "tamaraInformationViewModel",
        "Lco/tamara/sdk/ui/TamaraInformationViewModel;",
        "tamaraPaymentViewModel",
        "Lco/tamara/sdk/ui/TamaraPaymentViewModel;",
        "Builder",
        "tamara_flutter_sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract inject(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract inject(Lco/tamara/sdk/ui/TamaraInformationViewModel;)V
.end method

.method public abstract inject(Lco/tamara/sdk/ui/TamaraPaymentViewModel;)V
.end method
