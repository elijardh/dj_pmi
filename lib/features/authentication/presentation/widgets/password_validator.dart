import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class PasswordValidator extends StatelessWidget {
  final bool validated;
  final String title;
  const PasswordValidator({
    super.key,
    required this.title,
    required this.validated,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 12.h,
          width: 12.w,
          padding: allPadding(1),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: validated
                ? context.appColorsDark.greenBackground
                : Colors.transparent,
            border: Border.all(
              color: validated
                  ? Colors.transparent
                  : context.appColorsDark.foreground.withAlpha(100),
            ),
          ),
          child: validated
              ? Center(
                  child: Icon(
                    Icons.check,
                    size: 7,
                    weight: 15,
                    color: context.appColorsDark.background,
                  ),
                )
              : null,
        ),
        5.horizontalSpace,
        Text(
          title,
          style: context.bodySmall.copyWith(
            color: validated
                ? context.appColorsDark.foreground
                : context.appColorsDark.foreground.withAlpha(100),
          ),
        ),
      ],
    );
  }
}
