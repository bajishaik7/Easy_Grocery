import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carouselwidget extends StatelessWidget {
  Carouselwidget({super.key});
  List sliderImages = [
    "assets/images/banner1.webp",
    "assets/images/banner2.webp",
    "assets/images/banner3.webp"
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = sliderImages
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "$item",
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width - 48,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                      ),
                    ),
                  ],
                ),
              ),
            ))
        .toList();
    return RepaintBoundary(
      child: CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 0.9,
            aspectRatio: 4,
            enableInfiniteScroll: true,
            initialPage: 2,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3)),
        items: imageSliders,
      ),
    );
  }
}
