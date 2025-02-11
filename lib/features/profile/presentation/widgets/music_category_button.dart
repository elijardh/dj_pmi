import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class MusicCategoryButton extends StatelessWidget {
  final bool selected;
  final String title;
  const MusicCategoryButton({
    super.key,
    required this.selected,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        // constraints: BoxConstraints(
        //   minWidth: 90, // Minimum width
        //   maxWidth: 110, // Maximum width
        // ),
        decoration: BoxDecoration(
          color: selected ? context.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: selected
              ? null
              : Border.all(
                  color: Colors.white,
                ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.bodyLarge.copyWith(
                fontSize: 14.sp,
              ),
            ),
            10.horizontalSpace,
            Icon(
              selected ? Icons.close : Icons.add,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
