// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../styles/colors.dart';

class ReceiveScreen extends StatefulWidget {
  const ReceiveScreen({Key? key}) : super(key: key);

  @override
  State<ReceiveScreen> createState() => _ReceiveScreenState();
}

class _ReceiveScreenState extends State<ReceiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Receiver",
            style: TextStyle(
                color: blackColor,
                fontFamily: 'PoMedium',
                fontWeight: FontWeight.w700),
          )
      ),
      //body: ,
    );
  }
}
