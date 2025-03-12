import 'package:flutter/material.dart';
import 'package:rate/rate.dart';
import 'package:task1_week4/core/utils/app_colors.dart';
import 'package:task1_week4/core/utils/app_text_styles.dart';

class RateAndQuantity extends StatefulWidget {
  const RateAndQuantity({super.key});

  @override
  State<RateAndQuantity> createState() => _RateAndQuantityState();
}

class _RateAndQuantityState extends State<RateAndQuantity> {
  int quantity = 1;
  double rateValue = 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Rate(
              initialValue: 4,
              iconBuilder: (value, index) {
                var iconColor = value > index.toDouble()
                    ? AppColors.primaryColor
                    : AppColors.primaryColorDark;
                return Icon(Icons.star_rounded, color: iconColor, size: 25);
              },
              onChange: (value) => setState(() => rateValue = value),
            ),
            Text(
              rateValue.toString(),
              style: AppTextStyles.audioWideSize15WhiteBold
                  .copyWith(color: AppColors.textColor),
            ),
          ],
        ),
        Container(
          width: MediaQuery.sizeOf(context).width / 3.5,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.unPressedButton,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              QuantityButton(
                icon: Icons.remove,
                onTap: () => setState(() {
                  quantity > 1 ? --quantity : quantity = 1;
                }),
              ),
              Text(
                quantity.toString(),
                style: AppTextStyles.audioWideSize15WhiteBold,
              ),
              QuantityButton(
                icon: Icons.add,
                onTap: () => setState(() {
                  quantity = quantity < 30 ? ++quantity : 30;
                }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.primaryColor,
        ),
        child: Icon(icon, color: AppColors.headerColor, size: 25),
      ),
    );
  }
}
