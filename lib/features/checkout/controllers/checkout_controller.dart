import 'dart:developer';
import 'package:country_picker/country_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/checkout/models/add_payment_methods_model.dart';
import 'package:mhg/features/checkout/models/apple_pay_result_model.dart';
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
import 'package:mhg/features/success_order/view/pages/guest_sucess_order.dart';
import 'package:mhg/features/success_order/view/pages/success_order_view.dart';
import 'package:mhg/widgets/loading_widget.dart';
import '../../../constants/app_assets.dart';
import '../../../core/api/api.dart';
import '../models/countries_cities_static_data.dart';

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
  String? selectedCity;

  List<String> citiesList = uaeCitiesList;
  List<String> omanCitiesList = omanCities;
  List<String> kuwaitCitiesList = kuwaitCities;
  List<String> saudiArabiaCitiesList = saudiArabiaCities;
  List<String> qatarCitiesList = qatarCities;
  OrderPriceModal orderPriceModal = OrderPriceModal();
  final TextEditingController codeController = TextEditingController();
  final ProfileController profileController = Get.find<ProfileController>();
  final TextEditingController guestName = TextEditingController();
  final TextEditingController guestEmail = TextEditingController();
  final TextEditingController guestNumber = TextEditingController();

  // final TextEditingController guestEmirate = TextEditingController();
  final TextEditingController guestAddress = TextEditingController();
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
  final formKey = GlobalKey<FormState>();
  final paymentCardFormKey = GlobalKey<FormState>();
  bool? isGiveAway;
  RxString guestCountryCode = '+971'.obs;
  RxString guestCountryFlag = AppAssets.flag.obs;
  RxString guestFirstCountryFlag = ''.obs;
  RxBool loadingAppleConfiguration = false.obs;
  RxBool errorAppleConfiguration = false.obs;
  Map appleConfiguration = {};
  RxBool isApplePay = false.obs;

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
            if (isGiveAway == true) {
              paymentMethodsList
                  .removeWhere((element) => element.name == 'COD');
            }
            if (App.token.isNotEmpty) {
              (GetPlatform.isIOS && App.countryId == 1)
                  ? paymentMethodsList.add(PaymentMethodsModel(
                      id: 3,
                      name: 'Apple Pay',
                      image: '',
                      slug: 'Apple Pay',
                      status: 0,
                      createdAt: DateTime.now(),
                      updatedAt: DateTime.now()))
                  : null;
            }
            if (App.countryId != 1 &&App.countryId != 2) {
              log("=========== Delete Credit Card its not uae Country");
              paymentMethodsList
                  .removeWhere((element) => element.name == 'Credit Card');
            }
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
    String query =
        'name=${guestName.text}&email=${guestEmail.text}&phone_number=${guestCountryCode.value + guestNumber.text}';
    log("guest query is ${Api.addPaymentMethod}?$query");
    try {
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      Either<Failure, ApiResponse> results = await checkoutRepository
          .addPaymentMethod(query, App.token.isEmpty ? true : false);
      Get.back();
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("Add PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          if (App.token.isEmpty) Get.back();
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

      var countryId = App.countryId; //will be used later in query
      var promoCode = codeController.text.trim();
      var query =
          '?country=$countryId'; //to be changed later when we add countries
      if (promoCode.isNotEmpty) {
        query += "&coupon=$promoCode";
      }
      if (hasRedeem.isTrue) {
        query += "&redeem=1";
      } else {
        query += "&redeem=0";
      }
      log("Called for${paymentMethodValue.value}");
      log("Country =======================$countryId");
      if (paymentMethodValue.value == 'COD') {
        query += "&cod=1";
      } else {
        query += "&cod=0";
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
          log("ORDER PRICE METHODS RESPONSE ${r.object["data"]}");
          if (statusCode == 200) {
            if (r.object["data"] != null) {
              log(orderPriceModal.toString());
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

  Future<void> createOrder({
    bool? isApplePay,
    ApplePayResultModel? applePayResultModel,
  }) async {
    try {
      var userName = profileController.model.value!.name;
      var email = profileController.model.value!.email;
      var street = profileController.model.value?.street;
      var state = profileController.model.value?.state;
      var zipCode = profileController.model.value?.zipCode;
      var countryName = profileController.model.value?.country?.name;
      var shippingPhoneNumber = profileController.model.value!.number;
      var billingPhoneNumber = profileController.model.value!.number;
      var promoCode = codeController.text.trim();
      if (street!.isEmpty ||
          state!.isEmpty ||
          zipCode!.isEmpty ||
          countryName == null ||
          countryName.isEmpty ||
          shippingPhoneNumber!.isEmpty ||
          billingPhoneNumber!.isEmpty) {
        AppToasts.errorToast("Please complete your personal information");
        return;
      }
      if (paymentMethodValue.isEmpty && (isApplePay == null || !isApplePay)) {
        AppToasts.errorToast("Choose payment method");
        return;
      }
      if (isApplePay != null && isApplePay) {
        paymentMethodValue.value = "TAP";
      }
      if (paymentMethodValue.value == "TAP" &&
          (isApplePay == null || !isApplePay)) {
        if (userSelectedCardModel.value == null) {
          AppToasts.errorToast("Choose payment card");
          return;
        }
      }
      String objectData = orderModelToJson(
        OrderModel(
          billingName: userName,
          billingEmail: email,
          billingStreetAddress: street,
          billingState: state,
          billingZipcode: '00000',
          billingCountry: countryName,
          shippingName: userName,
          shippingEmail: email,
          shippingStreetAddress: street,
          shippingState: state,
          shippingZipcode: '00000',
          billingPhoneNumber: billingPhoneNumber,
          shippingPhoneNumber: shippingPhoneNumber,
          shippingCountry: countryName,
          redeem: hasRedeem.isTrue ? 1 : 0,
          coupon: promoCode,
          paymentMethod: isApplePay == true ? 'TAP' : paymentMethodValue.value,
          onlinePaymentMethodId: userSelectedCardModel.value?.id,
          paymentPlatForm: isApplePay == true ? 'apple' : '',
          appleToken: applePayResultModel?.token.data ?? '',
          ephemeralPublicKey:
              applePayResultModel?.token.header.ephemeralPublicKey ?? '',
          signature: applePayResultModel?.token.signature ?? '',
          publicKeyHash: applePayResultModel?.token.header.publicKeyHash ?? '',
          transactionId: applePayResultModel?.token.header.transactionId ?? '',
        ),
      );
      log("ORDER MODEL");
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

  Future<void> guestCreateOrder() async {
    var formData = formKey.currentState;
    if (selectedCity == null) {
      AppToasts.errorToast('Please select an emirate');
      return;
    }
    if (formData!.validate()) {
      try {
        var userName = guestName.text.trim();
        var email = guestEmail.text.trim();
        var street = guestAddress.text.trim();
        var state = selectedCity;
        var countryName = App.countryName;
        var shippingPhoneNumber = "$guestCountryCode${guestNumber.text.trim()}";
        var billingPhoneNumber = "$guestCountryCode${guestNumber.text.trim()}";
        var promoCode = codeController.text.trim();

        if (paymentMethodValue.isEmpty) {
          AppToasts.errorToast("Choose payment method");
          return;
        }
        if (paymentMethodValue.value == "TAP") {
          if (userSelectedCardModel.value == null) {
            AppToasts.errorToast("Choose payment card");
            return;
          }
        }
        log(paymentMethodValue.value);
        String objectData = orderModelToJson(
          OrderModel(
              billingName: userName,
              billingEmail: email,
              billingStreetAddress: street,
              billingState: state,
              billingZipcode: '00000',
              billingCountry: countryName,
              shippingName: userName,
              shippingEmail: email,
              shippingStreetAddress: street,
              shippingState: state,
              shippingZipcode: '00000',
              billingPhoneNumber: billingPhoneNumber,
              shippingPhoneNumber: shippingPhoneNumber,
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
        log("GUSET ORDER DATA :$objectData");
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
                _onGuestOrderSuccess.call();
              }
            } else if (statusCode == 200) {
              _onGuestOrderSuccess.call();
            } else {
              AppToasts.errorToast(message);
            }
          },
        );
      } catch (e, s) {
        log("$e $s");
      }
    }
  }

  void _onGuestOrderSuccess() async {
    destroyGuestCart();
    Get.offAndToNamed(GuestSuccessOrderView.route);

    //  Get.find<MyCartController>().getCart();
    //  await profileController.getProfileInfo();
    AppToasts.successToast(
      'Your order has been submitted successfully!',
    );
  }

  void _onOrderSuccess() async {
    Get.offAndToNamed(SuccessOrderView.route);
    Get.find<MyCartController>().getCart();
    await profileController.getProfileInfo();
    AppToasts.successToast(
      'Your order has been submitted successfully!',
    );
  }

  Future<void> destroyGuestCart() async {
    isLoading(true);
    isError(false);
    Either<Failure, ApiResponse> results =
        await checkoutRepository.destroyGuestCart();
    isLoading(false);
    results.fold(
      (l) {
        isError(true);
        AppToasts.errorToast(l.message);
      },
      (r) {
        var statusCode = r.object["code"];
        var message = r.object["message"];
        var stats = r.object['isSuccessful'];

        if (stats == true) {
          var json = r.object["data"];

          log(r.object["data"].toString());
        } else {
          isError(true);
          AppToasts.errorToast(message);
        }
      },
    );
  }

  setCity(val) {
    selectedCity = val;
    log('$selectedCity');
    update();
  }

  selectCountry(Country country) {
    guestCountryFlag.value = country.flagEmoji;
    guestCountryCode.value = "+${country.phoneCode}";
    guestFirstCountryFlag.value = '';
    log("+${country.phoneCode}");
    log(guestCountryFlag.value);
    update();
  }

  List<String> selectCity() {
    return App.countryId == 1
        ? citiesList
        : App.countryId == 2
            ? kuwaitCitiesList
            : App.countryId == 3
                ? qatarCitiesList
                : App.countryId == 4
                    ? omanCitiesList
                    : saudiArabiaCitiesList;
  }

  Future<void> getApplePayConfiguration() async {
    try {
      loadingAppleConfiguration(true);
      errorAppleConfiguration(false);
      Either<Failure, ApiResponse> results =
          await checkoutRepository.getApplePayConfiguration();
      loadingAppleConfiguration(false);
      results.fold(
        (l) {
          errorAppleConfiguration(true);
          // AppToasts.errorToast(l.message);
          log("ApplePayConfiguration RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("ApplePayConfiguration RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            appleConfiguration = r.object["data"];
          } else {
            errorAppleConfiguration(true);
            // AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      errorAppleConfiguration(true);
      log("$e $s");
    }
  }

  @override
  void onInit() {
    // if (App.token.isNotEmpty) {
    orderPrice();
    guestCountryCode.value = App.countryCode;
    getApplePayConfiguration();
    // }
    super.onInit();
  }
}
