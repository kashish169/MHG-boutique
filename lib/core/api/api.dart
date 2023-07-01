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
  };
  static String countryLink = "/api/v1/countries/index";
  static String signUp = "/api/v1/users/auth/register";
  static String forgetPassword = "/api/v1/users/auth/reset-password-request";
  static String otp = "/api/v1/users/auth/send-otp";
  static String loginEmail = "/api/v1/users/auth/login";
  static String login = "/api/v1/users/auth/login-with-phone";
  static String profile = "/api/v1/users/profile";
  static String privacyPolicyLink = "/api/v1/privacy-policy";
  static String termsAndConidtionsLink = "/api/v1/terms-conditions";
  static String aboutUsLink = "/api/v1/about-us";
  static String notifications = "/api/v1/users/notifications";
  static String updateProfile = "/api/v1/users/update";
  static String deleteAccount = "/api/v1/users/delete-account";
  static String cartRoute = "/api/v1/cart";
  static String cartItems = "$cartRoute/items";
  static String deleteCartItem = "$cartRoute/remove-item";
  static String increaseCartItem = "$cartRoute/increase-item";
  static String decreaseCartItem = "$cartRoute/decrease-item";
  static String addCartItem = "$cartRoute/add-item";
  static String addToWishList = "/api/v1/wishlist/add-item";
  static String removeFromWishList = "/api/v1/wishlist/remove-item";
  static String getWishListDataLink = "/api/v1/wishlist/items";
  static String home = "/api/v1/home";
  static String searchLink = "/api/v1/search";
  static String filterProductLink = "/api/v1/product/filter";
  static String userPaymentMethods = "/api/v1/payment/tap/payment-methods";
  static String productRoute = "/api/v1/product";
  static String productDetails = "$productRoute/product-details";
  static String addReview = "$productRoute/add-review";
  static String sendHearts = "/api/v1/users/send-hearts";
  static String storeCategories = "/api/v1/category/store";
  static String menus = "/api/v1/category/menus";
  static String filterProduct = "/api/v1/product/filter?store_id=1";
  static String productTags = "/api/v1/product/product-tags";
  static String productByCategory = "/api/v1/product/category?store_id=1";
  static String getCountries = "/api/v1/countries/index";
  static String addPaymentMethod = "/api/v1/payment/tap/new-method-link";
  static String removePaymentMethod = "/api/v1/payment/tap/remove-method";
  static String setDefaultPaymentMethod = '/api/v1/payment/tap/set-default';
  static String orderPrice = '/api/v1/order/order-price';
  static String categoriesByBrand = "/api/v1/category/brand";
  static String createOrder = "/api/v1/order/create";
  static String paymentMethods = "/api/v1/order/payment-methods";
  static String myOrders = "/api/v1/users/orders";
  static String logOut = "/api/v1/users/auth/logout";
}
