import 'package:flutter/material.dart';
import 'package:web3solution/widgets/big_text.dart';
import 'package:web3solution/widgets/iconTextWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: true,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.menu)
                ),
                BigText(
                  text: 'Stylish Dashboard',
                  size: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.notification_add)
                ),
              ],
            ),
            pinned: true,
            backgroundColor: Colors.amber,
          ),
          
        ],
      ),
    );
  }
}
