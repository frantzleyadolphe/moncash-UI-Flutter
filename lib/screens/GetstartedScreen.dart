// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moncash/screens/LoginScreen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
              child: const Text(
                "Skip",
                style: TextStyle(color: Color(0xFFD60101), fontSize: 18),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              })
        ],
      ),
      body: Column(
        children: [
          svgSection,
          const SizedBox(height: 20),
          welcomeSection,
          const SizedBox(height: 20),
          descSection,
          const SizedBox(height: 40),
          Container(
            height: 50,
            width: 50,
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                  backgroundColor: const Color(0xFFD60101)),
              child: SvgPicture.asset('icons/arrowRight.svg',
                  color: Colors.white, height: 50, width: 50),
            ),
          )
        ],
      ),
    );
  }
}

//widget pou image svg an
Widget svgSection = Container(
  height: 400,
  padding: const EdgeInsets.only(right: 10, left: 10),
  margin: const EdgeInsets.only(right: 10, left: 10),
  child: const Image(image: AssetImage('images/wallet.png')),
);
//widget pou pati welcome nan
Widget welcomeSection = const SizedBox(
  child: Center(
    child: SizedBox(
      width: 250,
      child: Text("WELCOME\nTO MONCASH",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 30, color: Color(0xFFD60101))),
    ),
  ),
);
//widget pou pati description an
Widget descSection = const SizedBox(
    width: 250,
    child: Center(
      child: Text(
        "Pay with your e-wallet and make your withdrawals and deposits anywhere in Haiti with an authorized agent",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 13, fontFamily: 'PoMedium', color: Color(0xFFD60101)),
      ),
    ));
//widget pou pati bouton an
