import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft/core/resources/router_manager.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      width: 210,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white
                        ),
                        borderRadius:const BorderRadius.all(Radius.circular(40)),
                        gradient: LinearGradient(colors: [
                         const Color(0xff97A9F6).withOpacity(.1), Colors.white.withOpacity(.1)
                        ])
                        ),
                        child: ClipRRect(
                          borderRadius:const BorderRadius.all(Radius.circular(40)) ,
                          child: BackdropFilter(
                            filter:ImageFilter.blur(sigmaX: 100,sigmaY: 30) ,
                            child: MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder:RouterManager.routers["home"]! ));
                              },

                              child:const Text(
                                "Get Started Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200
                                ),
                              ),
                              )
                              ,
                            ),
                          ),
                    );
  }
}