import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zulu/screens/opening_Screen/opening_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _pageController;

  int _pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: introdata.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                    image: introdata[index].image,
                    title: introdata[index].title,
                    description: introdata[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    introdata.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  FloatingActionButton(
                    onPressed: () {
                      if (_pageIndex == introdata.length - 1) {
                        // Navigate to another page when on the last page
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => OpeningScreen()),
                        // );
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OpeningScreen(),
                          ),
                        );
                      } else {
                        // Move to the next page if not on the last page
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }
                    },
                    backgroundColor: const Color(0xFF42A7C3),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          30.0), // Adjust the radius as needed
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/arrow.svg",
                      color: Colors.white,
                      height: 20,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// dot indicator
class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });
  final isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 16 : 5,
      width: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive ? const Color(0xFF42A7C3) : const Color(0xFF798C9D),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> introdata = [
  Onboard(
    image: "assets/onboarding/About.svg",
    title: "What we do",
    description:
        "Our aim is to make you and your loved ones feel connected always",
  ),
  Onboard(
    image: "assets/onboarding/Care.svg",
    title: "We help",
    description:
        "We help those who are in need and those that needs emergency hospital services",
  ),
  Onboard(
    image: "assets/onboarding/Team Coding.svg",
    title: "We plan",
    description:
        "We plan and think of various ways to help you with our QR code and services",
  ),
  Onboard(
    image: "assets/onboarding/Families All Types 1.svg",
    title: "Save",
    description:
        "With our QR code one can save others and your precious family members",
  ),
  Onboard(
    image: "assets/onboarding/Currencies.svg",
    title: "Premium",
    description:
        "With our premium plans and subscriptions, start your superhero journey to save others",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          image,
          height: 270,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF42A7C3),
            fontSize: 32,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF798C9D),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer()
      ],
    );
  }
}
