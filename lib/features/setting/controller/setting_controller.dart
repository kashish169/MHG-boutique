
import 'package:get/get.dart';

class SettingController extends GetxController {
   RxString selectedLanguage='English'.obs;
  RxList languagesList = ['English','Arabic'].obs;
   RxString selectedCountry='UAE'.obs;
   RxList countriesList = ['UAE','FRANCE'].obs;
   RxBool notificationAllowed=false.obs;
   RxBool adsAllowed=false.obs;
}
