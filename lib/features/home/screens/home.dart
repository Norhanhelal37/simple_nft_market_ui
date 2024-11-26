import 'package:flutter/material.dart';
import 'package:nft/core/resources/strings_manager.dart';
import 'package:nft/features/home/screens/home_page.dart';
import 'package:nft/features/home/widgets/custome_bottom_bar.dart';
import 'package:nft/features/states/screens/states_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [const HomePage(), const StatesPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      extendBody: true,
      bottomNavigationBar: CustomeBottomNavigation(
        index: index,
        onHomePressed: () {
          setState(() {
            index = 0;
          });
        },
        onStatePressed: () {
          setState(() {
            index = 1;
          });
        },
      ),
      backgroundColor: const Color(0xff211134),
      
      appBar:index== 0? AppBar(

        
        
        backgroundColor: const Color(0xff211134),
        centerTitle: true,
        title:  Text(
        index == 0 ?  StringsManager.kHomeAppBar : StringsManager.kStatePageTitle,
          style:const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ):null,

      
      body:pages[index],
    );
  }
}
