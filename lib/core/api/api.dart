import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../app/app.dart';

class Api {
  static String baseUrl = dotenv.env["ROOT_API"] ?? "";
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Country-Id': "${App.countryId}",
  };
  static Map<String, String> authorizedheaders = {
    'Content-Type': 'application/json',
    'Authorization': "Bearer ${App.token}",
    'Country-Id': "${App.countryId}",
  };

  // static String apiRoot = "/api/v1";//VERSION 1
  static String apiRoot = "/api/v2"; //VERSION 2

  static String countryLink = "$apiRoot/countries/index";
  static String signUp = "$apiRoot/users/auth/register";
  static String forgetPassword =
      "$apiRoot/users/auth/reset-password-request-new";
  static String resetPassword = "$apiRoot/users/auth/reset-password";
  static String otp = "$apiRoot/users/auth/send-otp";
  static String verifyOtp = "$apiRoot/users/auth/verify-reset-password-otp";
  static String loginEmail = "$apiRoot/users/auth/login";
  static String login = "$apiRoot/users/auth/login-with-phone";
  static String profile = "$apiRoot/users/profile";
  static String privacyPolicyLink = "$apiRoot/privacy-policy";
  static String termsAndConidtionsLink = "$apiRoot/terms-conditions";
  static String aboutUsLink = "$apiRoot/about-us";
  static String notifications = "$apiRoot/users/notifications";
  static String updateProfile = "$apiRoot/users/update";
  static String deleteAccount = "$apiRoot/users/delete-account";
  static String cartRoute = "$apiRoot/cart";
  static String cartItems = "$cartRoute/items";
  static String deleteCartItem = "$cartRoute/remove-item";
  static String increaseCartItem = "$cartRoute/increase-item";
  static String decreaseCartItem = "$cartRoute/decrease-item";
  static String addCartItem = "$cartRoute/add-item";
  static String addToWishList = "$apiRoot/wishlist/add-item";
  static String removeFromWishList = "$apiRoot/wishlist/remove-item";
  static String getWishListDataLink = "$apiRoot/wishlist/items";
  static String home = "$apiRoot/home";
  static String searchLink = "$apiRoot/search";
  static String filterProductLink = "$apiRoot/product/filter";
  static String userPaymentMethods = "$apiRoot/payment/tap/payment-methods";
  static String productRoute = "$apiRoot/product";
  static String productDetails = "$productRoute/product-details";
  static String addReview = "$productRoute/add-review";
  static String sendHearts = "$apiRoot/users/send-hearts";
  static String sendFeedback = "$apiRoot/users/send-feedback";
  static String storeCategories = "$apiRoot/category/store";
  static String menus = "$apiRoot/category/menus";
  static String filterProduct = "$apiRoot/product/filter";
  static String productTags = "$apiRoot/product/product-tags";
  static String productByCategory = "$apiRoot/product/category?store_id=1";
  static String getCountries = "$apiRoot/countries/index";
  static String addPaymentMethod = "$apiRoot/payment/tap/new-method-link";
  static String removePaymentMethod = "$apiRoot/payment/tap/remove-method";
  static String setDefaultPaymentMethod = '$apiRoot/payment/tap/set-default';
  static String orderPrice = '$apiRoot/order/order-price';
  static String categoriesByBrand = "$apiRoot/category/brand";
  static String createOrder = "$apiRoot/order/create";
  static String paymentMethods = "$apiRoot/order/payment-methods";
  static String myOrders = "$apiRoot/users/orders";
  static String cancelOrder = "$apiRoot/order/cancel-order";
  static String returnOrder = "$apiRoot/order/return-order";
  static String logOut = "$apiRoot/users/auth/logout";
  static String successOrderLink = "$apiRoot/order/track-order";
  static String autoComplete = "$apiRoot/product/auto-complete";
  static String destroyCart = "$apiRoot/cart/destroy-cart";
  static String applePay = "$apiRoot/payment/tap/apple-pay";

  static String allProducts = "$apiRoot/product/filter";

}
