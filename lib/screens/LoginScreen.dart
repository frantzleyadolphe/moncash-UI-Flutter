// ignore_for_file: file_names
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:moncash/screens/GetstartedScreen.dart';
import 'package:moncash/styles/colors.dart';
import 'package:moncash/styles/fontStyles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              imageSection,
              textSection,
              const SizedBox(height: 10),
              formSection
            ],
          ),
        ));
  }
}

Widget imageSection = const SizedBox(
  height: 300,
  child: Center(
    child: Image(image: AssetImage('images/login.png')),
  ),
);

Widget textSection = Container(
  height: 70,
  //padding: EdgeInsets.all(20),
  margin: const EdgeInsets.only(right: 20, left: 20),
  child: Center(
    child: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text("Welcome back !", style: titre),
        ),
        //const SizedBox(height: 10),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Sign in with your phone number and your pin code",
            style: sousTitre,
          ),
        )
      ],
    ),
  ),
);

Widget formSection = Container(
  height: 400,
  //color: Colors.black,
  margin: const EdgeInsets.only(right: 20, left: 20),
  //color: Color(0xFFD60101),
  child: Column(
    children: [
      Container(
        height: 53,
        decoration: BoxDecoration(
          color: fieldColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const TextField(
          decoration: InputDecoration(
              hintText: 'Enter your phone number',
              contentPadding: EdgeInsets.all(10),
              border: InputBorder.none),
        ),
      ),
      const SizedBox(height: 20),
      Container(
        height: 53,
        decoration: BoxDecoration(
          color: fieldColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const TextField(
          decoration: InputDecoration(
              hintText: 'Enter your pin code',
              contentPadding: EdgeInsets.all(10),
              border: InputBorder.none),
        ),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerRight,
        height: 20,
        //color: Colors.blue,
        child: Text("Forgot your pin ?", style: sousTitre2),
      ),
      const SizedBox(
        height: 8,
      ),
      TextButton(
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: primaryColor,
            padding: const EdgeInsets.symmetric(
              vertical: 11,
              horizontal: 105,
            ),
          ),
          onPressed: () {},
          child: Text("Login", style: buttonText)),
      const SizedBox(height: 15),
      Container(
        alignment: Alignment.center,
        height: 20,
        //color: Colors.blue,
        child: Text("Or", style: sousTitre3),
      ),
      const SizedBox(height: 20),
      SizedBox.fromSize(
        size: const Size(56, 56),
        child: ClipOval(
          child: Material(
            color: fieldColor,
            child: InkWell(
              splashColor: primaryColor,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.face_retouching_natural_rounded,
                      color: primaryColor), // <-- Icon
                  // <-- Text
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 10),
      TextButton(
          onPressed: () {
            //kod ki ap banm prob lan 
            
           //Navigator.push(context,
            //MaterialPageRoute(builder: (context) => const GetStartedScreen()));
          },
          child: Text("Haven’t account ? Sign Up Here", style: sousTitre4,))
    ],
  ),
);
