.class public final Lco/tamara/sdk/model/response/orderdetail/OrderDetail;
.super Ljava/lang/Object;
.source "OrderDetail.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008_\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b9\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0018\u0008\u0002\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0002\u0010$J\u000b\u0010f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010h\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010n\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\t\u0010s\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010w\u001a\u0004\u0018\u00010#H\u00c6\u0003\u00a2\u0006\u0002\u0010@J\u000b\u0010x\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u0019\u0010|\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fH\u00c6\u0003J\t\u0010}\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u00c3\u0002\u0010\u007f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0018\u0008\u0002\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00072\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u00c6\u0001\u00a2\u0006\u0003\u0010\u0080\u0001J\n\u0010\u0081\u0001\u001a\u00020#H\u00d6\u0001J\u0017\u0010\u0082\u0001\u001a\u00030\u0083\u00012\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u00d6\u0003J\n\u0010\u0086\u0001\u001a\u00020#H\u00d6\u0001J\n\u0010\u0087\u0001\u001a\u00020\u0007H\u00d6\u0001J\u001e\u0010\u0088\u0001\u001a\u00030\u0089\u00012\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u008c\u0001\u001a\u00020#H\u00d6\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R \u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R \u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010*\"\u0004\u0008.\u0010,R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R \u0010!\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00104\"\u0004\u00088\u00106R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u00104\"\u0004\u0008:\u00106R \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001e\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010C\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR*\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR \u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u00104\"\u0004\u0008I\u00106R \u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u00104\"\u0004\u0008K\u00106R\u001e\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u00104\"\u0004\u0008M\u00106R \u0010\u001c\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010*\"\u0004\u0008O\u0010,R\u001e\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u00104\"\u0004\u0008Q\u00106R\u001a\u0010\u001e\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u00104\"\u0004\u0008S\u00106R \u0010\u001a\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010*\"\u0004\u0008U\u0010,R \u0010 \u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u00104\"\u0004\u0008W\u00106R \u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u00104\"\u0004\u0008Y\u00106R \u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010&\"\u0004\u0008[\u0010(R \u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010*\"\u0004\u0008]\u0010,R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u00104\"\u0004\u0008_\u00106R \u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010*\"\u0004\u0008a\u0010,R \u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010*\"\u0004\u0008c\u0010,R \u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010*\"\u0004\u0008e\u0010,\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Lco/tamara/sdk/model/response/orderdetail/OrderDetail;",
        "Landroid/os/Parcelable;",
        "billingAddress",
        "Lco/tamara/sdk/model/response/orderdetail/AddressDetail;",
        "consumer",
        "Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;",
        "countryCode",
        "",
        "description",
        "status",
        "discountAmount",
        "Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;",
        "items",
        "Ljava/util/ArrayList;",
        "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
        "Lkotlin/collections/ArrayList;",
        "orderReferenceId",
        "orderId",
        "orderNumber",
        "paymentType",
        "shippingAddress",
        "shippingAmount",
        "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
        "taxAmount",
        "totalAmount",
        "capturedAmount",
        "refundedAmount",
        "canceledAmount",
        "paidAmount",
        "walletPrepaidAmount",
        "platform",
        "settlementStatus",
        "settlementDate",
        "createdAt",
        "instalments",
        "",
        "(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "getBillingAddress",
        "()Lco/tamara/sdk/model/response/orderdetail/AddressDetail;",
        "setBillingAddress",
        "(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;)V",
        "getCanceledAmount",
        "()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
        "setCanceledAmount",
        "(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V",
        "getCapturedAmount",
        "setCapturedAmount",
        "getConsumer",
        "()Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;",
        "setConsumer",
        "(Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;)V",
        "getCountryCode",
        "()Ljava/lang/String;",
        "setCountryCode",
        "(Ljava/lang/String;)V",
        "getCreatedAt",
        "setCreatedAt",
        "getDescription",
        "setDescription",
        "getDiscountAmount",
        "()Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;",
        "setDiscountAmount",
        "(Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;)V",
        "getInstalments",
        "()Ljava/lang/Integer;",
        "setInstalments",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getItems",
        "()Ljava/util/ArrayList;",
        "setItems",
        "(Ljava/util/ArrayList;)V",
        "getOrderId",
        "setOrderId",
        "getOrderNumber",
        "setOrderNumber",
        "getOrderReferenceId",
        "setOrderReferenceId",
        "getPaidAmount",
        "setPaidAmount",
        "getPaymentType",
        "setPaymentType",
        "getPlatform",
        "setPlatform",
        "getRefundedAmount",
        "setRefundedAmount",
        "getSettlementDate",
        "setSettlementDate",
        "getSettlementStatus",
        "setSettlementStatus",
        "getShippingAddress",
        "setShippingAddress",
        "getShippingAmount",
        "setShippingAmount",
        "getStatus",
        "setStatus",
        "getTaxAmount",
        "setTaxAmount",
        "getTotalAmount",
        "setTotalAmount",
        "getWalletPrepaidAmount",
        "setWalletPrepaidAmount",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lco/tamara/sdk/model/response/orderdetail/OrderDetail;",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lco/tamara/sdk/model/response/orderdetail/OrderDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billing_address"
    .end annotation
.end field

.field private canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canceled_amount"
    .end annotation
.end field

.field private capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captured_amount"
    .end annotation
.end field

.field private consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

.field private countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country_code"
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_amount"
    .end annotation
.end field

.field private instalments:Ljava/lang/Integer;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
            ">;"
        }
    .end annotation
.end field

.field private orderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_id"
    .end annotation
.end field

.field private orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_number"
    .end annotation
.end field

.field private orderReferenceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_reference_id"
    .end annotation
.end field

.field private paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paid_amount"
    .end annotation
.end field

.field private paymentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_type"
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field private refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refunded_amount"
    .end annotation
.end field

.field private settlementDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settlement_date"
    .end annotation
.end field

.field private settlementStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settlement_status"
    .end annotation
.end field

.field private shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_address"
    .end annotation
.end field

.field private shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_amount"
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_amount"
    .end annotation
.end field

.field private totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_amount"
    .end annotation
.end field

.field private walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallet_prepaid_amount"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail$Creator;

    invoke-direct {v0}, Lco/tamara/sdk/model/response/orderdetail/OrderDetail$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 28

    move-object/from16 v0, p0

    const v26, 0x1ffffff

    const/16 v27, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v27}, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;-><init>(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/response/orderdetail/AddressDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/response/orderdetail/AddressDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p7

    move-object v2, p8

    move-object/from16 v3, p11

    move-object/from16 v4, p21

    const-string v5, "items"

    invoke-static {p7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "orderReferenceId"

    invoke-static {p8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "paymentType"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "platform"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v5, p1

    .line 10
    iput-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    move-object v5, p2

    .line 11
    iput-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    move-object v5, p3

    .line 12
    iput-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    move-object v5, p4

    .line 13
    iput-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    move-object v5, p5

    .line 14
    iput-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    move-object v5, p6

    .line 15
    iput-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    .line 16
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    .line 17
    iput-object v2, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    move-object v1, p9

    .line 18
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 19
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    .line 20
    iput-object v3, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 21
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    move-object/from16 v1, p13

    .line 22
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v1, p14

    .line 23
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v1, p15

    .line 24
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v1, p16

    .line 25
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v1, p17

    .line 26
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v1, p18

    .line 27
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v1, p19

    .line 28
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v1, p20

    .line 29
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    .line 30
    iput-object v4, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 31
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 32
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 33
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 34
    iput-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 12
    const-string v4, "SA"

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    .line 9
    const-string v6, "This is description"

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    .line 9
    const-string v10, ""

    if-eqz v9, :cond_7

    move-object v9, v10

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move-object v11, v10

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 20
    const-string v12, "PAY_BY_LATER"

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    .line 30
    const-string v21, "Android"

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v0, v0, v25

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v0, p25

    :goto_18
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v11

    move-object/from16 p10, v10

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v2

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v0

    .line 9
    invoke-direct/range {p0 .. p25}, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;-><init>(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lco/tamara/sdk/model/response/orderdetail/OrderDetail;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lco/tamara/sdk/model/response/orderdetail/OrderDetail;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v1, v1, v16

    if-eqz v1, :cond_18

    iget-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p24, v15

    move-object/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->copy(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lco/tamara/sdk/model/response/orderdetail/AddressDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()Lco/tamara/sdk/model/response/orderdetail/AddressDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    return-object p0
.end method

.method public final component13()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component14()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component15()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component16()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component17()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component18()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component19()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component2()Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    return-object p0
.end method

.method public final component20()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    return-object p0
.end method

.method public final component24()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    return-object p0
.end method

.method public final component25()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    return-object p0
.end method

.method public final component7()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lco/tamara/sdk/model/response/orderdetail/OrderDetail;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/tamara/sdk/model/response/orderdetail/AddressDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lco/tamara/sdk/model/response/orderdetail/AddressDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Lco/tamara/sdk/model/response/orderdetail/AmountDetail;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lco/tamara/sdk/model/response/orderdetail/OrderDetail;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    const-string v0, "items"

    move-object/from16 p0, v1

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderReferenceId"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentType"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v26, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v25}, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;-><init>(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/tamara/sdk/model/response/orderdetail/AddressDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Lco/tamara/sdk/model/response/orderdetail/AmountDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v26
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;

    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    iget-object p1, p1, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getBillingAddress()Lco/tamara/sdk/model/response/orderdetail/AddressDetail;
    .locals 0

    .line 10
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    return-object p0
.end method

.method public final getCanceledAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 27
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getCapturedAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 25
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getConsumer()Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;
    .locals 0

    .line 11
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    return-object p0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDiscountAmount()Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;
    .locals 0

    .line 15
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    return-object p0
.end method

.method public final getInstalments()Ljava/lang/Integer;
    .locals 0

    .line 34
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderNumber()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderReferenceId()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPaidAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 28
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getPaymentType()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public final getRefundedAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 26
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getSettlementDate()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getSettlementStatus()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final getShippingAddress()Lco/tamara/sdk/model/response/orderdetail/AddressDetail;
    .locals 0

    .line 21
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    return-object p0
.end method

.method public final getShippingAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 22
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final getTaxAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 23
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getTotalAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 24
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public final getWalletPrepaidAmount()Lco/tamara/sdk/model/response/orderdetail/AmountDetail;
    .locals 0

    .line 29
    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lco/tamara/sdk/model/response/orderdetail/AddressDetail;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AddressDetail;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    if-nez p0, :cond_14

    goto :goto_14

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBillingAddress(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    return-void
.end method

.method public final setCanceledAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setCapturedAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setConsumer(Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    return-void
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public final setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDiscountAmount(Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    return-void
.end method

.method public final setInstalments(Ljava/lang/Integer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    return-void
.end method

.method public final setItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lco/tamara/sdk/model/response/orderdetail/ItemDetail;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public final setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    return-void
.end method

.method public final setOrderNumber(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    return-void
.end method

.method public final setOrderReferenceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    return-void
.end method

.method public final setPaidAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setPaymentType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    return-void
.end method

.method public final setPlatform(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    return-void
.end method

.method public final setRefundedAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setSettlementDate(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    return-void
.end method

.method public final setSettlementStatus(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    return-void
.end method

.method public final setShippingAddress(Lco/tamara/sdk/model/response/orderdetail/AddressDetail;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    return-void
.end method

.method public final setShippingAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    return-void
.end method

.method public final setTaxAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setTotalAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public final setWalletPrepaidAmount(Lco/tamara/sdk/model/response/orderdetail/AmountDetail;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    iget-object v2, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    iget-object v3, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    iget-object v4, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    iget-object v5, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    iget-object v6, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    iget-object v7, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    iget-object v8, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    iget-object v9, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    iget-object v10, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    iget-object v11, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    iget-object v12, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    iget-object v13, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v14, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v16, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v17, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v18, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v19, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v20, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    move-object/from16 v21, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    move-object/from16 v22, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    move-object/from16 v24, v15

    iget-object v15, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    iget-object v0, v0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v25, v15

    const-string v15, "OrderDetail(billingAddress="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consumer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", discountAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taxAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capturedAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refundedAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canceledAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paidAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", walletPrepaidAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", settlementStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", settlementDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instalments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->billingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AddressDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->consumer:Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/ConsumerDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->discountAmount:Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/DiscountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;

    invoke-virtual {v3, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/ItemDetail;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderReferenceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->orderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paymentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAddress:Lco/tamara/sdk/model/response/orderdetail/AddressDetail;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AddressDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->shippingAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->taxAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->totalAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->capturedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->refundedAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->canceledAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->paidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_b

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    iget-object v0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->walletPrepaidAmount:Lco/tamara/sdk/model/response/orderdetail/AmountDetail;

    if-nez v0, :cond_c

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lco/tamara/sdk/model/response/orderdetail/AmountDetail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    iget-object p2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->platform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->settlementDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lco/tamara/sdk/model/response/orderdetail/OrderDetail;->instalments:Ljava/lang/Integer;

    if-nez p0, :cond_d

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return-void
.end method
