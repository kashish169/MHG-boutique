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
           /*  Table(
              children: const [
                TableRow(children: [
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
            ), */
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "UAE SHOPS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "DUBAI",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'DUBAI MALL',
                  '521140528',
                ),
                tableRow(
                  'GALLERY LAFAYETTE',
                  '42286389',
                ),
                tableRow(
                  'MIRDIF CITY CENTRE',
                  '569982064',
                ),
                tableRow(
                  'MALL OF THE EMIRATES Inside Jashnmal',
                  '',
                ),
                tableRow(
                  'DFC',
                  '',
                ),
                tableRow(
                  'Dubai Mall  FASHION AVENUE',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "SHARJAH",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'ZAHIA CITY CENTER',
                  '65463601',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "RAS AL KAIMAH",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'MANAR MALL',
                  '72281229',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "FUJAIRAH",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'FUJAIRAH CITY CENTRE',
                  '',
                ),
                tableRow(
                  'FUJAIRAH MALL',
                  '92231753',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "ABU DHABI",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'MARINA MALL',
                  '569981268',
                ),
                tableRow(
                  'DALMA MALL',
                  '',
                ),
                tableRow(
                  'YAS MALL',
                  '569982083',
                ),
                tableRow(
                  'BAWABAT Al Sharq MALL',
                  '25651968',
                ),
                tableRow(
                  'KHT Reem Mall',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "AL-AIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'BAWADI MALL',
                  '37848355',
                ),
                tableRow(
                  'AL-AIN MALL',
                  '37659750',
                ),
                tableRow(
                  'AL JIMI MALL',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "KSA SHOPS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'PANORAMA MALL',
                  'Al Mathar Ash Shamali / Riyad',
                ),
                tableRow(
                  'YASMEEN MALL',
                  'Jeddah, KSA',
                ),
                tableRow(
                  'Riyadh Park',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "KUWAIT SHOPS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'THE GATE MALL',
                  'Al Aquila, Kuwait',
                ),
                tableRow(
                  'VVV Avenues Mall ( closed)',
                  '',
                ),
                tableRow(
                  'Debenhams Avenues Mall',
                  '',
                ),
                tableRow(
                  'KHT VVV ALKOUT Mall ( Closed )',
                  '',
                ),
                tableRow(
                  '360 Mall Podium for 2 months',
                  '',
                ),
                tableRow(
                  'Harvey Nicholas Avenues Mall',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "OMAN SHOPS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'Muscat City Centre ',
                  '96824544948',
                ),
                tableRow(
                  'Muscat Grand Mall',
                  '',
                ),
                tableRow(
                  'Mall Of Oman',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "BAHRAIN SHOPS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'Avenue Mall Vavavoom Bahrain ',
                  '',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "QATAR SHOPS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                tableRow(
                  'Gulf Mall',
                  '',
                ),
                tableRow(
                  'VENDOME MALL',
                  '',
                ),
                tableRow(
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
