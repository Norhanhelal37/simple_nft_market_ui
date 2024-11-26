import 'dart:ui';

import 'package:flutter/material.dart';

class CustomeBottomNavigation extends StatelessWidget {
  const CustomeBottomNavigation({
    super.key,
    required this.onHomePressed,
    required this.onStatePressed, required this.index,
  });
  final int index;
  final VoidCallback onHomePressed;
  final VoidCallback onStatePressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.hardEdge,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                      clipBehavior: Clip.hardEdge,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.1),
                      ),
                      height: 80,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: onHomePressed,
                              icon: Icon(
                                Icons.home,
                                size: 27,
                                color:(index == 0) ? const Color.fromARGB(255, 109, 55, 110) :Colors.white,
                              )),
                          IconButton(
                              onPressed: onStatePressed,
                              icon:  Icon(
                                Icons.stacked_bar_chart,
                                size: 27,
                                color:(index == 1) ? const Color.fromARGB(255, 109, 55, 110) :Colors.white,
                              )),
                          const SizedBox(
                            width: 30,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                size: 27,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.person,
                                size: 27,
                                color: Colors.white,
                              )),
                        ],
                      )),
                )),
          ),
          Positioned(
              bottom: 30,
              child: Container(
                height: 80,
                width: 80,
                clipBehavior: Clip.none,
                decoration: const ShapeDecoration(
                    color: Color.fromARGB(255, 207, 207, 207),
                    shape: StarBorder.polygon(
                      pointRounding: .5,
                      sides: 6,
                    )),
                child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              )),
        ],
      ),
    );
  }
}
