import 'package:flutter/material.dart';
import 'package:web3solution/utils/Colors.dart';
import 'package:web3solution/utils/dimensions.dart';



class CustomButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  const CustomButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: Dimensions.height45,
          width: MediaQuery.of(context).size.width -20,
          decoration: BoxDecoration(
              color: Colors.pink.shade200,
              borderRadius: BorderRadius.circular(20),
              boxShadow: CustomboxShadow,
              border: Border.all(
                color: Colors.white.withOpacity(0.3),
              )),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                fontSize: 24,
                color: AppColors.buttonBackgroundColor,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
