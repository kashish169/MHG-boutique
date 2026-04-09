.class public final Lco/tamara/sdk/di/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppModule.kt\nco/tamara/sdk/di/AppModule\n+ 2 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 3 Interceptor.kt\nokhttp3/Interceptor$Companion\n*L\n1#1,64:1\n516#2:65\n42#3,3:66\n*S KotlinDebug\n*F\n+ 1 AppModule.kt\nco/tamara/sdk/di/AppModule\n*L\n39#1:65\n39#1:66,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lco/tamara/sdk/di/AppModule;",
        "",
        "()V",
        "provideTamaraService",
        "Lco/tamara/sdk/api/Service;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideTamaraService()Lco/tamara/sdk/api/Service;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 38
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 65
    sget-object v0, Lokhttp3/Interceptor;->Companion:Lokhttp3/Interceptor$Companion;

    .line 66
    new-instance v0, Lco/tamara/sdk/di/AppModule$provideTamaraService$$inlined$-addInterceptor$1;

    invoke-direct {v0}, Lco/tamara/sdk/di/AppModule$provideTamaraService$$inlined$-addInterceptor$1;-><init>()V

    check-cast v0, Lokhttp3/Interceptor;

    .line 65
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    invoke-static {}, Lco/tamara/sdk/di/AppModuleKt;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 52
    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 54
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    .line 55
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 56
    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 57
    sget-object v0, Lco/tamara/sdk/TamaraPayment;->Companion:Lco/tamara/sdk/TamaraPayment$Companion;

    invoke-virtual {v0}, Lco/tamara/sdk/TamaraPayment$Companion;->getInstance$tamara_flutter_sdk_release()Lco/tamara/sdk/TamaraPayment;

    move-result-object v0

    invoke-virtual {v0}, Lco/tamara/sdk/TamaraPayment;->getApiUrl$tamara_flutter_sdk_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 58
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    check-cast v0, Lretrofit2/Converter$Factory;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 59
    new-instance v0, Lco/tamara/sdk/util/LiveDataCallAdapterFactory;

    invoke-direct {v0}, Lco/tamara/sdk/util/LiveDataCallAdapterFactory;-><init>()V

    check-cast v0, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lco/tamara/sdk/api/Service;

    .line 61
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lco/tamara/sdk/api/Service;

    return-object p0
.end method
