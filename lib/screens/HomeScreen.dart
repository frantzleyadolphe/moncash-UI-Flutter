// ignore_for_file: file_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:moncash/screens/ReceiveScreen.dart';
import 'package:moncash/screens/SettingScreen.dart';
import 'package:moncash/screens/transfertScreen.dart';
import 'package:moncash/styles/colors.dart';
import 'package:moncash/styles/fontStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;

  final List transactionRecent = [
    {
      'senderProfil': 'images/my-profil.png',
      'name': 'Adolphe Frantzley',
      'date': '30/08/2022, 08:31 AM',
      'montant': '-500 HTG'
    },
    {
      'senderProfil': 'images/my-profil.png',
      'name': 'Adolphe Frantzley',
      'date': '30/08/2022, 08:31 AM',
      'montant': '+ 1500 HTG'
    },
    {
      'senderProfil': 'images/my-profil.png',
      'name': 'Adolphe Frantzley',
      'date': '15/07/2022, 08:31 AM',
      'montant': '-800 HTG'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 20),
          //header app
          Container(
            margin: const EdgeInsets.only(right: 16, left: 16),
            child: Row(
              //sa se pou res enfant yo prna tout res espas ki rete an
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                    width: 200,
                    child: Text(
                      "Hi,\nAdolphe",
                      style: username,
                    )),
                IconButton(
                    icon: Icon(Icons.mic_rounded, color: primaryColor),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.notification_add,
                      color: primaryColor,
                    ),
                    onPressed: () {}),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/my-profil.png'),
                  ),
                )
              ],
            ),
          ),
          //card moncash with information
          Container(
            height: 233,
            margin: const EdgeInsets.only(right: 16, left: 16),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/route.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft),
              color: primaryColor,
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFE32C58), Color(0xFFFF8864)],
              ),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(right: 16, top: 30),
                  child: const Text(
                    "BALANCE",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PoMedium',
                        fontSize: 13),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(right: 16),
                  child: Text(
                    "75000.00 HTG",
                    style: balance,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 16, top: 30, bottom: 30),
                  child: Text(
                    "0000 0509 3685 7728",
                    style: TextStyle(
                        fontFamily: 'PoBold',
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    "ADOLPHE FRANTZLEY",
                    style: TextStyle(
                        fontFamily: 'PoBold',
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.only(left: 16),
                  child: const Text(
                    "Expanded account",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PoMedium',
                        fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
          //services
          Container(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 5),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("Services",
                      style: TextStyle(
                          color: blackColor,
                          fontFamily: 'PoBold',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
                //icon
                Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: textfield2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 5))
                              ]),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const transfertScreen()));
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder()),
                                child: Icon(Icons.transfer_within_a_station,
                                    color: primaryColor),
                              ),
                              Text("Transfert",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: textfield2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 5))
                              ]),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const ReceiveScreen()));
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder()),
                                child: Icon(Icons.receipt_outlined,
                                    color: primaryColor),
                              ),
                              Text("Receive",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: textfield2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 5))
                              ]),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: null,
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder()),
                                child: Icon(Icons.qr_code, color: primaryColor),
                              ),
                              Text("QR",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: textfield2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 5))
                              ]),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: null,
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder()),
                                child: Icon(Icons.wallet_giftcard,
                                    color: primaryColor),
                              ),
                              Text("Top Up",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold))
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          //history and statut
          const SizedBox(height: 5),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: textfield2,
                      blurRadius: 4.5,
                    )
                  ]),
              child: Column(
                children: [
                  //first line
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              right: 16, left: 16, top: 16),
                          alignment: Alignment.topLeft,
                          child: const Text("Account statut",
                              style: TextStyle(
                                  fontFamily: 'PoBold', fontSize: 15)),
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                                right: 16, left: 16, top: 16),
                            child: Center(
                                child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                "active",
                                style: TextStyle(
                                    fontFamily: 'PoMedium',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: whiteColor),
                              ),
                            )))
                      ],
                    ),
                  ),
                  //second line
                  Container(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "History",
                            style:
                                TextStyle(fontFamily: 'PoBold', fontSize: 15),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 197, 85, 77),
                                  fontFamily: 'PoRegular',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: transactionRecent.map((tRecent) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.only(right: 16, left: 16),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 16),
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage(tRecent['senderProfil']),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              tRecent['name'],
                                              style: const TextStyle(
                                                  fontFamily: 'PoBold',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              tRecent['date'],
                                              style: TextStyle(
                                                  color: textfield,
                                                  fontFamily: 'PoMedium',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Column(children: [
                                          Text(
                                            tRecent['montant'],
                                            style: const TextStyle(
                                              fontFamily: 'PoBold',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ])
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: whiteColor,
        color: primaryColor,
        animationDuration: const Duration(milliseconds: 300),
        items: [
          Icon(Icons.home, size: 30, color: whiteColor),
          Icon(Icons.qr_code, size: 30, color: whiteColor),
          IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingScreen())),
              icon: Icon(Icons.settings, size: 30, color: whiteColor))
        ],
        onTap: (index) {},
      ),
    );
  }
}
