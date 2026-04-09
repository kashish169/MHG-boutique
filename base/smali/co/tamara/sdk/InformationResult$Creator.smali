.class public final Lco/tamara/sdk/InformationResult$Creator;
.super Ljava/lang/Object;
.source "InformationResult.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/InformationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lco/tamara/sdk/InformationResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lco/tamara/sdk/InformationResult;
    .locals 1

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lco/tamara/sdk/InformationResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, v0, p1}, Lco/tamara/sdk/InformationResult;-><init>(ILjava/lang/Throwable;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/InformationResult$Creator;->createFromParcel(Landroid/os/Parcel;)Lco/tamara/sdk/InformationResult;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lco/tamara/sdk/InformationResult;
    .locals 0

    new-array p0, p1, [Lco/tamara/sdk/InformationResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/InformationResult$Creator;->newArray(I)[Lco/tamara/sdk/InformationResult;

    move-result-object p0

    return-object p0
.end method
