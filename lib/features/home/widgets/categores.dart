import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nft/core/resources/image_manager.dart';

class Categores extends StatelessWidget {
  const Categores({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (context, index, realIndex) {
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: SizedBox(
                    height: 280,
                    width: 280,
                    child: Image.asset(
                      ImageManager.kCagImages[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    index == 1
                        ? ""
                        : index == 0
                            ? "Art"
                            : "Virtual Worlds",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            );
          },
          options: CarouselOptions(
              initialPage: 0,
              autoPlayCurve: Curves.easeInOutSine,
              aspectRatio: 2 / 3,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              scrollDirection: Axis.horizontal,
              autoPlay: true)),
    );
  }
}
