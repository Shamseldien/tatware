  import 'package:flutter/material.dart';
import 'package:tatware/modules/homeScreen/home_screen.dart';
import 'package:tatware/shared/styles/fonts.dart';
 class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        leading: Image.asset('assets/images/prof.png', ),
        title: Image.asset('assets/images/logo.png',height: 17,),
        actions: [
          Image.asset('assets/images/Search.png',height: 17,),
        ],
      ),
      body: HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.white,
          elevation: 5,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/Home.png',width: 18,height: 17, ),
              label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/Star.png', width: 18,height: 17,),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/Wallet.png', width: 18,height: 17,),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/Profile.png',width: 18, height: 17,),
                label: 'Home'
            ),
          ]
      ),
    );
  }
}
