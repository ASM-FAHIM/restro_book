import 'package:flutter/material.dart';
import 'package:restro_book/core/utils/dimensions.dart';

class SizedBoxHeight20 extends StatelessWidget {
  const SizedBoxHeight20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height20,
    );
  }
}