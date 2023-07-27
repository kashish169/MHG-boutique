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
                 
                  'MERCATO CENTRE',
                  '43491326',
                ),
                tableRow(
                 
                  'ARABIAN CENTER',
                  '048400150 /\n 0564705559',
                ),
                tableRow(
                 
                  'Mall of Emirates inside Jashanmal',
                  '',
                ),
                tableRow(
                
                  'DUBAI FESTIVAL CITY (KIOSK)',
                  '569982468',
                ),
                tableRow(
                 
                  'ETTIHAD MALL',
                  '42362664 /\n 0503538507',
                ),
                tableRow(
               
                  'DUBAI MALL',
                  '569982137',
                ),
                tableRow(
                  
                  'MIRDIF CITY CENTRE',
                  '42840150 -\n 0544412112',
                ),
                tableRow(
             
                  'DUBAI MALL FASHION AVENUE',
                  '42291385',
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
                
                  'MATAJER',
                  '505216191',
                ),
                tableRow(
                 
                  'ZAHIA CITY CENTER',
                  '522313501',
                ),
                tableRow(
                 
                  'AJMAN City Centre',
                  '67318561',
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
                          "RAS AL KAIMA",
                          
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
                  '72283598',
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
                  '569982093',
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
               
                  'AL-WAHDA MALL',
                  '24439934',
                ),
                tableRow(
                 
                  'MUSHRIF MALL',
                  '26675278',
                ),
                tableRow(
                 
                  'DALMA MALL',
                  '569982493',
                ),
                tableRow(
                
                  'YAS MALL',
                  '569982101',
                ),
                tableRow(
                
                  'BAWABAT AL SHARQ',
                  '25821167 /\n 0505001503',
                ),
                tableRow(
                
                  'DEER FIELDS ',
                  '25510093',
                ),
                tableRow(
               
                  'ANF Galleria Mall',
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
           
                  'AL-AIN MALL',
                  '',
                ),
                tableRow(
             
                  'BAWADI MALL',
                  '37659750',
                ),
                tableRow(
               
                  'ANF MAKANI SHAMKHA',
                  '',
                ),
                tableRow(
                
                  'Al JIMI Mall',
                  '',
                ),
                tableRow(
               
                  'MAKANI ZAKHER ',
                  '37370194',
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
                          "GCC COUNTRIES",
                          
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
                          "KINGDOM OF SAUDI ARABIA (KSA)",
                          
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
                  '966114826648',
                ),
                tableRow(
               
                  'Grenada Mall غرناطة',
                  'RIYADH, KSA',
                ),
                tableRow(
                 
                  'Al Khaleej Mall',
                  'RIYADH, KSA',
                ),
                tableRow(
               
                  'HAIFA MALL',
                  '966122845695',
                ),
                tableRow(
               
                  'DAHRAN MALL',
                  '966138682531',
                ),
                tableRow(
                 
                  'YASMEEN MALL',
                  '966126285512',
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
                          "OMAN",
                          
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
                 
                  'Gardens Mall - Salalah',
                  '',
                ),
                tableRow(
                
                  'City center Al Seeb / Muscat city center',
                  '',
                ),
                tableRow(
             
                  'Sahara',
                  '',
                ),
                tableRow(
              
                  'Avenues mall',
                  '',
                ),
                tableRow(
              
                  'Mall Of Oman',
                  '96824593288',
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
                          "KUWAIT",
                          
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
             
                  'THE GATE',
                  '96565737449',
                ),
                tableRow(
              
                  'VVV Avenues Mall',
                  '96522283943',
                ),
                tableRow(
               
                  'Debenhams Avenues Mall',
                  '96522283008',
                ),
                tableRow(
            
                  'Harvey Nichols Avenues Mall',
                  '96522283008',
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
                          "QATAR",
                          
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
