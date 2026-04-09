.class public final Lcom/starttech/mhgboutique/MainActivity$showNotification$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/starttech/mhgboutique/MainActivity;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\"\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00022\u0010\u0010\t\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/starttech/mhgboutique/MainActivity$showNotification$1",
        "Lcom/bumptech/glide/request/target/CustomTarget;",
        "Landroid/graphics/Bitmap;",
        "onLoadCleared",
        "",
        "placeholder",
        "Landroid/graphics/drawable/Drawable;",
        "onResourceReady",
        "resource",
        "transition",
        "Lcom/bumptech/glide/request/transition/Transition;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $builder:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic $notificationId:I

.field final synthetic $notificationManager:Landroid/app/NotificationManager;

.field final synthetic $remoteView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;Landroid/app/NotificationManager;ILandroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->$remoteView:Landroid/widget/RemoteViews;

    iput-object p2, p0, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->$notificationManager:Landroid/app/NotificationManager;

    iput p3, p0, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->$notificationId:I

    iput-object p4, p0, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->$builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 82
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->$remoteView:Landroid/widget/RemoteViews;

    sget v0, Lcom/starttech/mhgboutique/R$id;->notification_image:I

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 85
    iget-object p1, p0, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->$notificationManager:Landroid/app/NotificationManager;

    iget p2, p0, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->$notificationId:I

    iget-object p0, p0, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->$builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 82
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/starttech/mhgboutique/MainActivity$showNotification$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
