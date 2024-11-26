import 'dart:ui';

import 'package:flutter/material.dart';

class TrendingCategoryItem extends StatefulWidget {
  const TrendingCategoryItem({super.key, required this.itemimage, required this.itemtitle});
  final String itemimage;
  final String itemtitle;

  @override
  State<TrendingCategoryItem> createState() => _TrendingCategoryItemState();
}

class _TrendingCategoryItemState extends State<TrendingCategoryItem> {
  int fav = 200;
  bool addfav = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 190,
          height: 260,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: Colors.white.withOpacity(.1))),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 300, sigmaY: 20),
            ),
          ),
        ),
        Positioned(
          bottom: 90,
          left: 20,
          right:20,
          child: Container(
            clipBehavior: Clip.hardEdge,
            height: 160,
            width: 160,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Image.asset(
              widget.itemimage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
            bottom: 35,
            left: 15,
            right: 22,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.itemtitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          if (addfav) {
                            setState(() {
                              addfav = false;
                              fav -= 1;
                            });
                          } else {
                            setState(() {
                              addfav = true;
                              fav += 1;
                            });
                          }
                        },
                        icon: Icon(
                          addfav
                              ? Icons.favorite_sharp
                              : Icons.favorite_border_outlined,
                          color: Colors.red,
                          size: 20,
                        )),
                    Text(
                      "$fav",
                      style:const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
