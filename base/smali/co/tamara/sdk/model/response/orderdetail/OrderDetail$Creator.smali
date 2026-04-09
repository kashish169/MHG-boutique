.class public final Lco/tamara/sdk/model/response/orderdetail/OrderDetail$Creator;
.super Ljava/lang/Object;
.source "OrderDetail.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/tamara/sdk/model/response/orderdetail/OrderDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lco/tamara/sdk/model/response/orderdetail/OrderDetail;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lco/tamara/sdk/model/response/orderdetail/OrderDetail;
    .locals 29

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AddressDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v4, v1

    check-cast v4, Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v5, v1

    check-cast v5, Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    move-object v9, v1

    check-cast v9, Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_3
    if-eq v3, v1, :cond_3

    sget-object v11, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AddressDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    move-object v15, v1

    check-cast v15, Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_5

    :cond_5
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    move-object/from16 v16, v1

    check-cast v16, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_6

    :cond_6
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    move-object/from16 v17, v1

    check-cast v17, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_7

    move-object v1, v2

    goto :goto_7

    :cond_7
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    move-object/from16 v18, v1

    check-cast v18, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_8

    :cond_8
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_8
    move-object/from16 v19, v1

    check-cast v19, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_9

    move-object v1, v2

    goto :goto_9

    :cond_9
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_9
    move-object/from16 v20, v1

    check-cast v20, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v2

    goto :goto_a

    :cond_a
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_a
    move-object/from16 v21, v1

    check-cast v21, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_b

    move-object v1, v2

    goto :goto_b

    :cond_b
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    move-object/from16 v22, v1

    check-cast v22, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_c

    :cond_c
    sget-object v1, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    move-object/from16 v23, v1

    check-cast v23, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_d
    move-object/from16 v28, v2

    new-instance v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    move-object v3, v0

    invoke-direct/range {v3 .. v28}, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;-><init>(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/model/response/orderdetail/OrderDetail$Creator;->createFromParcel(Landroid/os/Parcel;)Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lco/tamara/sdk/model/response/orderdetail/OrderDetail;
    .locals 0

    new-array p0, p1, [Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lco/tamara/sdk/model/response/orderdetail/OrderDetail$Creator;->newArray(I)[Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    move-result-object p0

    return-object p0
.end method
