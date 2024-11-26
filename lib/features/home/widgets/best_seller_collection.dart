import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resources/image_manager.dart';

import 'package:nft/features/home/widgets/best_seller_item_details.dart';

class BestSellerCollection extends StatefulWidget {
  const BestSellerCollection({super.key});

  @override
  State<BestSellerCollection> createState() => _BestSellerCollectionState();
}

class _BestSellerCollectionState extends State<BestSellerCollection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 300,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ImageManager.kTopSeller.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  width: 200,
                  height: 300,
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
                  bottom: 115,
                  left: 25,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    height: 160,
                    width: 170,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Image.asset(
                      ImageManager.kTopSeller[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),


               BestSellerItemDetailes(index: index,)
              ],
            );
          },
        ));
  }
}

