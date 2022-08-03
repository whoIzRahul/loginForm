import 'package:flutter/material.dart';
import 'package:signup_test/home_screen.dart';
import 'package:signup_test/message_screen.dart';
import 'package:signup_test/profile_screen.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  List<Widget> screens = [
    const HomeScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Message',
              icon: Icon(Icons.message),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (tappedIndex) {
            setState(() {
              print(tappedIndex);
              currentIndex = tappedIndex;
            });
          },
        ),
      ),
    );
  }
}
