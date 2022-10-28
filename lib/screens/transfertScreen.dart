// ignore_for_file: file_names, camel_case_types

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moncash/screens/OtpScreen.dart';
import 'package:moncash/styles/colors.dart';
import 'package:moncash/styles/fontStyles.dart';

class transfertScreen extends StatefulWidget {
  const transfertScreen({Key? key}) : super(key: key);

  @override
  State<transfertScreen> createState() => _transfertScreenState();
}

class _transfertScreenState extends State<transfertScreen> {
  final List favoriteContact = [
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
    {'picAvatar': 'images/my-profil.png', 'nom': 'Ado'},
  ];

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: whiteColor,
          leading: IconButton(
              icon: SvgPicture.asset('icons/arrowBack.svg',
                  color: primaryColor, height: 30, width: 30),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            "Transfert",
            style: TextStyle(
                color: blackColor,
                fontFamily: 'PoMedium',
                fontWeight: FontWeight.w700),
          )),
      body: SafeArea(
          child: Column(
        children: [
          //card of moncash
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
          const SizedBox(height: 10),
          //recent transaction
           if(!isKeyboard)Column(
            children: [
              Text(
                "Recent transfert",
                style: TextStyle(
                    color: blackColor,
                    fontFamily: 'PoBold',
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 5),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: favoriteContact.map((favorite) {
                    return Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            padding: const EdgeInsets.only(),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage(favorite['picAvatar']),
                            ),
                          ),
                          Text(favorite['nom'])
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
          //formulaire
          const SizedBox(height: 16),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 32),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4.5,
                  )
                ]),
            child: Column(
              children: [
                Container(
                  height: 53,
                  decoration: BoxDecoration(
                    color: fieldColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Phone number, Ex:+509XXXXXXX',
                        contentPadding:
                            const EdgeInsets.only(left: 10, top: 15),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.contact_phone))),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 53,
                  decoration: BoxDecoration(
                    color: fieldColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter the amount ',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: primaryColor,
                          padding: const EdgeInsets.symmetric(
                            vertical: 11,
                            horizontal: 70,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen()));
                        },
                        child: Text("Sent", style: buttonText)),
              ],
            ),
          ))
        ],
      )),
      //bar navigation
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: whiteColor,
        color: primaryColor,
        animationDuration: const Duration(milliseconds: 300),
        items: [
          Icon(Icons.home, size: 30, color: whiteColor),
          Icon(Icons.qr_code, size: 30, color: whiteColor),
          Icon(Icons.settings, size: 30, color: whiteColor),
        ],
        onTap: (index) {},
      ),
    );
  }
}
