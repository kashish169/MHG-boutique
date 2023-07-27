import 'package:flutter/material.dart';
import 'package:mhg/features/stroresmap/view/widgets/table_row.dart';

class TableTwo extends StatelessWidget {
  const TableTwo({super.key});

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
                    'SHOP NUMBER',
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
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  '1',
                  'WAFI',
                  '43244055',
                ),
                tableRow(
                  '2',
                  'GALLERY LA FAYETTE',
                  '569982161',
                ),
                tableRow(
                  '3',
                  'SUNSET MALL',
                  '43807003',
                ),
                tableRow(
                  '4',
                  'CITY WALK',
                  '43413159',
                ),
                tableRow(
                  '5',
                  'Mirdif City Centre ',
                  '',
                ),
                tableRow(
                  '6',
                  'DUBAI MALL FASHION AVENUE',
                  '42275259',
                ),
                tableRow(
                  '7',
                  'The Dubai Mall',
                  '43253348',
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
                  '2',
                  'ZERO 6',
                  '65259228',
                ),
                tableRow(
                  '3',
                  'ZAHIA CITY CENTRE',
                  '65468357',
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
                  "RAK",
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
                  '07 208 2606',
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
                  'FUJAIRAH MALL',
                  '92231284',
                ),
                tableRow(
                  '2',
                  'FUJAIRAH CITY CENTRE',
                  '92230052',
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
                  'Galleria Mall',
                  '',
                ),
                tableRow(
                  '2',
                  'MARINA MALL',
                  '26796656',
                ),
                tableRow(
                  '3',
                  'DALMA MALL',
                  '25510620',
                ),
                tableRow(
                  '4',
                  'Tryano YAS MALL',
                  '',
                ),
                tableRow(
                  '5',
                  'Bawabat Mall',
                  '25651968',
                ),
                tableRow(
                  '6',
                  'YAS MALL Boutique',
                  '24410157',
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
                  'AL-AIN',
                  '',
                ),
                tableRow(
                  '2',
                  'JIMI MALL',
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
                  '1',
                  'NAKHEEL MALL',
                  'Al Imam Saud Ibn Abdul Aziz branch Road, Al Mughrizat',
                ),
                tableRow(
                  '2',
                  'Arab Mall',
                  '',
                ),
                tableRow(
                  '4',
                  'RIYADH PARK',
                  'Financial City',
                ),
                tableRow(
                  '5',
                  'KHALEEJ MALL',
                  '',
                ),
                tableRow(
                  '7',
                  'Nakheel mall Dammam',
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
                  "KWT-SHOPS",
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
                  'ARRAYA Mall',
                  'Safat 13095 Kuwait',
                ),
                tableRow(
                  '4',
                  'THE GATE',
                  'Al Aquila, Kuwait',
                ),
                tableRow(
                  '5',
                  'DEBENHAMS AVENUES MALL',
                  '',
                ),
                tableRow(
                  '6',
                  '360 Mall podium for limited time',
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
                  'Mall of Oman',
                  '96824210093',
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
                  "QATAR SHOP",
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
                  'DOHA FESTIVAL CITY',
                  '',
                ),
                  tableRow(
                  '2',
                  'VENDOME Mall',
                  '',
                ),
                  tableRow(
                  '4',
                  'PRINTEMPS MALL (consignment)',
                  '',
                ),
                  tableRow(
                  '5',
                  'SECRET NOTE VENDOM MALL (consignment)',
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
