import 'package:flutter/material.dart';
import 'package:nft/features/home/widgets/best_seller_collection.dart';
import 'package:nft/features/home/widgets/categores.dart';
import 'package:nft/features/home/widgets/category_title.dart';
import 'package:nft/features/home/widgets/trending_collections.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(bottom: 80.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Categores(),
              SizedBox(
                height: 20,
              ),
              CategoryTitle(
                title: "Trending collections",
              ),
              SizedBox(
                height: 10,
              ),
              TrendingCollections(),
              SizedBox(
                height: 10,
              ),
              CategoryTitle(title: "Top Seller"),
              BestSellerCollection()
            ],
          ),
        ));
  }
}

