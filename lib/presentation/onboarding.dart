import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 700,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(
                  () {
                    _currentPage = index;
                  },
                );
              },
              children: [
                _buildPage(
                  title: "Welcome to\nJustCoffee",
                  image:
                      "https://cdn-icons-png.flaticon.com/128/1047/1047462.png",
                  description:
                      "Explore a world of unique coffee blends and flavors.",
                ),
                _buildPage(
                  title: "Discover New\nBrews",
                  image:
                      "https://cdn-icons-png.flaticon.com/128/3219/3219333.png",
                  description:
                      "Find your perfect cup from our curated selection.",
                ),
                _buildPage(
                  title: "Brew Like\na Pro",
                  image:
                      "https://cdn-icons-png.flaticon.com/128/3354/3354187.png",
                  description:
                      "Learn tips and tricks to brew coffee like a barista.",
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  _controller.jumpToPage(2);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                  activeDotColor: Colors.red,
                  dotColor: Colors.orange,
                ),
              ),
              TextButton(
                onPressed: () {
                  if (_currentPage == 2) {
                    Navigator.pushNamed(context, "/WelcomScreen");
                  } else {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: Text(
                  _currentPage == 2 ? "Done" : "Next",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPage({
    required String title,
    required String image,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: title.split(' ')[0],
                  style: GoogleFonts.calistoga(
                    fontSize: 40,
                    color: Colors.orange[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: title.substring(title.indexOf(' ')),
                  style: GoogleFonts.calistoga(
                    fontSize: 30,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Image.network(image, height: 200),
          SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
