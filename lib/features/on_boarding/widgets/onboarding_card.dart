import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:nft/core/resources/strings_manager.dart';
import 'package:nft/features/on_boarding/widgets/onboarding_button.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
          bottom: 70,
          right: 17,
          left: 17,
          child: ClipRRect(
            borderRadius:BorderRadius.circular(20) ,
            
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding:const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                  
              
                ),
                
               
                width:MediaQuery.sizeOf(context).width*.4,
                

                child:const Column(
                  children: [
                   Text(
                      StringsManager.kOnboardingCardTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                 Text(
                      StringsManager.kOnboardingCardSubTitle,
                      textAlign: TextAlign.center,
                    style: TextStyle(
                      color:  Color.fromARGB(255, 209, 208, 208),
                      fontSize: 11,
                      fontWeight: FontWeight.w400
                    ),
                    ),

                    SizedBox(height: 30,),

                  OnboardingButton()
                  ],
                ),
                
              ),
            ),
          )
          );
  }
}