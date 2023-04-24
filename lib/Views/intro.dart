import 'package:ariespaper/Views/welcome.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final List<String> images = [
    'assets/office1.png',
    'assets/office2.png',
    'assets/office3.png',
  ];
  final List<String> intro = [
    'Revolutionizing Paper\nProcurement: The Aries App and\nIts Impact on Paper Sellers',
    'Streamlining Paper Purchases:\nHow the Aries App is Simplifying\nthe Procurement Process',
    'Expanding Your Paper Options:\nHow Aries is Helping Buyers Find\nthe Perfect Product'
  ];
  final List<String> subtext = [
    ' How Aries is changing the game for paper sellers by\nconnecting them to a wider range of potential\ncustomers',
    'A closer look at the user-friendly features of the Aries\napp and how it is making it easier than ever to find and\npurchase paper from a variety of suppliers',
    'Discover how the Aries app is providing users with a\nwealth of options when it comes to purchasing paper,\ngiving them access to a greater range of products and\nsuppliers than ever before'
  ];
  final CarouselController _controller = CarouselController();

  int _currentImageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF6DE),
      body: Column(
        children: [
          SizedBox(
            height: 130,
          ),
          CarouselSlider.builder(
            itemCount: images.length,
            carouselController: _controller,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              final String image = images[_currentImageIndex];
              return Image.asset(
                image,
                width: MediaQuery.of(context).size.width * 0.7,
                fit: BoxFit.contain,
              );
            },
            options: CarouselOptions(
              height: 400.0,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              autoPlay: false,
              onPageChanged: (int index, CarouselPageChangedReason reason) {
                setState(() {
                  _currentImageIndex = index;
                });
                // TODO: Add logic for handling page changes
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: CarouselIndicator(
              count: images.length,
              index: _currentImageIndex,
              color: const Color(0xFF393941),
              activeColor: const Color(0xFFFB8C00),
              height: 10.0,
              width: 10.0,
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              color: Color(0xFFF5F5F5),
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: images.length,
                    carouselController: _controller,
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      final String text = intro[_currentImageIndex];
                      final String sub = subtext[_currentImageIndex];

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(text,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(sub,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                              )),
                        ],
                      );
                    },
                    options: CarouselOptions(
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                      onPageChanged:
                          (int index, CarouselPageChangedReason reason) {
                        setState(() {
                          _currentImageIndex = index;
                        });
                        // TODO: Add logic for handling page changes
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: _currentImageIndex > 0,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              _currentImageIndex--;
                            });
                            // TODO: Add logic for handling button press
                          },
                          style: OutlinedButton.styleFrom(
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              fixedSize: Size(160, 50),
                              backgroundColor: Color(0xFF263238)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Back',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: _currentImageIndex == 0 ? 0 : 20,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_currentImageIndex < 2) {
                              _currentImageIndex++;
                              return;
                            }
                            if (_currentImageIndex == 2) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => welcome(),
                                  ));
                            }
                          });
                          // TODO: Add logic for handling button press
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            fixedSize: Size(160, 50),
                            backgroundColor: Color(0xFFFFB800)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
