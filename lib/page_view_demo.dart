import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.asset('assets/images/1.png'),
                      const Text(
                        "This is title",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "This is subtitle",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: _pageController, // PageController
              count: 5,
              effect: const WormEffect(), // your preferred effect
              onDotClicked: (index) {}),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
