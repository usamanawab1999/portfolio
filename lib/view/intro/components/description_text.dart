import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({
    super.key,
    required this.start,
    required this.end,
  });

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        String text;

        if (Responsive.isExtraLargeScreen(context)) {
          text =
              'I am a passionate Flutter developer with over 3 years of experience in building smooth, scalable, and responsive mobile apps.\nMy expertise includes working with Firebase, REST APIs, state management (Provider, Bloc), and crafting beautiful UIs. I focus on clean code, performance optimization,\nand delivering apps that offer a seamless user experience from start to finish.';
        } else if (Responsive.isDesktop(context)) {
          text =
              'I am a passionate Flutter developer with over 3 years of experience in building smooth, scalable, and responsive\nmobile apps. My expertise includes working with Firebase, REST APIs, state management (Provider, Bloc, GetX), and \ncrafting beautiful UIs. I focus on clean code, performance optimization, and delivering apps that offer a seamless \nuser experience from start to finish.';
        } else if (Responsive.isTablet(context)) {
          text =
              'I am a passionate Flutter developer with over 3 years of experience\nin building smooth, scalable, and responsive mobile apps. My expertise\nincludes working with Firebase, REST APIs, state management\n(Provider, Bloc, GetX), and crafting beautiful UIs. I focus on clean code,\nperformance optimization,and delivering apps that offer a seamless\nuser experience from start to finish.';
        } else if (Responsive.isMobile(context)) {
          // Mobile
          text =
              'I am a passionate Flutter developer with over\n3 years of experience in building smooth, \nscalable, and responsive mobile apps. My \nexpertise includes working with Firebase, REST \nAPIs, state management (Provider, Bloc,GetX),\nand crafting beautiful UIs. I focus on clean code,\nperformance optimization, and delivering apps \nthat offer a seamless user experience from \nstart to finish.';
        } else {
          text = '';
        }
        return Text(
          text,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            wordSpacing: 2,
            fontSize: value,
            height: 1.5,
          ),
        );
      },
    );
  }
}
