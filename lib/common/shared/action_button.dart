import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final SvgGenImage icon;
  final String? title;
  final VoidCallback onTap;
  const ActionButton({
    super.key,
    required this.icon,
    this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon.svg(
            colorFilter: ColorFilter.mode(
          Colors.white,
          BlendMode.srcIn,
        )),
        if (title != null)
          Text(
            title ?? '',
            style: context.bodyMedium.copyWith(
              fontSize: 10.sp,
            ),
          ),
      ],
    );
  }
}
