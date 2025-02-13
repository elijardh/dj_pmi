import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

import 'similar_tile.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'About Artist',
            style: context.titleLarge.copyWith(
              fontSize: 16.sp,
            ),
          ),
          10.verticalSpace,
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Assets.pngs.musicPlayerPlaceholder.image(
              height: 151.h,
              fit: BoxFit.cover,
            ),
          ),
          10.verticalSpace,
          Text(
            'Lil Nas X',
            style: context.titleLarge.copyWith(
              fontSize: 16.sp,
            ),
          ),
          10.verticalSpace,
          Text(
            'Lorem Ipsum dolor sit amet consectus param swap Lorem Ipsum dolor sit amet consectus param swapLorem Ipsum dolor sit amet consectus param swapLorem Ipsum dolor sit amet consectus param swap',
            textAlign: TextAlign.justify,
            style: context.bodySmall.copyWith(
              fontSize: 10.sp,
            ),
          ),
          10.verticalSpace,
          Text(
            'Genres',
            style: context.titleLarge.copyWith(
              fontSize: 16.sp,
            ),
          ),
          10.verticalSpace,
          Wrap(
            runSpacing: 10,
            spacing: 20,
            children: List.generate(
              10,
              (index) => GenreButton(
                title: 'Afrobeats',
              ),
            ),
          ),
          30.verticalSpace,
          Text(
            'Similar to Industry Baby',
            style: context.titleLarge.copyWith(
              fontSize: 16.sp,
            ),
          ),
          10.verticalSpace,
          ...List.generate(
            10,
            (index) => SimilarTile(),
          ),
        ],
      ),
    );
  }
}

class GenreButton extends StatelessWidget {
  final String title;
  const GenreButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: allPadding(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: context.appColorsDark.midContrastForeground,
          ),
        ),
        child: Text(
          title,
          style: context.bodyLarge.copyWith(
            fontSize: 10.sp,
            color: context.appColorsDark.midContrastForeground,
          ),
        ),
      ),
    );
  }
}
