import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'ar.dart';
import 'en.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar_AE': ar_AE,
        'en_EN': en_US,
      };
}
