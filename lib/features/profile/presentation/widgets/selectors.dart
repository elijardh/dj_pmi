import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class GenderSelector extends StatelessWidget {
  const GenderSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        4,
        (index) => Padding(
          padding: verticalPadding(10),
          child: Text(
            'Male',
            style: context.bodyLarge.copyWith(
              fontSize: 14.sp,
              color: context.appColorsDark.midContrastForeground,
            ),
          ),
        ),
      ),
    );
  }
}

class AgeGroupSelector extends StatelessWidget {
  const AgeGroupSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        4,
        (index) => Padding(
          padding: verticalPadding(10),
          child: Text(
            '18-25',
            style: context.bodyLarge.copyWith(
              fontSize: 14.sp,
              color: context.appColorsDark.midContrastForeground,
            ),
          ),
        ),
      ),
    );
  }
}
