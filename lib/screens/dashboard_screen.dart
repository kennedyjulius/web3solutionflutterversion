import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web3solution/utils/Colors.dart';
import 'package:web3solution/utils/dimensions.dart';
import 'package:web3solution/widgets/app_icon.dart';
import 'package:web3solution/widgets/big_text.dart';

class StylishDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: AppIcon(
                    icon: Icons.menu,
                    iconsize: Dimensions.iconSize24,
                  ),
                ),
                BigText(
                  text: 'Stylish Dashboard',
                  size: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: AppIcon(
                    icon: Icons.notifications,
                    iconsize: Dimensions.iconSize24,
                  ),
                ),
              ],
            ),
            pinned: true,
            backgroundColor: Colors.purple,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'Send Stylish Card',
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
                      child: BigText(
                        text: 'Send Stylish Card Widget',
                        size: 18,
                        color: AppColors.mainBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'Receive Stylish Card',
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
                      child: BigText(
                        text: 'Receive Stylish Card Widget',
                        size: 18,
                        color: AppColors.mainBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
