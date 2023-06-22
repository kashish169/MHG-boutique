import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../app/app.dart';

class Api {
  static String baseUrl = dotenv.env["ROOT_API"] ?? "";
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static Map<String, String> authorizedheaders = {
    'Content-Type': 'application/json',
    'Authorization': "Bearer ${App.token}",
  };
  static String signUp = "/api/v1/users/auth/register";
  static String loginEmail = "/api/v1/users/auth/login";
  static String login = "/api/v1/users/auth/login-with-phone";
  static String profile = "/api/v1/users/profile";
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
  static String paymentMethods = "/api/v1/payment/tap/payment-methods";
  static String productRoute = "/api/v1/product";
  static String productDetails = "$productRoute/product-details";
  static String storeCategories = "/api/v1/category/store";
  static String menus = "/api/v1/category/menus";
  static String filterProduct = "/api/v1/product/filter?store_id=1";
  static String productTags = "/api/v1/product/product-tags";
  static String productByCategory = "/api/v1/product/category?store_id=1";
  static String getCountries = "/api/v1/countries/index";
  static String addPaymentMethod = "/api/v1/payment/tap/new-method-link";
  static String removePaymentMethod = "/api/v1/payment/tap/remove-method";
  static String setDefaultPaymentMethod = '/api/v1/payment/tap/set-default';
}
