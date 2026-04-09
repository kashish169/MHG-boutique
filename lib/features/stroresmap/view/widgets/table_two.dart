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
            /* Table(
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
                    'SHOP NUMBER',
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
              border: TableBorder.all(
                color: Colors.black,
              ),
              children: [
                tableRow(
                  'WAFI',
                  '43244055',
                ),
                tableRow(
                  'GALLERY LA FAYETTE',
                  '569982161',
                ),
                tableRow(
                  'SUNSET MALL',
                  '43807003',
                ),
                tableRow(
                  'CITY WALK',
                  '43413159',
                ),
                tableRow(
                  'Mirdif City Centre ',
                  '',
                ),
                tableRow(
                  'DUBAI MALL FASHION AVENUE',
                  '42275259',
                ),
                tableRow(
                  'The Dubai Mall',
                  '43253348',
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
                  'ZERO 6',
                  '65259228',
                ),
                tableRow(
                  'ZAHIA CITY CENTRE',
                  '65468357',
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
                          "RAK",
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
                  '07 208 2606',
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
                  'FUJAIRAH MALL',
                  '92231284',
                ),
                tableRow(
                  'FUJAIRAH CITY CENTRE',
                  '92230052',
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
                  'Galleria Mall',
                  '',
                ),
                tableRow(
                  'MARINA MALL',
                  '26796656',
                ),
                tableRow(
                  'DALMA MALL',
                  '25510620',
                ),
                tableRow(
                  'Tryano YAS MALL',
                  '',
                ),
                tableRow(
                  'Bawabat Mall',
                  '25651968',
                ),
                tableRow(
                  'YAS MALL Boutique',
                  '24410157',
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
                  'AL-AIN',
                  '',
                ),
                tableRow(
                  'JIMI MALL',
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
                  'NAKHEEL MALL',
                  'Al Imam Saud Ibn Abdul Aziz branch Road, Al Mughrizat',
                ),
                tableRow(
                  'Arab Mall',
                  '',
                ),
                tableRow(
                  'RIYADH PARK',
                  'Financial City',
                ),
                tableRow(
                  'KHALEEJ MALL',
                  '',
                ),
                tableRow(
                  'Nakheel mall Dammam',
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
                  'ARRAYA Mall',
                  'Safat 13095 Kuwait',
                ),
                tableRow(
                  'THE GATE',
                  'Al Aquila, Kuwait',
                ),
                tableRow(
                  'DEBENHAMS AVENUES MALL',
                  '',
                ),
                tableRow(
                  '360 Mall podium for limited time',
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
                  'Mall of Oman',
                  '96824210093',
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
                  'DOHA FESTIVAL CITY',
                  '',
                ),
                tableRow(
                  'VENDOME Mall',
                  '',
                ),
                tableRow(
                  'PRINTEMPS MALL (consignment)',
                  '',
                ),
                tableRow(
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
