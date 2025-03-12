import 'package:flutter/material.dart';
import 'package:task1_week4/core/utils/app_colors.dart';
import 'package:task1_week4/core/utils/app_strings.dart';
import 'package:task1_week4/core/utils/app_text_styles.dart';
import 'package:task1_week4/features/sports_product/presentation/widgets/details_and_purchase.dart';
import 'package:task1_week4/features/sports_product/presentation/widgets/product_slider.dart';
import 'package:task1_week4/features/sports_product/presentation/widgets/rate_and_quantity.dart';
import 'package:task1_week4/features/sports_product/presentation/widgets/size_selector.dart';

class SportsProductScreen extends StatefulWidget {
  const SportsProductScreen({super.key});

  @override
  State<SportsProductScreen> createState() => _SportsProductScreenState();
}

class _SportsProductScreenState extends State<SportsProductScreen> {
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
            Icon(Icons.favorite_border_rounded, color: AppColors.headerColor),
            SizedBox(width: 20),
            Icon(Icons.shopping_bag_outlined, color: AppColors.headerColor),
            SizedBox(width: 20),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Expanded(child: ProductSlider()),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: const SizeSelector(),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.barcelonaTshirt,
                          style: AppTextStyles.audioWideSize15WhiteBold
                              .copyWith(fontSize: 24),
                        ),
                        Text(
                          AppStrings.yearAndFactory,
                          style: AppTextStyles.audioWideSize15WhiteBold
                              .copyWith(color: AppColors.textColor),
                        ),
                      ],
                    ),
                    const RateAndQuantity(),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 7,
                      child: const DetailsAndPurchase(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
