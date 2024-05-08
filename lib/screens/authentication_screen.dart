import 'package:flutter/material.dart';
import 'package:web3solution/widgets/custom_button.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: "Authenticate Using Metamask",
                ontap: () {  },
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'or',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "Download Metamask",
                 ontap: () {  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
