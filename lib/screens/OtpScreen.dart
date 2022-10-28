// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moncash/screens/ConfirmScreen.dart';
import 'package:moncash/styles/colors.dart';
import 'package:moncash/styles/fontStyles.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
              "OTP verification",
              style: TextStyle(
                  color: blackColor,
                  fontFamily: 'PoMedium',
                  fontWeight: FontWeight.w700),
            )),
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  //color: primaryColor,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "OTP verification",
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: 'PoBold',
                              fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Enter the OTP sent to +50936857728",
                          style: TextStyle(
                              color: textfield,
                              fontFamily: 'PoBold',
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 68,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        decoration: InputDecoration(
                            hintText: '0',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primaryColor, width: 2),
                                borderRadius: BorderRadius.circular(15))),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 68,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        decoration: InputDecoration(
                            hintText: '0',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primaryColor, width: 2),
                                borderRadius: BorderRadius.circular(15))),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 68,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        decoration: InputDecoration(
                            hintText: '0',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primaryColor, width: 2),
                                borderRadius: BorderRadius.circular(15))),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 68,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        decoration: InputDecoration(
                            hintText: '0',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primaryColor, width: 2),
                                borderRadius: BorderRadius.circular(15))),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    )
                  ],
                )),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmScreen()));
                  },
                  child: Text("Confirm", style: buttonText)),
              const SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "Didn't receive the OTP code?",
                    style: TextStyle(
                        color: textfield, fontFamily: 'PoMedium', fontSize: 13),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resend",
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'PoBold',
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ],
          ),
        )));
  }
}
