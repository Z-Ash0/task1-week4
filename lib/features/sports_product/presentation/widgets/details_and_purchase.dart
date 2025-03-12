import 'package:flutter/material.dart';
import 'package:task1_week4/core/utils/app_colors.dart';
import 'package:task1_week4/core/utils/app_strings.dart';
import 'package:task1_week4/core/utils/app_text_styles.dart';

class DetailsAndPurchase extends StatefulWidget {
  const DetailsAndPurchase({super.key});

  @override
  State<DetailsAndPurchase> createState() => _DetailsAndPurchaseState();
}

class _DetailsAndPurchaseState extends State<DetailsAndPurchase> {
  double price = 89;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.details,
              style: AppTextStyles.audioWideSize15Grey,
            ),
            CustomeTextInline(
              txt1: AppStrings.material,
              txt2: AppStrings.playester,
            ),
            CustomeTextInline(
                txt1: AppStrings.shipping, txt2: AppStrings.deliveryDuration),
            CustomeTextInline(
                txt1: AppStrings.returns, txt2: AppStrings.returnsDuration),
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.shopping_bag_outlined,
                  color: AppColors.headerColor, size: 30),
              Text(
                '\$$price',
                style: AppTextStyles.audioWideSize15WhiteBold
                    .copyWith(fontSize: 24),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CustomeTextInline extends StatelessWidget {
  const CustomeTextInline({
    super.key,
    required this.txt1,
    required this.txt2,
  });
  final String txt1;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: txt1,
            style: AppTextStyles.audioWideSize15WhiteBold,
          ),
          TextSpan(
            text: txt2,
            style: AppTextStyles.audioWideSize15Grey,
          )
        ],
      ),
    );
  }
}
