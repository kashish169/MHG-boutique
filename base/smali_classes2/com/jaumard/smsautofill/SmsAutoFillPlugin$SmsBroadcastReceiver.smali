.class Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsAutoFillPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaumard/smsautofill/SmsAutoFillPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field final plugin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jaumard/smsautofill/SmsAutoFillPlugin;",
            ">;"
        }
    .end annotation
.end field

.field final smsCodeRegexPattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jaumard/smsautofill/SmsAutoFillPlugin;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;->plugin:Ljava/lang/ref/WeakReference;

    .line 341
    iput-object p2, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;->smsCodeRegexPattern:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 346
    const-string p1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 347
    iget-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;->plugin:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;->plugin:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-static {p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->-$$Nest$fgetactivity(Lcom/jaumard/smsautofill/SmsAutoFillPlugin;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 356
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    if-eqz p2, :cond_2

    .line 358
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    if-nez p2, :cond_2

    .line 360
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 361
    iget-object p2, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;->smsCodeRegexPattern:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 363
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 365
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;->plugin:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->setCode(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object p0, p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin$SmsBroadcastReceiver;->plugin:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;

    invoke-virtual {p0, p1}, Lcom/jaumard/smsautofill/SmsAutoFillPlugin;->setCode(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
