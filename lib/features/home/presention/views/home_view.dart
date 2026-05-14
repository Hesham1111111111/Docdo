import 'package:flutter/material.dart';
import '../../../chat/view/chat_screen.dart';
import '../../../profile/view/profile_screen.dart';
import 'home_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const ChatScreen(),
    Container(), // Search
    Container(), // Schedule
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,

        onTap: (value) {
          setState(() {
            index = value;
          });
        },

        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),

          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color(0xFF247CFF),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.search, color: Colors.white),
            ),
            label: '',
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Schedule',
          ),

          const BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                'https://www.pngall.com/wp-content/uploads/5/Profile-PNG-High-Quality-Image.png',
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}