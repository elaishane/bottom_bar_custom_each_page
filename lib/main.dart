import 'package:bottom_bar_custom_each_page/logic/bottom_bar_provider.dart';
import 'package:flutter/material.dart';

import 'presentation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BottomBarProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: "Bottom Bar",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
