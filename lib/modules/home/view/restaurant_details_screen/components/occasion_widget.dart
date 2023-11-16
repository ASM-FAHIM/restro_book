import 'package:flutter/material.dart';
import 'package:restro_book/core/utils/dimensions.dart';
import 'package:restro_book/core/utils/exports.dart';
import 'package:restro_book/core/widgets/exports.dart';
import 'package:restro_book/core/widgets/sized_box_height_10.dart';

class OccasionWidget extends StatelessWidget {
  final String title;

  const OccasionWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.height35,
          alignment: Alignment.centerLeft,
          child: TextWidget(
            title,
            style: TextStyles.title16,
          ),
        ),
        const SizedBoxHeight10(),
        Wrap(
          spacing: 8.0, // Horizontal spacing between items
          runSpacing: 8.0, // Vertical spacing between rows
          children: [
            _occasionNameWidget('Birthday'),
            _occasionNameWidget('Anniversary'),
            _occasionNameWidget('Date'),
            _occasionNameWidget('Special Occasion'),
            _occasionNameWidget('Business Meal'),
          ],
        ),
      ],
    );
  }

  Widget _occasionNameWidget(String title) {
    return Container(
      height: Dimensions.height10 * 2.5,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: strokeColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextWidget(
        title,
        style: TextStyles.regular12.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
