import 'package:flutter/material.dart';
import 'package:nft/core/resources/strings_manager.dart';

class BestSellerItemDetailes extends StatelessWidget {
  const BestSellerItemDetailes({
    super.key, required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 190,
        left: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringsManager.kTopSellerTitle[index],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              StringsManager.kTopSellerDescip[index],
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
           const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.share_outlined,
                  size: 17,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  StringsManager.kTopSellershare[index],
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 60,
                ),
                const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "300",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            )
          ],
        ));
  }
}
