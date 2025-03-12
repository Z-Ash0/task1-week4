import 'package:flutter/material.dart';
import 'package:task1_week4/core/utils/app_colors.dart';
import 'package:task1_week4/core/utils/app_constants.dart';
import 'package:task1_week4/core/utils/app_text_styles.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String? selectedSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: sizes.map(
        (size) {
          bool isSelected = size == selectedSize;
          return GestureDetector(
            onTap: () => setState(
                () => isSelected ? selectedSize = null : selectedSize = size),
            child: Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.primaryColor
                    : AppColors.unPressedButton,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  size,
                  style: AppTextStyles.audioWideSize15WhiteBold,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
