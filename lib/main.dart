import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:task1_week4/features/sports_product/presentation/views/sports_product_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [...DevicePreview.defaultTools],
      builder: (context) => const Task1Week2(),
    ),
  );
}

class Task1Week2 extends StatelessWidget {
  const Task1Week2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SportsProductScreen(),
    );
  }
}
