
import 'package:flutter/material.dart';
import 'package:nft/core/resources/image_manager.dart';
import 'package:nft/core/resources/strings_manager.dart';
import 'package:nft/features/home/widgets/trending_category_item.dart';

class TrendingCollections extends StatefulWidget {
  const TrendingCollections({super.key});

  @override
  State<TrendingCollections> createState() => _TrendingCollectionsState();
}

class _TrendingCollectionsState extends State<TrendingCollections> {
  int fav = 200;
  bool addfav = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 270,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ImageManager.kTrending.length,
          itemBuilder: (context, index) {
            return TrendingCategoryItem(
              itemimage: ImageManager.kTrending[index], 
              itemtitle: StringsManager.kTerendTitles[index]);
          },
        ));
  }
}
