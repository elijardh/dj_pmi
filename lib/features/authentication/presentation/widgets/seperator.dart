import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class Seperator extends StatelessWidget {
  const Seperator({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Divider(
                thickness: 0.5,
                color: Color(0xFF2D2D2D),
              ),
            ),
          ),
          Text(
            'Or',
            style: context.bodySmall.copyWith(
              fontSize: 12.sp,
              color: context.appColorsDark.lowContrastForeground,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Divider(
              thickness: 0.5,
              color: Color(0xFF2D2D2D),
            ),
          )),
        ],
      ),
    );
  }
}
