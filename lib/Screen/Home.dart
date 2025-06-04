import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:rentit/Screen/HomePage.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style1,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        colorBehindNavBar: Colors.white,
      ),
      onItemSelected: (index) {
        // Optional: Handle tab reselection to pop to root if needed
        if (PersistentTabController().index == index) {
          // Simulate popping to root by resetting the tab's navigator
          PersistentTabController().jumpToTab(index);
        }
      },
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      Container(
        color: Colors.red,
        child: const Center(child: Text("Chats")),
      ),
      Container(
        color: Colors.blueGrey,
        child: const Center(child: Text("My Adds")),
      ),
      Container(
        color: Colors.green,
        child: const Center(child: Text("Settings")),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.chat),
        title: "Chats",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.favorite),
        title: "My Adds",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: "Settings",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
