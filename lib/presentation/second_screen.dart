import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Shorts Screen",
          style: Theme.of(context).textTheme.headline5!,
        ),
      ),
      // bottomNavigationBar: CustomBottomBar(),
    );
  }
}
