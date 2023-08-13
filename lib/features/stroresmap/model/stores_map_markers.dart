

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/stroresmap/controller/stores_map_controller.dart';
import 'package:mhg/features/stroresmap/view/widgets/stores_info_bottom_sheet.dart';

import '../view/widgets/stores_bottom_sheet_call.dart';

StoresMapController controller = Get.find();
List<Marker> markerListData = [
  //Dubai
  Marker(
      position: const LatLng(25.21649080341404, 55.252997325293606),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.21649080341404, 55.252997325293606));
       showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('MERCATO CENTRE'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 43491326',
          title: 'MERCATO CENTRE ',
          onTap: () {
            AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(25.23469681252193, 55.43633680995242),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.23469681252193, 55.43633680995242));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('ARABIAN CENTER'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 048400150 / 0564705559',
          title: 'ARABIAN CENTER',
          onTap: () {
            showCallBottomSheet(
              firstNumber: '048400150',
              secondNumber: '0564705559',
            );
          })),
  Marker(
      position: const LatLng(25.23094616153552, 55.31795592973938),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.23094616153552, 55.31795592973938));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , ]);
      },
      markerId: const MarkerId('WAFI'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 432443347',
          title: 'WAFI',
          onTap: () {
            AppHelper.launchURL("432443347", 'tel');
          })),
  Marker(
      position: const LatLng(25.11815554905989, 55.20059726762036),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.11815554905989, 55.20059726762036));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('Mall of Emirates inside Jashanmal'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'Mall of Emirates inside Jashanmal',
          onTap: () {
            //  AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(25.222087361486135, 55.35278356762305),
      markerId: const MarkerId('DUBAI FESTIVAL CITY (KIOSK)'),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.222087361486135, 55.35278356762305));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 569982468',
          title: 'DUBAI FESTIVAL CITY (KIOSK)',
          onTap: () {
            AppHelper.launchURL("569982468", 'tel');
          })),
  Marker(
      position: const LatLng(25.23717980635305, 55.42137396947124),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.23717980635305, 55.42137396947124));
              showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('ETTIHAD MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 42362664 / 0503538507',
          title: 'ETTIHAD MALL',
          onTap: () {
            showCallBottomSheet(
              firstNumber: '42362664',
              secondNumber: '0503538507',
            );
          })),
  Marker(
      position: const LatLng(25.197272942537467, 55.279776846179224),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.197272942537467, 55.279776846179224));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT']);
      },
      markerId: const MarkerId('DUBAI MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 42362664 / 0503538508',
          title: 'DUBAI MALL',
          onTap: () {
            showCallBottomSheet(
              firstNumber: '42362664',
              secondNumber: '0503538508',
            );
          })),
  Marker(
      position: const LatLng(25.216406335628562, 55.40783781179989),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.216406335628562, 55.40783781179989));
             showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT']);
      },
      markerId: const MarkerId('MIRDIF CITY CENTRE'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 42840150 / 0544412112',
          title: 'MIRDIF CITY CENTRE',
          onTap: () {
            showCallBottomSheet(
              firstNumber: '42840150',
              secondNumber: '0544412112',
            );
          })),
  Marker(
      position: const LatLng(25.197272942537467, 55.279776846179224),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.197272942537467, 55.279776846179224));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' ]);
      },
      markerId: const MarkerId('DUBAI MALL FASHION AVENUE'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 42291385',
          title: 'DUBAI MALL FASHION AVENUE',
          onTap: () {
            AppHelper.launchURL("42291385", 'tel');
          })),
  //Sharjah
  Marker(
      position: const LatLng(25.31799391829856, 55.45658600610649),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.31799391829856, 55.45658600610649));
              showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('ZAHIA CITY CENTER'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 522313501',
          title: 'ZAHIA CITY CENTER',
          onTap: () {
            AppHelper.launchURL("522313501", 'tel');
          })),
  Marker(
      position: const LatLng(25.399523772950023, 55.47924056392983),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.399523772950023, 55.47924056392983));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('AJMAN City Centre'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 67318561',
          title: 'AJMAN City Centre',
          onTap: () {
            AppHelper.launchURL("67318561", 'tel');
          })),
  //Ras al Khaimah
  Marker(
      position: const LatLng(25.7836440415882, 55.96565531181346),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.7836440415882, 55.96565531181346));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT']);
      },
      markerId: const MarkerId('MANAR MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 72283598',
          title: 'MANAR MALL',
          onTap: () {
            AppHelper.launchURL("72283598", 'tel');
          })),
  //Fujairah
  Marker(
      position: const LatLng(25.125401747610645, 56.30228080018028),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.125401747610645, 56.30228080018028));
            showStoresBottomSheet(['ANFASIC DOKHOON'  , 'KHALTAT']);
      },
      markerId: const MarkerId('FUJAIRAH CITY CENTRE'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 569982093',
          title: 'FUJAIRAH CITY CENTRE',
          onTap: () {
            AppHelper.launchURL("569982093", 'tel');
          })),
  //Abo Dhabi

  Marker(
      position: const LatLng(24.46994114314047, 54.37252005961975),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.46994114314047, 54.37252005961975));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('AL-WAHDA MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 24439934',
          title: 'AL-WAHDA MALL',
          onTap: () {
            AppHelper.launchURL("24439934", 'tel');
          })),
  Marker(
      position: const LatLng(24.434226929256592, 54.41369764061761),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.434226929256592, 54.41369764061761));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('MUSHRIF MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 26675278',
          title: 'MUSHRIF MALL',
          onTap: () {
            AppHelper.launchURL("26675278", 'tel');
          })),
  Marker(
      position: const LatLng(24.333162229763506, 54.52392569643805),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(224.333162229763506, 54.52392569643805));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT' , 'HOB']);
      },
      markerId: const MarkerId('DALMA MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 569982493',
          title: 'DALMA MALL',
          onTap: () {
            AppHelper.launchURL("569982493", 'tel');
          })),
  Marker(
      position: const LatLng(24.488878160325257, 54.6087541694542),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.488878160325257, 54.6087541694542));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT' , 'HOB']);
      },
      markerId: const MarkerId('YAS MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 569982101',
          title: 'YAS MALL',
          onTap: () {
            AppHelper.launchURL("569982101", 'tel');
          })),
  Marker(
      position: const LatLng(24.311714674867822, 54.622067111779394),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.311714674867822, 54.622067111779394));
            showStoresBottomSheet(['ANFASIC DOKHOON' , 'KHALTAT']);
      },
      markerId: const MarkerId('BAWABAT AL SHARQ'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 25821167 / 0505001503',
          title: 'BAWABAT AL SHARQ',
          onTap: () {
            showCallBottomSheet(
              firstNumber: '25821167',
              secondNumber: '0505001503',
            );
          })),
  Marker(
      position: const LatLng(24.52354772214621, 54.6711715117841),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.52354772214621, 54.6711715117841));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('DEER FIELDS '),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 25510093',
          title: 'DEER FIELDS',
          onTap: () {
            AppHelper.launchURL("25510093", 'tel');
          })),
  Marker(
      position: const LatLng(24.501359954502632, 54.38975604061909),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.501359954502632, 54.38975604061909));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('ANF Galleria Mall'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'ANF Galleria Mall',
          onTap: () {
            // AppHelper.launchURL("43491326", 'tel');
          })),

  //Al -Ain
  Marker(
      position: const LatLng(24.221757557756252, 55.78173894102669),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.221757557756252, 55.78173894102669));
            showStoresBottomSheet(['ANFASIC DOKHOON' , 'KHALTAT']);
      },
      markerId: const MarkerId('AL-AIN MALL'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'AL-AIN MALL',
          onTap: () {
            //  AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(24.16020957978035, 55.807186682940504),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.16020957978035, 55.807186682940504));
            showStoresBottomSheet(['ANFASIC DOKHOON' , 'KHALTAT']);
      },
      markerId: const MarkerId('BAWADI MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 37659750',
          title: 'BAWADI MALL',
          onTap: () {
            AppHelper.launchURL("37659750", 'tel');
          })),
  Marker(
      position: const LatLng(24.38697815093264, 54.722653640616514),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.38697815093264, 54.722653640616514));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('ANF MAKANI SHAMKHA'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'ANF MAKANI SHAMKHA',
          onTap: () {
            //  AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(24.2433855569398, 55.72660154061333),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.2433855569398, 55.72660154061333));
            showStoresBottomSheet(['ANFASIC DOKHOON'  , 'KHALTAT']);
      },
      markerId: const MarkerId('Al JIMI Mall'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'Al JIMI Mall',
          onTap: () {
            // AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(24.109838550021905, 55.70222514061025),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.109838550021905, 55.70222514061025));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('MAKANI ZAKHER '),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 37370194',
          title: 'MAKANI ZAKHER',
          onTap: () {
            AppHelper.launchURL("37370194", 'tel');
          })),

//Kingdom of saudi arabia
  Marker(
      position: const LatLng(24.692565338871113, 46.669618727129645),
      markerId: const MarkerId('PANORAMA MALL'),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.692565338871113, 46.669618727129645));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 966114826648',
          title: 'PANORAMA MALL',
          onTap: () {
            AppHelper.launchURL("966114826648", 'tel');
          })),
  Marker(
      position: const LatLng(24.781466307203143, 46.730161221354486),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(24.781466307203143, 46.730161221354486));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('Grenada Mall'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'Grenada Mall',
          onTap: () {
            // AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(21.52747100190562, 39.17735228288589),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(21.52747100190562, 39.17735228288589));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('HAIFA MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 966122845695',
          title: 'HAIFA MALL',
          onTap: () {
            AppHelper.launchURL("966122845695", 'tel');
          })),
  Marker(
      position: const LatLng(26.305893995475664, 50.169335606284555),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(26.305893995475664, 50.169335606284555));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('DAHRAN MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 966138682531',
          title: 'DAHRAN MALL',
          onTap: () {
            AppHelper.launchURL("966138682531", 'tel');
          })),
  Marker(
      position: const LatLng(21.59338731135011, 39.228228225216164),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(21.59338731135011, 39.228228225216164));
            showStoresBottomSheet(['ANFASIC DOKHOON'  , 'KHALTAT']);
      },
      markerId: const MarkerId('YASMEEN MALL'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 966126285512',
          title: 'YASMEEN MALL',
          onTap: () {
            AppHelper.launchURL("966126285512", 'tel');
          })),

  //Oman
  Marker(
      position: const LatLng(17.02264045420035, 54.06594383863183),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(17.02264045420035, 54.06594383863183));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('Gardens Mall - Salalah'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'Gardens Mall - Salalah',
          onTap: () {
            //  AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(23.599758494051034, 58.24883282525738),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(23.599758494051034, 58.24883282525738));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,]);
      },
      markerId: const MarkerId('City center Al Seeb / Muscat city center'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'City center Al Seeb / Muscat city center',
          onTap: () {
            // AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(23.590332214635772, 58.41091943399064),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(23.590332214635772, 58.41091943399064));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT']);
      },
      markerId: const MarkerId('Avenues mall'),
      infoWindow: InfoWindow(
          // snippet: 'Tap here to call us 569982137',
          title: 'Avenues mall',
          onTap: () {
            //  AppHelper.launchURL("43491326", 'tel');
          })),
  Marker(
      position: const LatLng(23.571217110900218, 58.405826310534856),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(23.571217110900218, 58.405826310534856));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT']);
      },
      markerId: const MarkerId('Mall Of Oman'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 966126285512',
          title: 'Mall Of Oman',
          onTap: () {
            AppHelper.launchURL("966126285512", 'tel');
          })),

  //Kuwait
  Marker(
      position: const LatLng(29.175041475378784, 48.098465611900124),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(29.175041475378784, 48.098465611900124));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT']);
      },
      markerId: const MarkerId('THE GATE'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 96565737449',
          title: 'THE GATE',
          onTap: () {
            AppHelper.launchURL("96565737449", 'tel');
          })),
  Marker(
      position: const LatLng(29.3031591729988, 47.937034893115246),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(29.3031591729988, 47.937034893115246));
            showStoresBottomSheet(['ANFASIC DOKHOON'  , 'KHALTAT']);
      },
      markerId: const MarkerId('VVV Avenues Mall'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 96522283943',
          title: 'VVV Avenues Mall',
          onTap: () {
            AppHelper.launchURL("96522283943", 'tel');
          })),
  Marker(
      position: const LatLng(29.30401166757168, 47.94280937802945),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(29.30401166757168, 47.94280937802945));
            showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT']);
      },
      markerId: const MarkerId('Debenhams Avenues Mall'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 96522283008',
          title: 'Debenhams Avenues Mall',
          onTap: () {
            AppHelper.launchURL("96522283008", 'tel');
          })),
  Marker(
      position: const LatLng(29.30300531140275, 47.93576869656182),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(29.30300531140275, 47.93576869656182));
            showStoresBottomSheet(['ANFASIC DOKHOON' ]);
      },
      markerId: const MarkerId('Harvey Nichols Avenues Mall'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 96522283008',
          title: 'Harvey Nichols Avenues Mall',
          onTap: () {
            AppHelper.launchURL("96522283008", 'tel');
          })),
  //Qatar
  Marker(
      position: const LatLng(25.33604081367977, 51.46083140610953),
      onTap: () {
        controller
            .tapOnMarker(const LatLng(25.33604081367977, 51.46083140610953));
             showStoresBottomSheet(['ANFASIC DOKHOON' ,'HIND AL OUD' , 'KHALTAT']);
      },
      markerId: const MarkerId('ANF Gulf Mall'),
      infoWindow: InfoWindow(
          snippet: 'Tap here to call us 97466783270',
          title: 'ANF Gulf Mall',
          onTap: () {
            AppHelper.launchURL("97466783270", 'tel');
          })),
];
