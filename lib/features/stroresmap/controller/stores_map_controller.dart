import 'dart:async';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StoresMapController extends GetxController {
  double zoom = 0;
  List<Marker> markerList = [
    //Dubai
    const Marker(
      position: LatLng(25.21649080341404, 55.252997325293606),
      markerId: MarkerId('MERCATO CENTRE'),
    ),
    const Marker(
      position: LatLng(25.23469681252193, 55.43633680995242),
      markerId: MarkerId('ARABIAN CENTER'),
    ),
    const Marker(
      position: LatLng(25.23094616153552, 55.31795592973938),
      markerId: MarkerId('WAFI'),
    ),
    const Marker(
      position: LatLng(25.11815554905989, 55.20059726762036),
      markerId: MarkerId('Mall of Emirates inside Jashanmal'),
    ),
    const Marker(
      position: LatLng(25.222087361486135, 55.35278356762305),
      markerId: MarkerId('DUBAI FESTIVAL CITY (KIOSK)'),
    ),
    const Marker(
      position: LatLng(25.23717980635305, 55.42137396947124),
      markerId: MarkerId('ETTIHAD MALL'),
    ),
    const Marker(
      position: LatLng(25.197272942537467, 55.279776846179224),
      markerId: MarkerId('DUBAI MALL'),
    ),
    const Marker(
      position: LatLng(25.216406335628562, 55.40783781179989),
      markerId: MarkerId('MIRDIF CITY CENTRE'),
    ),
    const Marker(
      position: LatLng(25.197272942537467, 55.279776846179224),
      markerId: MarkerId('DUBAI MALL FASHION AVENUE'),
    ),
    //Sharjah
    const Marker(
      position: LatLng(25.31799391829856, 55.45658600610649),
      markerId: MarkerId('ZAHIA CITY CENTER'),
    ),
    const Marker(
        position: LatLng(25.399523772950023, 55.47924056392983),
        markerId: MarkerId('AJMAN City Centre')),
    //Ras al Khaimah
    const Marker(
      position: LatLng(25.7836440415882, 55.96565531181346),
      markerId: MarkerId('MANAR MALL'),
    ),
    //Fujairah
    const Marker(
      position: LatLng(25.125401747610645, 56.30228080018028),
      markerId: MarkerId('FUJAIRAH CITY CENTRE'),
    ),
    //Abo Dhabi

    const Marker(
      position: LatLng(24.46994114314047, 54.37252005961975),
      markerId: MarkerId('AL-WAHDA MALL'),
    ),
    const Marker(
      position: LatLng(24.434226929256592, 54.41369764061761),
      markerId: MarkerId('MUSHRIF MALL'),
    ),
    const Marker(
      position: LatLng(24.333162229763506, 54.52392569643805),
      markerId: MarkerId('DALMA MALL'),
    ),
    const Marker(
      position: LatLng(24.488878160325257, 54.6087541694542),
      markerId: MarkerId('YAS MALL'),
    ),
    const Marker(
      position: LatLng(24.311714674867822, 54.622067111779394),
      markerId: MarkerId('BAWABAT AL SHARQ'),
    ),
    const Marker(
      position: LatLng(24.52354772214621, 54.6711715117841),
      markerId: MarkerId('DEER FIELDS '),
    ),
    const Marker(
      position: LatLng(24.501359954502632, 54.38975604061909),
      markerId: MarkerId('ANF Galleria Mall'),
    ),

    //Al -Ain
    const Marker(
      position: LatLng(24.221757557756252, 55.78173894102669),
      markerId: MarkerId('AL-AIN MALL'),
    ),
    const Marker(
      position: LatLng(24.16020957978035, 55.807186682940504),
      markerId: MarkerId('BAWADI MALL'),
    ),
    const Marker(
      position: LatLng(24.38697815093264, 54.722653640616514),
      markerId: MarkerId('ANF MAKANI SHAMKHA'),
    ),
    const Marker(
      position: LatLng(24.2433855569398, 55.72660154061333),
      markerId: MarkerId('Al JIMI Mall'),
    ),
    const Marker(
      position: LatLng(24.109838550021905, 55.70222514061025),
      markerId: MarkerId('MAKANI ZAKHER '),
    ),

//Kingdom of saudi arabia
    const Marker(
      position: LatLng(24.692565338871113, 46.669618727129645),
      markerId: MarkerId('PANORAMA MALL'),
    ),
    const Marker(
      position: LatLng(24.781466307203143, 46.730161221354486),
      markerId: MarkerId('Grenada Mall'),
    ),
    const Marker(
      position: LatLng(21.52747100190562, 39.17735228288589),
      markerId: MarkerId('HAIFA MALL'),
    ),
    const Marker(
      position: LatLng(26.305893995475664, 50.169335606284555),
      markerId: MarkerId('DAHRAN MALL'),
    ),
    const Marker(
      position: LatLng(21.59338731135011, 39.228228225216164),
      markerId: MarkerId('YASMEEN MALL'),
    ),

    //Oman
    const Marker(
      position: LatLng(17.02264045420035, 54.06594383863183),
      markerId: MarkerId('Gardens Mall - Salalah'),
    ),
    const Marker(
      position: LatLng(23.599758494051034, 58.24883282525738),
      markerId: MarkerId('City center Al Seeb / Muscat city center'),
    ),
    const Marker(
      position: LatLng(23.590332214635772, 58.41091943399064),
      markerId: MarkerId('Avenues mall'),
    ),
    const Marker(
      position: LatLng(23.571217110900218, 58.405826310534856),
      markerId: MarkerId('Mall Of Oman'),
    ),

    //Kuwait
    const Marker(
      position: LatLng(29.175041475378784, 48.098465611900124),
      markerId: MarkerId('THE GATE'),
    ),
    const Marker(
      position: LatLng(29.3031591729988, 47.937034893115246),
      markerId: MarkerId('VVV Avenues Mall'),
    ),
    const Marker(
      position: LatLng(29.30401166757168, 47.94280937802945),
      markerId: MarkerId('Debenhams Avenues Mall'),
    ),
    const Marker(
      position: LatLng(29.30300531140275, 47.93576869656182),
      markerId: MarkerId('Harvey Nichols Avenues Mall'),
    ),
    //Qatar
    const Marker(
      position: LatLng(25.33604081367977, 51.46083140610953),
      markerId: MarkerId('ANF Gulf Mall'),
    ),
  ];
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();

  CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(25.197272942537467, 55.279776846179224), zoom: 14.32);

  CameraPosition kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
}
