import 'package:flutter/material.dart';
import 'package:mhg/features/stroresmap/view/widgets/table_row.dart';

class TableThree extends StatelessWidget {
  const TableThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Table(
              children: const [
                TableRow(children: [
                  Text(
                    'NO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'MALL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'PHONE NUMBER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ]),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "UAE-SHOPS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "DUBAI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'DUBAI MALL',
                  '521140528',
                ),
                tableRow(
                  '2',
                  'GALLERY LAFAYETTE',
                  '42286389',
                ),
                tableRow(
                  '3',
                  'MIRDIF CITY CENTRE',
                  '569982064',
                ),
                tableRow(
                  '5',
                  'MALL OF THE EMIRATES Inside Jashnmal',
                  '',
                ),
                tableRow(
                  '6',
                  'DFC',
                  '',
                ),
                tableRow(
                  '7',
                  'Dubai Mall  FASHION AVENUE',
                  '',
                ),
                
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "SHARJAH",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '3',
                  'ZAHIA CITY CENTER',
                  '65463601',
                ),
               
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "RAS AL KAIMAH",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '2',
                  'MANAR MALL',
                  '72281229',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "FUJAIRAH",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'FUJAIRAH CITY CENTRE',
                  '',
                ),
                  tableRow(
                  '2',
                  'FUJAIRAH MALL',
                  '92231753',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "ABU DHABI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'MARINA MALL',
                  '569981268',
                ),
                tableRow(
                  '2',
                  'DALMA MALL',
                  '',
                ),
                tableRow(
                  '3',
                  'YAS MALL',
                  '569982083',
                ),
                tableRow(
                  '5',
                  'BAWABAT Al Sharq MALL',
                  '25651968',
                ),
              
                tableRow(
                  '7',
                  'KHT Reem Mall',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "AL-AIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'BAWADI MALL',
                  '37848355',
                ),
                tableRow(
                  '2',
                  'AL-AIN MALL',
                  '37659750',
                ),
                tableRow(
                  '3',
                  'AL JIMI MALL',
                  '',
                ),
               
              ],
            ),
            const SizedBox(
              height: 20,
            ),
       
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "KSA-SHOPS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '2',
                  'PANORAMA MALL',
                  'Al Mathar Ash Shamali / Riyad',
                ),
                tableRow(
                  '3',
                  'YASMEEN MALL',
                  'Jeddah, KSA',
                ),
                tableRow(
                  '4',
                  'Riyadh Park',
                  '',
                ),
               
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "KUWAIT-SHOPS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'THE GATE MALL',
                  'Al Aquila, Kuwait',
                ),
                tableRow(
                  '2',
                  'VVV Avenues Mall ( closed)',
                  '',
                ),
                tableRow(
                  '3',
                  'Debenhams Avenues Mall',
                  '',
                ),
                tableRow(
                  '4',
                  'KHT VVV ALKOUT Mall ( Closed )',
                  '',
                ),
                tableRow(
                  '4',
                  '360 Mall Podium for 2 months',
                  '',
                ),
                 tableRow(
                  '5',
                  'Harvey Nicholas Avenues Mall',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "OMAN-SHOPS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'Muscat City Centre ',
                  '96824544948',
                ),
                tableRow(
                  '2',
                  'Muscat Grand Mall',
                  '',
                ),
                tableRow(
                  '3',
                  'Mall Of Oman',
                  '',
                ),
                
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "BAHRAIN SHOP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'Avenue Mall Vavavoom Bahrain ',
                  '',
                ),
              
              ],
            ),
              const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "QATAR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'Gulf Mall',
                  '',
                ),
                  tableRow(
                  '2',
                  'VENDOME MALL',
                  '',
                ),
                  tableRow(
                  '3',
                  'DOHA FESTIVAL CITY',
                  '',
                ),
              ],
            ),
              const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
