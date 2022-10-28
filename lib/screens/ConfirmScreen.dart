// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moncash/styles/colors.dart';
import 'package:moncash/styles/fontStyles.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({super.key});

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Lottie.asset('icons/succesfully.json'),
          ),
          Text(
            "Transaction\nsuccessful",
            style: TextStyle(
                color: primaryColor, fontFamily: 'PoBold', fontSize: 30),
          ),
          const SizedBox(
            height: 50,
          ),
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
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConfirmScreen()));
              },
              child: Text("Back to home", style: buttonText)),
        ],
      )),
    );
  }
}
