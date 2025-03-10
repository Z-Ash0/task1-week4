import 'package:flutter/material.dart';
import 'package:task1_week4/features/sports_product/presentation/views/sports_product_screen.dart';

void main() {
  runApp(const Task1Week2());
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
