import 'package:bottom_bar_custom_each_page/logic/bottom_bar_provider.dart';
import 'package:bottom_bar_custom_each_page/presentation/second_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.white,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: "Home",
          activeIcon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.slow_motion_video),
          label: "Shorts",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline,
            size: 35.0,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          label: "Subscriptions",
          activeIcon: Icon(Icons.subscriptions),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library_outlined),
          label: "Library",
          activeIcon: Icon(Icons.video_library),
        ),
      ],
      currentIndex: Provider.of<BottomBarProvider>(context).indexValue,
      onTap: (int value) {
        if (value == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SecondScreen(),
            ),
          );
        } else {
          Provider.of<BottomBarProvider>(context, listen: false).setIndex =
              value;
        }
      },
    );
  }
}
