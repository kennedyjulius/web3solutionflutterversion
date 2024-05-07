import 'package:flutter/material.dart';
import 'package:web3solution/widgets/big_text.dart';
import 'package:web3solution/widgets/input_formwithdropdown.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "From"),
              InputFormFieldWithDropdown(),
            ],
          ),
          Expanded(child: Divider(
            color: Colors.amberAccent,
          )),
            Row(
            children: [
              BigText(text: "To ..."),
              InputFormFieldWithDropdown(),
            ],
          
          ), 
        ],
      ),
    );
  }
}