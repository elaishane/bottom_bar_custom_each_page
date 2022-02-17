import 'package:bottom_bar_custom_each_page/presentation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text("Search Screen")),
      body: Container(
        child: Center(
          child: Text(
            "Search Screen",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
