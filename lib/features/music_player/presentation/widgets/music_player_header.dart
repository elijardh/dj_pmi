import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MusicPlayerHeader extends StatelessWidget {
  final void Function(int index) onTap;
  final int currentIndex;
  const MusicPlayerHeader({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => context.pop(),
          child: Icon(
            Icons.keyboard_arrow_down,
          ),
        ),
        Row(
          children: [
            MusicPlayerHeaderButton(
              selected: currentIndex == 0,
              title: 'Lyrics',
              onTap: () => onTap(0),
            ),
            MusicPlayerHeaderButton(
              selected: currentIndex == 1,
              title: 'Music',
              onTap: () => onTap(1),
            ),
            MusicPlayerHeaderButton(
              selected: currentIndex == 2,
              title: 'Discover',
              onTap: () => onTap(2),
            ),
          ],
        ),
        Icon(Icons.more_vert),
      ],
    );
  }
}

class MusicPlayerHeaderButton extends StatelessWidget {
  final bool selected;
  final String title;
  final VoidCallback onTap;
  const MusicPlayerHeaderButton({
    super.key,
    required this.selected,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: horizontalPadding(2),
        padding: allPadding(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: selected ? context.secondaryColor : Colors.transparent,
        ),
        child: Text(
          title,
          style: context.bodyLarge.copyWith(
            fontSize: 10.sp,
            color: selected
                ? context.appColorsDark.highContrastForeground
                : context.appColorsDark.midContrastForeground,
          ),
        ),
      ),
    );
  }
}
