import 'package:flutter/material.dart';
import 'package:mhg/features/stroresmap/view/widgets/table_row.dart';

class TableOne extends StatelessWidget {
  const TableOne({super.key});

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
                  'MERCATO CENTRE',
                  '43491326',
                ),
                tableRow(
                  '2',
                  'ARABIAN CENTER',
                  '048400150 /\n 0564705559',
                ),
                tableRow(
                  '',
                  'Mall of Emirates inside Jashanmal',
                  '',
                ),
                tableRow(
                  '4',
                  'DUBAI FESTIVAL CITY (KIOSK)',
                  '569982468',
                ),
                tableRow(
                  '5',
                  'ETTIHAD MALL',
                  '42362664 /\n 0503538507',
                ),
                tableRow(
                  '6',
                  'DUBAI MALL',
                  '569982137',
                ),
                tableRow(
                  '8',
                  'MIRDIF CITY CENTRE',
                  '42840150 -\n 0544412112',
                ),
                tableRow(
                  '10',
                  'DUBAI MALL FASHION AVENUE',
                  '42291385',
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
                  '1',
                  'MATAJER',
                  '505216191',
                ),
                tableRow(
                  '2',
                  'ZAHIA CITY CENTER',
                  '522313501',
                ),
                tableRow(
                  '3',
                  'AJMAN City Centre',
                  '67318561',
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
                  '1',
                  'MANAR MALL',
                  '72283598',
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
                  '569982093',
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
                  'AL-WAHDA MALL',
                  '24439934',
                ),
                tableRow(
                  '5',
                  'MUSHRIF MALL',
                  '26675278',
                ),
                tableRow(
                  '6',
                  'DALMA MALL',
                  '569982493',
                ),
                tableRow(
                  '7',
                  'YAS MALL',
                  '569982101',
                ),
                tableRow(
                  '8',
                  'BAWABAT AL SHARQ',
                  '25821167 /\n 0505001503',
                ),
                tableRow(
                  '9',
                  'DEER FIELDS ',
                  '25510093',
                ),
                tableRow(
                  '10',
                  'ANF Galleria Mall',
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
                  'AL-AIN MALL',
                  '',
                ),
                tableRow(
                  '2',
                  'BAWADI MALL',
                  '37659750',
                ),
                tableRow(
                  '3',
                  'ANF MAKANI SHAMKHA',
                  '',
                ),
                tableRow(
                  '4',
                  'Al JIMI Mall',
                  '',
                ),
                tableRow(
                  '5',
                  'MAKANI ZAKHER ',
                  '37370194',
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
                  "GCC COUNTRIES",
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
                  "KINGDOM OF SAUDI ARABIA (KSA)",
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
                  'PANORAMA MALL',
                  '966114826648',
                ),
                tableRow(
                  '4',
                  'Grenada Mall غرناطة',
                  'RIYADH, KSA',
                ),
                tableRow(
                  '2',
                  'Al Khaleej Mall',
                  'RIYADH, KSA',
                ),
                tableRow(
                  '3',
                  'HAIFA MALL',
                  '966122845695',
                ),
                tableRow(
                  '4',
                  'DAHRAN MALL',
                  '966138682531',
                ),
                tableRow(
                  '5',
                  'YASMEEN MALL',
                  '966126285512',
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
                  "OMAN",
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
                  'Gardens Mall - Salalah',
                  '',
                ),
                tableRow(
                  '3',
                  'City center Al Seeb / Muscat city center',
                  '',
                ),
                tableRow(
                  '',
                  'Sahara',
                  '',
                ),
                tableRow(
                  '4',
                  'Avenues mall',
                  '',
                ),
                tableRow(
                  '5',
                  'Mall Of Oman',
                  '96824593288',
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
                  "KUWAIT",
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
                  'THE GATE',
                  '96565737449',
                ),
                tableRow(
                  '2',
                  'VVV Avenues Mall',
                  '96522283943',
                ),
                tableRow(
                  '3',
                  'Debenhams Avenues Mall',
                  '96522283008',
                ),
                tableRow(
                  '5',
                  'Harvey Nichols Avenues Mall',
                  '96522283008',
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
                  'ANF Gulf Mall',
                  '97466783270',
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
