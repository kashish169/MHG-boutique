.class public abstract Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;
.super Lcom/google/android/gms/wallet/callback/zzd;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/wallet/callback/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createPaymentDataCallbacks()Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/wallet/callback/zzd;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/wallet/callback/zzd;->onCreate()V

    return-void
.end method

.method protected final onRunTask(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/callback/CallbackInput;",
            "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
            "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;->createPaymentDataCallbacks()Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Lcom/google/android/gms/wallet/PaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/wallet/callback/CallbackInput;->deserializeRequest(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wallet/PaymentData;

    new-instance p2, Lcom/google/android/gms/wallet/callback/zze;

    invoke-direct {p2, p3}, Lcom/google/android/gms/wallet/callback/zze;-><init>(Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;->onPaymentAuthorized(Lcom/google/android/gms/wallet/PaymentData;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 7
    sget-object p1, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/wallet/callback/CallbackInput;->deserializeRequest(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;

    new-instance p2, Lcom/google/android/gms/wallet/callback/zzf;

    invoke-direct {p2, p3}, Lcom/google/android/gms/wallet/callback/zzf;-><init>(Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;->onPaymentDataChanged(Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown Callback Types"

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Callback Types must be set"

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
