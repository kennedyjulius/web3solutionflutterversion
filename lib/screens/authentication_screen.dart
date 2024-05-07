// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web3solution/widgets/custom_button.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomButton(text: "Authenticate Using Metamask", ontap: () {
            
          },),
          SizedBox(height: 30,),
          Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'or',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    ),
    SizedBox(height: 20,),
    CustomButton(text: "Download Metamask", ontap: () {
            
          },),
        ],
      )
    );
  }
}