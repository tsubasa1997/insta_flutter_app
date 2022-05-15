import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideImage extends StatefulWidget {
  const SlideImage({Key? key}) : super(key: key);

  @override
  State<SlideImage> createState() => _SlideImageState();
}

class _SlideImageState extends State<SlideImage> {
  var images = [
    'assets/images/IMG_2570.jpg',
    'assets/images/IMG_2570.jpg',
    'assets/images/IMG_2570.jpg',
  ];
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 400,
                  initialPage: 0,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() {
                        activeIndex = index;
                      }),
                ),
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  final path = images[index];
                  return buildImage(path);
                },
              ),
              SizedBox(height: 20),
              buildIndicator()
            ],
          ),
        );

  Widget buildImage(String path) => Container(
    margin: EdgeInsets.symmetric(horizontal: 13),
    color: Colors.blue,
    child:  Image.asset(
      path,
      fit: BoxFit.cover,
    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: images.length,
    effect: JumpingDotEffect(
      dotHeight: 20,
      dotWidth: 20,
      activeDotColor: Colors.green,
      dotColor: Colors.red),
  );
}