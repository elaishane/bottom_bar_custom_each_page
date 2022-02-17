import 'package:flutter/cupertino.dart';

export 'package:provider/provider.dart';

class BottomBarProvider extends ChangeNotifier {
  int index = 0;
  set setIndex(int value) {
    index = value;
    notifyListeners();
  }

  int get indexValue => index;
}
