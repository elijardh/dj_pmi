import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class DjMusicCategorySection extends StatelessWidget {
  const DjMusicCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryButton(
            selected: true,
            title: 'All',
          ),
          CategoryButton(
            selected: false,
            title: 'Latest uploads',
          ),
          CategoryButton(
            selected: false,
            title: 'Trending songs',
          ),
          CategoryButton(
            selected: false,
            title: 'Genres',
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final bool selected;
  final String title;
  const CategoryButton({
    super.key,
    required this.selected,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: selected
              ? context.appColorsDark.highContrastForeground
              : context.secondaryColor),
      child: Center(
        child: Text(
          title,
          style: context.bodyLarge.copyWith(
            fontSize: 14.sp,
            color: selected
                ? context.appColorsDark.background
                : context.appColorsDark.highContrastForeground,
          ),
        ),
      ),
    );
  }
}
