import 'dart:developer';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import '../../features/product_details/view/pages/product_details_page.dart';

class DeepLinkSevice {
  static Future<String> createDynamicLink(bool short, String id) async {
    FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: "https://mhg.page.link",
      link: Uri.parse("https://mhg.page.link/product?id=$id"),
      androidParameters: const AndroidParameters(
        packageName: "com.starttech.mhg",
        minimumVersion: 0,
      ),
      iosParameters: const IOSParameters(
        bundleId: "com.starttech.mhg",
      ),
    );
    Uri url;
    if (short) {
      final ShortDynamicLink shortLink =
          await dynamicLinks.buildShortLink(parameters);
      url = shortLink.shortUrl;
    } else {
      url = await dynamicLinks.buildLink(parameters);
    }
    print(url);
    return url.toString();
  }

  static Future<void> initDynamicLink() async {
    PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    if (data != null) {
      print("deep link: $data");
      final Uri uri = data.link;
      print("dynamic Link Data : $uri");
      var isService = uri.pathSegments.contains('product');
      if (isService) {
        var id = uri.queryParameters['id'];
        if (id != null) {
          Get.toNamed(
            ProductDetailsPage.routeName,
            arguments: {
              "id": int.parse(id),
              "name": '',
              "fromArrival": false,
            },
          );
        }
      }
    }
    FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
      final Uri uri = dynamicLinkData.link;
      print("dynamic Link Data: $uri");
      var isService = uri.pathSegments.contains('product');
      if (isService) {
        var id = uri.queryParameters['id'];
        if (id != null) {
          Get.toNamed(
            ProductDetailsPage.routeName,
            arguments: {
              "id": int.parse(id),
              "name": '',
              "fromArrival": false,
            },
          );
        }
      }
    }).onError((error) {
      print('onLink error');
      print(error.message);
    });
  }

  static Future<void> shareProduct(int id) async {
    try {
      String linkMessage = await createDynamicLink(
        false,
        '$id',
      );
      await Share.share(linkMessage);
    } catch (e, s) {
      log("$e $s");
    }
  }
}
