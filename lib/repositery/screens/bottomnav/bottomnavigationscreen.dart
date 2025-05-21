import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:massenger_app/domain/constants/appcolors.dart';
import 'package:massenger_app/repositery/screens/chats/chatsscreen.dart';
import 'package:massenger_app/repositery/screens/contacts/contactsscreen.dart';
import 'package:massenger_app/repositery/screens/more/morescreen.dart';

class Bottomnavigationscreen extends StatefulWidget {
  const Bottomnavigationscreen({super.key});

  @override
  State<Bottomnavigationscreen> createState() => _BottomnavigationscreenState();
}

class _BottomnavigationscreenState extends State<Bottomnavigationscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
     ContactsScreen(),
     ChatsScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: "Chats",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
        currentIndex: currentIndex,
        onTap:
            (value) => {
              setState(() {
                currentIndex = value;
              }),
            },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor:
            Theme.of(context).brightness == Brightness.dark
                ? AppColors.bottomdark
                : AppColors.bottomlight,
        selectedIconTheme: IconThemeData(
          color:
              Theme.of(context).brightness == Brightness.dark
                  ? AppColors.icondarkmode
                  : AppColors.iconlightmode,
        ),
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
