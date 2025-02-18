import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_marcelino/constants/tatto_list.dart';

class TattoSection extends StatefulWidget {
  const TattoSection({super.key});

  @override
  TattoSectionState createState() => TattoSectionState();
}

class TattoSectionState extends State<TattoSection> {
  late List<Widget> tattoWidgets;

  @override
  void initState() {
    super.initState();
    tattoWidgets = tattos.map((tatto) => Image.asset(tatto)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: tattoWidgets,
      options: CarouselOptions(
        height: 500,
        aspectRatio: 16 / 9,
        viewportFraction: 0.4,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        autoPlayCurve: Curves.easeInOutCubic,
        enlargeCenterPage: true,
        enlargeFactor: 0.4,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        clipBehavior: Clip.none,
      ),
    );
  }
}


/// TODO ver sobre: https://pub.dev/packages/carousel_slider/example