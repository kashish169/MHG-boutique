import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/checkout/models/add_payment_methods_model.dart';
import 'package:mhg/features/checkout/models/order_model.dart';
import 'package:mhg/features/checkout/models/order_price_model.dart';
import 'package:mhg/features/checkout/models/payment_method_modal.dart';
import 'package:mhg/features/checkout/models/user_payment_methods_model.dart';
import 'package:mhg/features/checkout/models/remove_payment_method_model.dart';
import 'package:mhg/features/checkout/repository/checkout_repo.dart';
import 'package:mhg/features/checkout/repository/checkout_repo_imp.dart';
import 'package:mhg/features/checkout/views/pages/add_payment_method_webview_page.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/mycart/models/cart_model.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/success_order/view/pages/success_order_view.dart';
import 'package:mhg/widgets/loading_widget.dart';
import '../../../constants/app_assets.dart';

/*
  TEST CARDS 
  * 5123450000000008
  4508750015741019
  345678901234564
  4464040000000007
  4228230000000001
*/
class CheckoutController extends GetxController {
  late CheckoutRepository checkoutRepository;

  CheckoutController() {
    checkoutRepository = Get.find<CheckoutRepoImplement>();
  }

  AddPaymentMethodsModel addPaymentMethodsModel = AddPaymentMethodsModel();
  RemovePaymentMethodsModel removePaymentMethodsModel =
      RemovePaymentMethodsModel();
  // List<MyOrder> orderModel = [];
  OrderPriceModal orderPriceModal = OrderPriceModal();
  final TextEditingController codeController = TextEditingController();
  final ProfileController profileController = Get.find<ProfileController>();

  RxBool isLoading = false.obs;
  RxBool isLoadingPaymentMethods = false.obs;
  RxBool isErrorPaymentMethods = false.obs;
  RxBool isError = false.obs;
  RxBool isLoadingPromo = false.obs;
  RxBool isErrorPromo = false.obs;
  RxBool isLoadingCreateOrder = false.obs;
  RxBool isLoadingRedeem = false.obs;
  RxBool isErrorRedeem = false.obs;
  RxList<CartModel> cartItemsList = <CartModel>[].obs;
  RxInt loadingPercentage = 0.obs;
  RxBool hasRedeem = false.obs;
  RxBool isFromApply = false.obs;
  List<PaymentMethodsModel> paymentMethodsList = [];
  RxString paymentMethodValue = ''.obs;
  RxInt paymentMethodIndex = (-1).obs;
  List<UserPaymentMethodsModel> userPaymentMethodsCardsList = [];
  RxInt userPaymentMethodCardIndex = (-1).obs;
  late String responseOredrNumber;
  final userSelectedCardModel = Rxn<UserPaymentMethodsModel>();

  Future<void> getUserPaymentMethods() async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results =
          await checkoutRepository.getUserPaymentMethods();
      isLoading(false);
      results.fold(
        (l) {
          isError(true);

          AppToasts.errorToast(l.message);
          log("USER PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("USER PAYMENT METHODS RESPONSE STATUS $statusCode");

          if (statusCode == 200) {
            if (r.object["data"] != null) {
              log("USER PAYMENT METHODS ${r.object["data"]}");
              var json = r.object["data"];
              userPaymentMethodsCardsList =
                  List<UserPaymentMethodsModel>.from(json.map(
                (x) => UserPaymentMethodsModel.fromJson(x),
              ));
              for (var element in userPaymentMethodsCardsList) {
                log("______-$userSelectedCardModel");
                if (element.isDefault == 1) {
                  userSelectedCardModel.value = element;
                  log("______-$userSelectedCardModel.value");
                } else {
                  userSelectedCardModel.value = element;
                }
              }
            }
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<void> getPaymentMethods() async {
    try {
      isLoadingPaymentMethods(true);
      isErrorPaymentMethods(false);
      Either<Failure, ApiResponse> results =
          await checkoutRepository.getPaymentMethods();
      isLoadingPaymentMethods(false);
      results.fold(
        (l) {
          isErrorPaymentMethods(true);
          log("PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("PAYMENT METHODS RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            var json = r.object["data"];
            paymentMethodsList = List<PaymentMethodsModel>.from(
                json["payment_methods"]
                    .map((x) => PaymentMethodsModel.fromJson(x)));
            GetPlatform.isIOS
                ? paymentMethodsList.add(PaymentMethodsModel(
                    id: 3,
                    name: 'Apple Pay',
                    image: '',
                    slug: 'Apple Pay',
                    status: 0,
                    createdAt: DateTime.now(),
                    updatedAt: DateTime.now()))
                : null;
          } else {
            AppToasts.errorToast(message);
            isErrorPaymentMethods(true);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      isErrorPaymentMethods(true);
    }
  }

  String getCodedNumber(String? cardNumber) {
    return cardNumber!
        .substring(cardNumber.indexOf('*'))
        .replaceRange(0, 2, "");
  }

  Future<void> addPaymentMethod({bool isProfile = false}) async {
    try {
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      Either<Failure, ApiResponse> results =
          await checkoutRepository.addPaymentMethod();
      Get.back();
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("Add PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("Add PAYMENT METHODS RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            if (r.object["data"] != null) {
              addPaymentMethodsModel =
                  AddPaymentMethodsModel.fromJson(r.object);
              Get.to(
                () => AddPaymentMethodWebViewPage(
                  url: addPaymentMethodsModel.data!.link!,
                  isAddCard: true,
                  isProfile: isProfile,
                ),
              );
            }
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<void> deletePaymentMethod(paymentMethodID) async {
    try {
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      Either<Failure, ApiResponse> results =
          await checkoutRepository.deletePaymentMethod(paymentMethodID);
      Get.back();
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("DELETE PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("DELETE PAYMENT METHODS RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            removePaymentMethodsModel =
                RemovePaymentMethodsModel.fromJson(r.object);
            AppToasts.successToast(
                'Payment Method has been removed Successfully!');
            Get.back();
            getUserPaymentMethods();
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<void> setDefaultUserPaymentMethodCard(int paymentMethodID) async {
    try {
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      Either<Failure, ApiResponse> results =
          await checkoutRepository.setDefaultPaymentMethod(paymentMethodID);
      Get.back();
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("SET DEFAULT PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("SET DEFAULT PAYMENT METHODS RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            AppToasts.successToast(
                'Payment Method has been updated Successfully!');
            getUserPaymentMethods();
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<void> orderPrice({
    bool isRedeem = false,
  }) async {
    try {
      isLoadingRedeem(true);
      isErrorRedeem(false);
      if (isRedeem == false) {
        isLoadingPromo(true);
        isErrorPromo(false);
      }
      var countryId = profileController.model.value?.countryId;
      var promoCode = codeController.text.trim();
      var query = '?country=$countryId';
      if (promoCode.isNotEmpty) {
        query += "&coupon=$promoCode";
      }
      if (hasRedeem.isTrue) {
        query += "&redeem=1";
      } else {
        query += "&redeem=0";
      }
      Either<Failure, ApiResponse> results =
          await checkoutRepository.orderPrice(query);
      isLoadingRedeem(false);
      isLoadingPromo(false);
      results.fold(
        (l) {
          orderPrice();
          if (isRedeem == true && isFromApply.value == false) {
            isErrorRedeem(true);
          } else if (isFromApply.value == true && isRedeem == false) {
            isErrorPromo(true);
          }
          log("ORDER PRICE METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("ORDER PRICE METHODS RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            if (r.object["data"] != null) {
              orderPriceModal = OrderPriceModal.fromJson(r.object);
              if (isRedeem == true) {
                AppToasts.successToast(
                  "Points have been redeemed successfully",
                );
              }
            }
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<void> createOrder() async {
    try {
      var userName = profileController.model.value!.name;
      var email = profileController.model.value!.email;
      var street = profileController.model.value?.street;
      var state = profileController.model.value?.state;
      var zipCode = profileController.model.value?.zipCode;
      var countryName = profileController.model.value?.country?.name;
      var promoCode = codeController.text.trim();
      if (street!.isEmpty ||
          state!.isEmpty ||
          zipCode!.isEmpty ||
          countryName == null ||
          countryName.isEmpty) {
        AppToasts.errorToast("Please complete your personal information");
        return;
      }
      if (paymentMethodValue.isEmpty) {
        AppToasts.errorToast("Choose payment method");
        return;
      }
      if (paymentMethodValue.value == "TAP") {
        if (userSelectedCardModel.value == null) {
          AppToasts.errorToast("Choose payment method");
          return;
        }
      }
      print(paymentMethodValue.value);
      String objectData = orderModelToJson(
        OrderModel(
            billingName: userName,
            billingEmail: email,
            billingStreetAddress: street,
            billingState: state,
            billingZipcode: zipCode,
            billingCountry: countryName,
            shippingName: userName,
            shippingEmail: email,
            shippingStreetAddress: street,
            shippingState: state,
            shippingZipcode: zipCode,
            shippingCountry: countryName,
            redeem: hasRedeem.isTrue ? 1 : 0,
            coupon: promoCode,
            paymentMethod: paymentMethodValue.value == 'Apple Pay'
                ? 'TAP'
                : paymentMethodValue.value,
            onlinePaymentMethodId: userSelectedCardModel.value?.id,
            paymentPlatForm:
                paymentMethodValue.value == 'Apple Pay' ? 'apple' : ''),
      );
      log(objectData);
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      Either<Failure, ApiResponse> results =
          await checkoutRepository.createOrder(objectData);
      Get.back();
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("CREATE ORDER METHODS RESPONSE ERROR ${l.message}");
        },
        (r) async {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("CREATE ORDER METHODS RESPONSE STATUS $statusCode");
          log("${r.object}");
          if (statusCode == 201) {
            var url = r.object["data"];

            if (url == null) {
              AppToasts.errorToast(
                "You can’t use this card because it’s not 3DS enrolled",
              );
              return;
            }
            var results = await Get.to(
              () => AddPaymentMethodWebViewPage(
                title: paymentMethodValue.value == 'Apple Pay'
                    ? 'Apple Pay'
                    : "3DS Authentication",
                url: url,
                is3dAUth: true,
              ),
            );
            if (results == true) {
              log("${r.object}");
              _onOrderSuccess.call();
            }
          } else if (statusCode == 200) {
            _onOrderSuccess.call();
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  void _onOrderSuccess() async {
    Get.offAndToNamed(SuccessOrderView.route);
    Get.find<MyCartController>().getCart();
    await profileController.getProfileInfo();
    AppToasts.successToast(
      'Your order has been submitted successfully!',
    );
  }

  String getCardIcon(String cardType) {
    var card = cardType.trim().toLowerCase();
    if (card.contains('master')) {
      return AppAssets.master;
    } else if (card.contains('visa')) {
      return AppAssets.visa2;
    } else if (card.contains('google')) {
      return AppAssets.googlepay;
    } else if (card.contains('apple')) {
      return AppAssets.applepay;
    } else if (card.contains('american')) {
      return AppAssets.americanExpress;
    } else if (card.contains('mada')) {
      return AppAssets.mada;
    } else {
      return AppAssets.payment;
    }
  }

  @override
  void onInit() {
    if (App.token.isNotEmpty) {
      orderPrice();
    }
    super.onInit();
  }
}
