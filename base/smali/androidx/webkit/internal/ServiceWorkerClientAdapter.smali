.class public Landroidx/webkit/internal/ServiceWorkerClientAdapter;
.super Ljava/lang/Object;
.source "ServiceWorkerClientAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/ServiceWorkerClientBoundaryInterface;


# instance fields
.field private final mClient:Landroidx/webkit/ServiceWorkerClientCompat;


# direct methods
.method public constructor <init>(Landroidx/webkit/ServiceWorkerClientCompat;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/webkit/internal/ServiceWorkerClientAdapter;->mClient:Landroidx/webkit/ServiceWorkerClientCompat;

    return-void
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 0

    .line 50
    const-string p0, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/webkit/internal/ServiceWorkerClientAdapter;->mClient:Landroidx/webkit/ServiceWorkerClientCompat;

    invoke-virtual {p0, p1}, Landroidx/webkit/ServiceWorkerClientCompat;->shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method
