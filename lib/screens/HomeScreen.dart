// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:moncash/styles/colors.dart';
import 'package:moncash/styles/fontStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 10),
          //header app
          Container(
            height: 60,
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
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/my-profil.png'),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
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
              borderRadius: BorderRadius.circular(15),
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
                    "EXPANDED ACCOUNT",
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
            padding: const EdgeInsets.only(right: 16, left: 16, top: 14),
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
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                                  offset: const Offset(0, 5)
                                  )
                            ]),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()),
                          child: Icon(Icons.transfer_within_a_station,color: primaryColor),
                        ),
                         Text("Transfert",style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold
                          ))
                          ],
                        )
                      ),
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
                          child: Icon(Icons.receipt_outlined, color: primaryColor),
                        ),
                           Text("Receive", style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold
                          ))
                          ],
                        )
                      ),
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
                        child:Column(
                          children: [
                            ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()),
                          child: Icon(Icons.qr_code, color: primaryColor),
                        ),
                         Text("QR", style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold
                          ))
                          ],
                        )
                      ),
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
                          child: Icon(Icons.wallet_giftcard,color: primaryColor),
                        ),
                           Text("Top Up", style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold
                          ))
                          ],
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          //history and statut
          const SizedBox(height: 15),
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                color: whiteColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
              ),
              boxShadow: [
                  BoxShadow(
                      color: textfield2,
                      blurRadius: 4.5,
                      )
        ]),
            ),
            )
        ],
      )),
    );
  }
}
