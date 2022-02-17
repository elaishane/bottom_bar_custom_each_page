import 'package:bottom_bar_custom_each_page/logic/bottom_bar_provider.dart';
import 'package:bottom_bar_custom_each_page/presentation/search_screen.dart';
import 'package:bottom_bar_custom_each_page/presentation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<Widget> pages = [
    Container(
      child: Text("Home"),
    ),
    Container(
      child: Text("Shorts"),
    ),
    Container(
      child: Text("Add Video"),
    ),
    Container(
      child: Text("Suscription"),
    ),
    Container(
      child: Text("Library"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchScreen(),
              ),
            ),
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: pages[Provider.of<BottomBarProvider>(context).indexValue],
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
