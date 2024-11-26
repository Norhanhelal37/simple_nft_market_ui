import 'package:flutter/material.dart';
import 'package:nft/core/resources/image_manager.dart';
import 'package:nft/core/resources/strings_manager.dart';
import 'package:nft/features/on_boarding/widgets/onboarding_card.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
          width:double.infinity,
          height:double.infinity,
          child: Image.asset(ImageManager.konBoardingImage,fit:BoxFit.fill,),
        ),

        Container(
          margin:const EdgeInsets.only(
            top: 60,
            left: 20
          ),
          child:const Text(
            StringsManager.kOnboardingTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w900
            ),
          ),
        ),

       const OnboardingCard()
        ]
      ),
    );
  }
}