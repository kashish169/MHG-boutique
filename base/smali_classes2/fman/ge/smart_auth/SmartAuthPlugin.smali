.class public final Lfman/ge/smart_auth/SmartAuthPlugin;
.super Ljava/lang/Object;
.source "SmartAuthPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfman/ge/smart_auth/SmartAuthPlugin$Companion;,
        Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;,
        Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartAuthPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartAuthPlugin.kt\nfman/ge/smart_auth/SmartAuthPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,523:1\n1#2:524\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 G2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0003GHIB\u0005\u00a2\u0006\u0002\u0010\u0005J0\u0010\u0014\u001a\"\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015j\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0016`\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0008\u0010\u001f\u001a\u00020\u001bH\u0002J\u0018\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0016\u0010\"\u001a\u00020\u001b2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001b0$H\u0002J\u001a\u0010%\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\"\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0010\u0010-\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\u000bH\u0016J\u0010\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u000201H\u0016J\u0008\u00102\u001a\u00020\u001bH\u0016J\u0008\u00103\u001a\u00020\u001bH\u0016J\u0010\u00104\u001a\u00020\u001b2\u0006\u0010.\u001a\u000201H\u0016J\u001a\u00105\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020)2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u001a\u00106\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020)2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0018\u00107\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0011H\u0016J\u0010\u00108\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\u000bH\u0016J\u0010\u00109\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020)H\u0002J\u001a\u0010:\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020)2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0008\u0010;\u001a\u00020\u001bH\u0002J\u0008\u0010<\u001a\u00020\u001bH\u0002J\u0018\u0010=\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0018\u0010>\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010?\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0018\u0010@\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010A\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010B\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0008\u0010C\u001a\u00020\u001bH\u0002J\u0012\u0010D\u001a\u00020\u001b2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0002R\u0014\u0010\u0006\u001a\u0008\u0018\u00010\u0007R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0018\u00010\u0013R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lfman/ge/smart_auth/SmartAuthPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "()V",
        "consentReceiver",
        "Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;",
        "mActivity",
        "Landroid/app/Activity;",
        "mBinding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "mChannel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "mContext",
        "Landroid/content/Context;",
        "pendingResult",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "smsReceiver",
        "Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;",
        "credentialToMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "credential",
        "Lcom/google/android/gms/auth/api/credentials/Credential;",
        "deleteCredential",
        "",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "dispose",
        "getCredential",
        "getSignature",
        "ignoreIllegalState",
        "fn",
        "Lkotlin/Function0;",
        "maybeBuildCredential",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAttachedToActivity",
        "binding",
        "onAttachedToEngine",
        "flutterPluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onGetCredentialRequest",
        "onHintRequest",
        "onMethodCall",
        "onReattachedToActivityForConfigChanges",
        "onSaveCredentialRequest",
        "onSmsConsentRequest",
        "removeSmsRetrieverListener",
        "removeSmsUserConsentListener",
        "requestHint",
        "saveCredential",
        "startSmsRetriever",
        "startSmsUserConsent",
        "stopSmsRetriever",
        "stopSmsUserConsent",
        "unregisterAllReceivers",
        "unregisterReceiver",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "Companion",
        "ConsentBroadcastReceiver",
        "SmsBroadcastReceiver",
        "smart_auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lfman/ge/smart_auth/SmartAuthPlugin$Companion;

.field private static final GET_CREDENTIAL_REQUEST:I = 0x2b5f

.field private static final HINT_REQUEST:I = 0x2b5c

.field private static final PLUGIN_TAG:Ljava/lang/String; = "Pinput/SmartAuth"

.field private static final SAVE_CREDENTIAL_REQUEST:I = 0x2b5e

.field private static final USER_CONSENT_REQUEST:I = 0x2b5d


# instance fields
.field private consentReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;

.field private mActivity:Landroid/app/Activity;

.field private mBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private mChannel:Lio/flutter/plugin/common/MethodChannel;

.field private mContext:Landroid/content/Context;

.field private pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private smsReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$Ii6h6pqFTeFM9ZY3wkd7hOll8YU(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;ZLcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfman/ge/smart_auth/SmartAuthPlugin;->getCredential$lambda$1(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;ZLcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JiJeR06p05TQ6s68zpv8FLjgjgY(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin;->deleteCredential$lambda$2(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fuK-GIx3xotbgX8hpV_HnMno--I(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->saveCredential$lambda$0(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfman/ge/smart_auth/SmartAuthPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfman/ge/smart_auth/SmartAuthPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfman/ge/smart_auth/SmartAuthPlugin;->Companion:Lfman/ge/smart_auth/SmartAuthPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$credentialToMap(Lfman/ge/smart_auth/SmartAuthPlugin;Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin;->credentialToMap(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMActivity$p(Lfman/ge/smart_auth/SmartAuthPlugin;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getPendingResult$p(Lfman/ge/smart_auth/SmartAuthPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 0

    .line 31
    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object p0
.end method

.method public static final synthetic access$ignoreIllegalState(Lfman/ge/smart_auth/SmartAuthPlugin;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$removeSmsRetrieverListener(Lfman/ge/smart_auth/SmartAuthPlugin;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->removeSmsRetrieverListener()V

    return-void
.end method

.method public static final synthetic access$removeSmsUserConsentListener(Lfman/ge/smart_auth/SmartAuthPlugin;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->removeSmsUserConsentListener()V

    return-void
.end method

.method private final credentialToMap(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 332
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-string v1, "accountType"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v1, "familyName"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v1, "givenName"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getGivenName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getProfilePictureUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "profilePictureUri"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private final deleteCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 231
    invoke-direct {p0, p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->maybeBuildCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    if-nez p0, :cond_1

    const-string p0, "mContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object p0

    const-string v0, "getClient(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->delete(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final deleteCredential$lambda$2(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final dispose()V
    .locals 3

    .line 366
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->unregisterAllReceivers()V

    .line 367
    new-instance v0, Lfman/ge/smart_auth/SmartAuthPlugin$dispose$1;

    invoke-direct {v0, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$dispose$1;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mActivity:Landroid/app/Activity;

    .line 369
    iget-object v1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v1, :cond_0

    move-object v2, p0

    check-cast v2, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 370
    :cond_0
    iput-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method

.method private final getCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 181
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    const-string v1, "serverClientId"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    const-string v2, "idTokenNonce"

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    const-string v3, "isIdTokenRequested"

    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 185
    const-string v4, "isPasswordLoginSupported"

    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 186
    const-string v5, "showResolveDialog"

    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 189
    new-instance v5, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;-><init>()V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    move-result-object v5

    const-string v6, "setAccountTypes(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 190
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    :cond_1
    if-eqz v2, :cond_2

    .line 191
    invoke-virtual {v5, v2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setIdTokenNonce(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    :cond_2
    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setIdTokenRequested(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    :cond_3
    if-eqz v4, :cond_4

    .line 194
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 193
    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setPasswordLoginSupported(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    :cond_4
    if-eqz v1, :cond_5

    .line 196
    invoke-virtual {v5, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .line 199
    :cond_5
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object v0

    const-string v1, "getClient(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->request(Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 201
    new-instance v1, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final getCredential$lambda$1(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;ZLcom/google/android/gms/tasks/Task;)V
    .locals 2

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p1, v0}, Lfman/ge/smart_auth/SmartAuthPlugin;->credentialToMap(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 210
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    .line 211
    instance-of v0, p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ResolvableApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lfman/ge/smart_auth/SmartAuthPlugin;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 213
    :try_start_0
    iput-object p0, p1, Lfman/ge/smart_auth/SmartAuthPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 214
    check-cast p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 215
    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x2b5f

    .line 214
    invoke-virtual {p3, v0, p1}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 220
    const-string p2, "Failed to send resolution."

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "Pinput/SmartAuth"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    .line 224
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final getSignature(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 99
    new-instance v0, Lfman/ge/smart_auth/AppSignatureHelper;

    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "mContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-direct {v0, p0}, Lfman/ge/smart_auth/AppSignatureHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfman/ge/smart_auth/AppSignatureHelper;->getAppSignatures()Ljava/util/ArrayList;

    move-result-object p0

    .line 100
    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 403
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ignoring exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Pinput/SmartAuth"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final maybeBuildCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 4

    .line 344
    const-string p0, "accountType"

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 345
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    const-string v2, "password"

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 348
    const-string v3, "profilePictureUri"

    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 351
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 355
    :cond_0
    new-instance p2, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    invoke-direct {p2, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 356
    invoke-virtual {p2, p0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    :cond_1
    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {p2, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    :cond_2
    if-eqz v2, :cond_3

    .line 358
    invoke-virtual {p2, v2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    :cond_3
    if-eqz p1, :cond_4

    .line 359
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setProfilePictureUri(Landroid/net/Uri;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 361
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p0

    return-object p0
.end method

.method private final onGetCredentialRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 319
    const-string p1, "com.google.android.gms.credentials.Credential"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-eqz p1, :cond_0

    .line 321
    new-instance p2, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;

    invoke-direct {p2, p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$1;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 326
    :cond_0
    new-instance p1, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$2;

    invoke-direct {p1, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$onGetCredentialRequest$2;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onHintRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 293
    const-string p1, "com.google.android.gms.credentials.Credential"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-eqz p1, :cond_0

    .line 295
    new-instance p2, Lfman/ge/smart_auth/SmartAuthPlugin$onHintRequest$1;

    invoke-direct {p2, p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin$onHintRequest$1;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 300
    :cond_0
    new-instance p1, Lfman/ge/smart_auth/SmartAuthPlugin$onHintRequest$2;

    invoke-direct {p1, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$onHintRequest$2;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onSaveCredentialRequest(I)V
    .locals 1

    .line 314
    new-instance v0, Lfman/ge/smart_auth/SmartAuthPlugin$onSaveCredentialRequest$1;

    invoke-direct {v0, p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin$onSaveCredentialRequest$1;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;I)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onSmsConsentRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 305
    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance p2, Lfman/ge/smart_auth/SmartAuthPlugin$onSmsConsentRequest$1;

    invoke-direct {p2, p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin$onSmsConsentRequest$1;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;Ljava/lang/String;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 308
    :cond_0
    new-instance p1, Lfman/ge/smart_auth/SmartAuthPlugin$onSmsConsentRequest$2;

    invoke-direct {p1, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$onSmsConsentRequest$2;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lfman/ge/smart_auth/SmartAuthPlugin;->ignoreIllegalState(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final removeSmsRetrieverListener()V
    .locals 1

    .line 380
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->smsReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 381
    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lfman/ge/smart_auth/SmartAuthPlugin;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->smsReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;

    :cond_0
    return-void
.end method

.method private final removeSmsUserConsentListener()V
    .locals 1

    .line 387
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->consentReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 388
    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lfman/ge/smart_auth/SmartAuthPlugin;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->consentReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;

    :cond_0
    return-void
.end method

.method private final requestHint(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 105
    iput-object p2, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 106
    const-string p2, "showAddAccountButton"

    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 107
    const-string v0, "showCancelButton"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 109
    const-string v1, "isPhoneNumberIdentifierSupported"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 111
    const-string v2, "isEmailAddressIdentifierSupported"

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 112
    const-string v3, "accountTypes"

    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    const-string v4, "idTokenNonce"

    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 114
    const-string v5, "isIdTokenRequested"

    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 115
    const-string v6, "serverClientId"

    invoke-virtual {p1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 117
    new-instance v6, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    invoke-direct {v6}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    .line 118
    new-instance v7, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v7}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v7, p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setShowAddAccountButton(Z)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    :cond_0
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v7, p2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setShowCancelButton(Z)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    .line 124
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setHintPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 126
    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setPhoneNumberIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    :cond_2
    if-eqz v2, :cond_3

    .line 131
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 130
    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setEmailAddressIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    :cond_3
    if-eqz v3, :cond_4

    .line 134
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    :cond_4
    if-eqz v4, :cond_5

    .line 136
    invoke-virtual {v6, v4}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setIdTokenNonce(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    :cond_5
    if-eqz v5, :cond_6

    .line 138
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setIdTokenRequested(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    :cond_6
    if-eqz p1, :cond_7

    .line 140
    invoke-virtual {v6, p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 144
    :cond_7
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    if-nez p1, :cond_8

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object p1

    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->getHintPickerIntent(Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getHintPickerIntent(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 148
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x2b5c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 147
    invoke-static/range {v0 .. v7}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :cond_9
    return-void
.end method

.method private final saveCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 155
    invoke-direct {p0, p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->maybeBuildCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object v0

    const-string v1, "getClient(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->save(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final saveCredential$lambda$0(Lio/flutter/plugin/common/MethodChannel$Result;Lfman/ge/smart_auth/SmartAuthPlugin;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    .line 164
    instance-of v0, p2, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ResolvableApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lfman/ge/smart_auth/SmartAuthPlugin;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    iput-object p0, p1, Lfman/ge/smart_auth/SmartAuthPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 167
    check-cast p2, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 168
    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x2b5e

    .line 167
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 172
    const-string p2, "Failed to send resolution."

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Pinput/SmartAuth"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    .line 175
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final startSmsRetriever(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 239
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->unregisterAllReceivers()V

    .line 240
    iput-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 241
    new-instance p1, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;

    invoke-direct {p1, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    iput-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->smsReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;

    .line 242
    new-instance v2, Landroid/content/IntentFilter;

    const-string p1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v7, "mContext"

    if-nez p1, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 245
    :goto_0
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->smsReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;

    move-object v1, p1

    check-cast v1, Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 243
    const-string v3, "com.google.android.gms.auth.api.phone.permission.SEND"

    invoke-static/range {v0 .. v5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 251
    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    if-nez p0, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v6, p0

    :goto_1
    invoke-static {v6}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private final startSmsUserConsent(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 265
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->unregisterAllReceivers()V

    .line 266
    iput-object p2, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 267
    new-instance p2, Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;

    invoke-direct {p2, p0}, Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;-><init>(Lfman/ge/smart_auth/SmartAuthPlugin;)V

    iput-object p2, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->consentReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;

    .line 268
    new-instance v2, Landroid/content/IntentFilter;

    const-string p2, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object p2, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v7, "mContext"

    if-nez p2, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 271
    :goto_0
    iget-object p2, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->consentReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;

    move-object v1, p2

    check-cast v1, Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 269
    const-string v3, "com.google.android.gms.auth.api.phone.permission.SEND"

    invoke-static/range {v0 .. v5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 277
    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    if-nez p0, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v6, p0

    :goto_1
    invoke-static {v6}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object p0

    const-string p2, "senderPhoneNumber"

    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsUserConsent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private final stopSmsRetriever(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->smsReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$SmsBroadcastReceiver;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 256
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->removeSmsRetrieverListener()V

    const/4 p0, 0x1

    .line 259
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final stopSmsUserConsent(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->consentReceiver:Lfman/ge/smart_auth/SmartAuthPlugin$ConsentBroadcastReceiver;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 283
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->removeSmsUserConsentListener()V

    const/4 p0, 0x1

    .line 286
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final unregisterAllReceivers()V
    .locals 0

    .line 374
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->removeSmsRetrieverListener()V

    .line 375
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->removeSmsUserConsentListener()V

    return-void
.end method

.method private final unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 395
    :try_start_0
    iget-object p0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "mContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 397
    const-string p1, "Unregistering receiver failed."

    check-cast p0, Ljava/lang/Throwable;

    const-string v0, "Pinput/SmartAuth"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lfman/ge/smart_auth/SmartAuthPlugin;->onGetCredentialRequest(ILandroid/content/Intent;)V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-direct {p0, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->onSaveCredentialRequest(I)V

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lfman/ge/smart_auth/SmartAuthPlugin;->onSmsConsentRequest(ILandroid/content/Intent;)V

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lfman/ge/smart_auth/SmartAuthPlugin;->onHintRequest(ILandroid/content/Intent;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2b5c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mActivity:Landroid/app/Activity;

    .line 66
    iput-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 67
    check-cast p0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "fman.smart_auth"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 43
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mContext:Landroid/content/Context;

    .line 44
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mChannel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz p1, :cond_0

    check-cast p0, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->dispose()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->dispose()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lfman/ge/smart_auth/SmartAuthPlugin;->dispose()V

    .line 49
    iget-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mChannel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 50
    :cond_0
    iput-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "deleteCredential"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->deleteCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    .line 71
    :sswitch_1
    const-string v1, "saveCredential"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 78
    :cond_1
    invoke-direct {p0, p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->saveCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    .line 71
    :sswitch_2
    const-string v1, "requestHint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0, p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->requestHint(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 71
    :sswitch_3
    const-string p1, "stopSmsRetriever"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 75
    :cond_3
    invoke-direct {p0, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->stopSmsRetriever(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 71
    :sswitch_4
    const-string p1, "getAppSignature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 72
    :cond_4
    invoke-direct {p0, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->getSignature(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 71
    :sswitch_5
    const-string p1, "startSmsRetriever"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 73
    :cond_5
    invoke-direct {p0, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->startSmsRetriever(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 71
    :sswitch_6
    const-string v1, "startSmsUserConsent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 74
    :cond_6
    invoke-direct {p0, p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->startSmsUserConsent(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 71
    :sswitch_7
    const-string v1, "getCredential"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 80
    :cond_7
    invoke-direct {p0, p1, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->getCredential(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 71
    :sswitch_8
    const-string p1, "stopSmsUserConsent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 76
    :cond_8
    invoke-direct {p0, p2}, Lfman/ge/smart_auth/SmartAuthPlugin;->stopSmsUserConsent(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 81
    :cond_9
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f9f6ca8 -> :sswitch_8
        -0x3a7b5fb3 -> :sswitch_7
        -0x7fbd848 -> :sswitch_6
        0x238b3df -> :sswitch_5
        0x6e1a60d -> :sswitch_4
        0x2ffb877f -> :sswitch_3
        0x448765b6 -> :sswitch_2
        0x6e798db4 -> :sswitch_1
        0x7c9d7062 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p1, p0, Lfman/ge/smart_auth/SmartAuthPlugin;->mBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 61
    check-cast p0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method
