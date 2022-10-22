// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:moncash/styles/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Hi Adolphe",style: TextStyle(fontSize: 16,color: blackColor, fontFamily: 'PoBold'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: const [
           
          ],
        )
      ),
    );
  }
}
