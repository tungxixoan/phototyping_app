
import 'package:flutter/material.dart';
import 'package:phototyping_app/page/chat/main_chat_page.dart';
import 'package:phototyping_app/page/home/main_home_page.dart';
import 'package:phototyping_app/page/profile/profile_main_page.dart';
import 'package:phototyping_app/page/search/search_main_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // late PersistentTabController _controller;
  int _selectedIndex = 1;
  List pages = [
    const MainHomePage(),
    const SearchMainPage(),
    Container(child: const Center(child: Text("Next next page"))),
    const MainChatPage(),
    const ProfileMainPage(),
  ];
  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.red
        ),
        child: NavigationBar  (
          height: 60,
          selectedIndex: _selectedIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: (int newIndex){
            setState(() {
              _selectedIndex = newIndex;
            });
          },
          destinations: const[
            NavigationDestination(
             icon: Icon(Icons.home_outlined,), 
             selectedIcon: Icon(Icons.home), 
             label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search,),
              selectedIcon: Icon(Icons.search_rounded), 
              label: 'Search'
            ),
            NavigationDestination(
               icon: Icon(Icons.add),
               selectedIcon: Icon(Icons.add_box), 
              label: 'New'
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_outlined),
              selectedIcon: Icon(Icons.chat), 
              label: 'Chat'
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person), 
              label: 'My'
            ),
          ],),
      )
    );
  }
}
