import 'package:flutter/material.dart';

import 'package:web3solution/utils/Colors.dart';
import 'package:web3solution/utils/dimensions.dart';
import 'package:web3solution/widgets/big_text.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextWidget({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: Dimensions.height45,
          width: Dimensions.height45,
          color: Colors.white38,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                text: text,
                size: 20,
                color: AppColors.mainBlackColor,
              ),
              SizedBox(height: 20),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    size: 48,
                    color: AppColors.mainBlackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
