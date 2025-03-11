import 'package:flutter/material.dart';
import 'package:task1_week4/core/utils/app_colors.dart';
import 'package:task1_week4/core/utils/app_constants.dart';
import 'package:task1_week4/core/utils/app_text_styles.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: sizes
          .map(
            (size) => Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  size,
                  style: AppTextStyles.audioWideSize32WhiteBold,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
