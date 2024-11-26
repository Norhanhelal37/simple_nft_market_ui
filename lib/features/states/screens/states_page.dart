import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:nft/core/resources/image_manager.dart';
import 'package:nft/core/resources/strings_manager.dart';
import 'package:nft/features/states/widgets/custome_Tabbar.dart';
import 'package:nft/features/states/widgets/state_item.dart';

class StatesPage extends StatelessWidget {
  const StatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff211134),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding:const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              // custome app bar
              Container(
                
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xff211134),
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text(
                      StringsManager.kStatePageTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),

                  const  SizedBox(
                      height: 70,
                    ),

                   const CustomeTabBar(),
                    

                    Container(
                      height: 10,
                      width: 110,
                      margin: const EdgeInsets.only(top: 34, right: 200),
                      decoration:const BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, -1),
                                spreadRadius: 1,
                                blurRadius: 5,
                                color: Colors.white)
                          ]),
                    ),
                  ],
                ),
              ),
             const SizedBox(
                height: 20,
              ),

              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 400,
                        height: 900,
                        margin:
                          const  EdgeInsets.only(right: 10, left: 10, bottom: 90),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.1),
                            borderRadius:const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.white)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: ImageManager.kStateImages.length,
                          itemBuilder: (context, index) {
                            return StateItem(index:index);
                          },
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

