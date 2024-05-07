import 'package:flutter/material.dart';
import 'package:web3solution/utils/dimensions.dart';
import 'package:web3solution/widgets/app_icon.dart';
import 'package:web3solution/widgets/big_text.dart';
import 'package:web3solution/widgets/iconTextWidget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: true,
            toolbarHeight: 100,
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
            backgroundColor: Colors.amber,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                IconTextWidget(icon: Icons.send, text: "Send")
              ],
            ),
          )
        ],
      ),
    );
  }
}