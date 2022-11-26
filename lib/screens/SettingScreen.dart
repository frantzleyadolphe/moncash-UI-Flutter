// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moncash/styles/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
              "Setting",
              style: TextStyle(
                  color: blackColor,
                  fontFamily: 'PoMedium',
                  fontWeight: FontWeight.w700),
            )),
    );
  }
}