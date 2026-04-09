.class public final Lco/tamara/sdk/model/request/CancelOrder$Creator;
.super Ljava/lang/Object;
.source "CancelOrder.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/model/request/CancelOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lco/tamara/sdk/model/request/CancelOrder;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lco/tamara/sdk/model/request/CancelOrder;
    .locals 7

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lco/tamara/sdk/model/Amount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    move-object v2, p0

    check-cast v2, Lco/tamara/sdk/model/Amount;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-eq v1, p0, :cond_1

    sget-object v4, Lco/tamara/sdk/model/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_2

    move-object p0, v0

    goto :goto_2

    :cond_2
    sget-object p0, Lco/tamara/sdk/model/Amount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    move-object v4, p0

    check-cast v4, Lco/tamara/sdk/model/Amount;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_3

    move-object p0, v0

    goto :goto_3

    :cond_3
    sget-object p0, Lco/tamara/sdk/model/Amount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    move-object v5, p0

    check-cast v5, Lco/tamara/sdk/model/Amount;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    sget-object p0, Lco/tamara/sdk/model/Amount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    move-object v6, v0

    check-cast v6, Lco/tamara/sdk/model/Amount;

    new-instance p0, Lco/tamara/sdk/model/request/CancelOrder;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lco/tamara/sdk/model/request/CancelOrder;-><init>(Lco/tamara/sdk/model/Amount;Ljava/util/ArrayList;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;Lco/tamara/sdk/model/Amount;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/model/request/CancelOrder$Creator;->createFromParcel(Landroid/os/Parcel;)Lco/tamara/sdk/model/request/CancelOrder;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lco/tamara/sdk/model/request/CancelOrder;
    .locals 0

    new-array p0, p1, [Lco/tamara/sdk/model/request/CancelOrder;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/model/request/CancelOrder$Creator;->newArray(I)[Lco/tamara/sdk/model/request/CancelOrder;

    move-result-object p0

    return-object p0
.end method
