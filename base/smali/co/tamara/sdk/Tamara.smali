.class public interface abstract Lco/tamara/sdk/Tamara;
.super Ljava/lang/Object;
.source "Tamara.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/tamara/sdk/Tamara$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u00080\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&JH\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0005H&J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0015\u001a\u00020\u0003H&J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0005H&J8\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"H&J(\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020\u0005H&J\u0008\u0010(\u001a\u00020\u0003H&J\u0018\u0010)\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J(\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u000cH&J(\u0010/\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u000cH&J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&JH\u00101\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u00108\u001a\u00020\u0005H&J\u0018\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u0005H&J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010=\u001a\u00020\u0005H&J2\u0010>\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u00052\u0008\u0008\u0002\u0010@\u001a\u00020\"H&J\u0018\u0010A\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010B\u001a\u00020\u00032\u0006\u0010C\u001a\u00020\u0010H&J\u0010\u0010D\u001a\u00020\u00032\u0006\u0010E\u001a\u00020\u0010H&J\u0010\u0010F\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u0005H&J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\u0005H&J\u0010\u0010J\u001a\u00020\u00032\u0006\u0010K\u001a\u00020\u0005H&J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u0005H&J\u0010\u0010N\u001a\u00020\"2\u0006\u0010\u0004\u001a\u00020\u0005H&JH\u0010O\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u00108\u001a\u00020\u0005H&J\u0010\u0010P\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u000cH&J\u0018\u0010Q\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H&\u00a8\u0006R"
    }
    d2 = {
        "Lco/tamara/sdk/Tamara;",
        "",
        "addCustomFieldsAdditionalData",
        "",
        "jsonData",
        "",
        "addItem",
        "name",
        "referenceId",
        "sku",
        "type",
        "unitPrice",
        "",
        "tax",
        "discount",
        "quantity",
        "",
        "authoriseOrder",
        "orderId",
        "cancelOrder",
        "checkPaymentOptions",
        "clearItem",
        "createOrder",
        "orderReferenceId",
        "description",
        "getCapturePayment",
        "getOrderDetail",
        "init",
        "authToken",
        "apiUrl",
        "notificationWebHook",
        "publishKey",
        "notificationToken",
        "isSanbox",
        "",
        "paymentCheckout",
        "checkOutUrl",
        "successCallbackUrl",
        "failureCallbackUrl",
        "cancelCallbackUrl",
        "paymentOrder",
        "refunds",
        "renderCartPage",
        "language",
        "country",
        "publicKey",
        "amount",
        "renderProduct",
        "setAdditionalData",
        "setBillingAddress",
        "firstName",
        "lastName",
        "phoneNumber",
        "addressLine1",
        "addressLine2",
        "region",
        "city",
        "setCountry",
        "countryCode",
        "currency",
        "setCurrency",
        "newCurrency",
        "setCustomerInfo",
        "email",
        "isFirstOrder",
        "setDiscount",
        "setExpiresInMinutes",
        "expiresInMinutes",
        "setInstalments",
        "instalments",
        "setLocale",
        "locale",
        "setOrderNumber",
        "orderNumber",
        "setPaymentType",
        "paymentType",
        "setPlatform",
        "platform",
        "setRiskAssessment",
        "setShippingAddress",
        "setShippingAmount",
        "updateOrderReference",
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


# virtual methods
.method public abstract addCustomFieldsAdditionalData(Ljava/lang/String;)V
.end method

.method public abstract addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDI)V
.end method

.method public abstract authoriseOrder(Ljava/lang/String;)V
.end method

.method public abstract cancelOrder(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract checkPaymentOptions(Ljava/lang/String;)V
.end method

.method public abstract clearItem()V
.end method

.method public abstract createOrder(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getCapturePayment(Ljava/lang/String;)V
.end method

.method public abstract getOrderDetail(Ljava/lang/String;)V
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract paymentCheckout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract paymentOrder()V
.end method

.method public abstract refunds(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract renderCartPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract renderProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract setAdditionalData(Ljava/lang/String;)V
.end method

.method public abstract setBillingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCountry(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCurrency(Ljava/lang/String;)V
.end method

.method public abstract setCustomerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setDiscount(DLjava/lang/String;)V
.end method

.method public abstract setExpiresInMinutes(I)V
.end method

.method public abstract setInstalments(I)V
.end method

.method public abstract setLocale(Ljava/lang/String;)V
.end method

.method public abstract setOrderNumber(Ljava/lang/String;)V
.end method

.method public abstract setPaymentType(Ljava/lang/String;)V
.end method

.method public abstract setPlatform(Ljava/lang/String;)V
.end method

.method public abstract setRiskAssessment(Ljava/lang/String;)Z
.end method

.method public abstract setShippingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setShippingAmount(D)V
.end method

.method public abstract updateOrderReference(Ljava/lang/String;Ljava/lang/String;)V
.end method
