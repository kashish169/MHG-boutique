.class public interface abstract Lco/tamara/sdk/di/AppComponent$Builder;
.super Ljava/lang/Object;
.source "AppComponent.kt"


# annotations
.annotation runtime Ldagger/Component$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/di/AppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lco/tamara/sdk/di/AppComponent$Builder;",
        "",
        "appModule",
        "Lco/tamara/sdk/di/AppModule;",
        "build",
        "Lco/tamara/sdk/di/AppComponent;",
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
.method public abstract appModule(Lco/tamara/sdk/di/AppModule;)Lco/tamara/sdk/di/AppComponent$Builder;
.end method

.method public abstract build()Lco/tamara/sdk/di/AppComponent;
.end method
