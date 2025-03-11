import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1_week4/core/utils/app_colors.dart';
import 'package:task1_week4/core/utils/app_constants.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.5,
      padding: const EdgeInsets.all(40),
      decoration: const BoxDecoration(
        color: AppColors.productBg,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemBuilder: (BuildContext context, int index) => Image.asset(
                imagePaths[index],
                fit: BoxFit.contain,
              ),
              itemCount: imagePaths.length,
            ),
          ),
          const SizedBox(height: 30),
          SmoothPageIndicator(
            controller: pageController,
            count: imagePaths.length,
            onDotClicked: (index) => pageController.animateToPage(
              index,
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 500),
            ),
            effect: const ExpandingDotsEffect(
              dotColor: AppColors.textColor,
              activeDotColor: AppColors.primaryColor,
              dotHeight: 7,
            ),
          ),
        ],
      ),
    );
  }
}
