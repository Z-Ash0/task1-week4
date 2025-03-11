import 'package:flutter/material.dart';
import 'package:task1_week4/core/utils/app_colors.dart';
import 'package:task1_week4/core/utils/app_strings.dart';
import 'package:task1_week4/features/sports_product/presentation/widgets/product_slider.dart';
import 'package:task1_week4/features/sports_product/presentation/widgets/size_selector.dart';

class SportsProductScreen extends StatefulWidget {
  const SportsProductScreen({super.key});

  @override
  State<SportsProductScreen> createState() => _SportsProductScreenState();
}

class _SportsProductScreenState extends State<SportsProductScreen> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [AppColors.bgColor1, AppColors.bgColor2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.headerColor),
          actions: const [
            Icon(Icons.favorite_border_rounded,
                color: AppColors.headerColor, size: 20),
            SizedBox(width: 10),
            Icon(Icons.shopping_bag_outlined,
                color: AppColors.headerColor, size: 20),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ProductSlider(pageController: pageController),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: const SizeSelector(),
                )
              ],
            ),
            const Text(AppStrings.barcelonaTshirt)
          ],
        ),
      ),
    );
  }
}
